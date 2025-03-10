let fullPath = window.location.pathname;

class LibraryBook extends HTMLElement {
    static get observedAttributes() {
        return ["content", "contentTitle", "nextScreen", "scoreNeeded", "fileRel"];
    }

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default attributes
        this.content = this.getAttribute("content") || "";
        this.contentTitle = this.getAttribute("contentTitle") || "";
        this.nextScreen = this.getAttribute("nextScreen");

        // Initialize score variables
        this.scoreCurrent = 0;
        this.scoreNeeded = this.getAttribute("scoreNeeded") || 5;
        this.livesRemaining = 3;

        this.fileRel = this.getAttribute("fileRel") || "../../../";

        this.render();
    }

    attributeChangedCallback(name, oldValue, newValue) {
        this[name] = newValue;
        this.render(); // Re-render when attributes change
    }

    render() {
        this.content = this.content.split("|");

        this.shadowRoot.innerHTML = `
            <style>
                :host {
                    display: block;
                }
                #root {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    background-color: rgba(0, 0, 0, 0.5);
                    color: black;
                }
                #content-box {
                    width: 60%;
                    height: 80%;
                    background-color: white;
                    border-radius: 10px;
                    padding: 20px;
                    text-align: center;
                    position: relative;
                    overflow: hidden;
                }
                #title {
                    font-size: 4rem;
                    margin-bottom: 1rem;
                    color: black;
                }

                #score-box, #lives-box {
                    position: absolute;
                    top: 5px;
                    background-color: white;
                    border-radius: 5px;
                    display: flex;
                    flex-direction: column; /* Keep title and score aligned */
                    align-items: center; /* Vertical centering */
                    width: 180px; /* Fixed width */
                    justify-content: space-between;
                    text-align: center;
                    border: 5px solid black;
                }

                #score-box{
                    right: 5px;
                }

                #lives-box{
                    left: 5px;
                }

                #score-title { 
                    font-size: 2rem;
                    color: black;
                    font-weight: normal;
                    white-space: nowrap; /* Prevents wrapping */
                }
                #score {
                    font-size: 2rem;
                    color: black;
                    font-weight: normal;
                    text-align: right;
                    flex-grow: 1; /* Allows even spacing */
                }

                #lives-title {
                    font-size: 2rem;
                    color: black;
                    font-weight: normal;
                    white-space: nowrap;
                }

                #lives {
                    display: flex;
                    gap: 5px;
                }

                @keyframes loseHeart {
                    0% {
                        transform: scale(1);
                        opacity: 1;
                    }
                    50% {
                        transform: scale(0.6);
                        opacity: 0.5;
                    }
                    100% {
                        transform: scale(0);
                        opacity: 0;
                    }
                }

                .heart {
                    width: 30px;
                    height: auto;
                    opacity: 1;
                    transition: opacity 0.3s ease-in-out, transform 0.3s ease-in-out;
                }

                .heart.lost {
                    animation: loseHeart 0.5s forwards;
                }

                .text-line {
                    font-size: 2rem;
                    margin: 5px 0;
                    color: black;
                    position: relative;
                    display: block;
                    padding: 3px;
                }
                .ink-image {
                    position: absolute;
                    left: 50%;
                    transform: translateX(-50%);
                    width: 500px;
                    height: auto;
                    opacity: 0; /* All blotches are hidden initially */
                    cursor: pointer; /* Make ink images clickable */
                }
            </style>
            <div id="root">
                <div id="content-box">
                        <div id="lives-box">
                        <p id="lives-title">Lives</p>
                        <div id="lives">
                            <img src="${this.fileRel}images/library_dungeon/library-heart.png" alt="heart" class="heart">
                            <img src="${this.fileRel}images/library_dungeon/library-heart.png" alt="heart" class="heart">
                            <img src="${this.fileRel}images/library_dungeon/library-heart.png" alt="heart" class="heart">
                        </div>
                    </div>
                    <h1 id="title">${this.contentTitle}</h1>
                    ${this.content.map((item) => `
                        <p class="text-line">${item}</p>
                        <img src="${this.fileRel}images/library_dungeon/library-stroke-black.png" alt="ink" class="ink-image" id="ink-image-${this.content.indexOf(item) + 1}">
                    `).join("")}
                    <div id="score-box">
                <p id="score-title">Score</p>
                <span id="score">${this.scoreCurrent} / ${this.scoreNeeded}</span>
            </div>
                    </div>
            </div>
        `;

        // Position the ink blotches correctly
        this.positionInks();
        this.addClickListeners();

        // Initially, spawn one random ink blotch and hide others
        this.spawnRandomInk();
    }

    positionInks() {
        const inkImages = Array.from(this.shadowRoot.querySelectorAll(".ink-image"));
        const textLines = this.shadowRoot.querySelectorAll(".text-line");

        // Now, inkImages contains only the existing images
        inkImages.forEach((img, index) => {
            img.id = `ink-image-${index + 1}`; // Dynamically assign IDs based on position
        });

        const boxRect = this.shadowRoot.querySelector("#content-box").getBoundingClientRect();

        inkImages.forEach((inkImage, index) => {
            const textLine = textLines[index];
            if (inkImage && textLine) {
                const textLineRect = textLine.getBoundingClientRect();
                
                // Center the ink image horizontally
                const inkImageRect = inkImage.getBoundingClientRect();  // Get the ink image's width
                const textLineCenterX = textLineRect.left + textLineRect.width / 2; // center of the text line
                const inkImageCenterX = inkImageRect.width / 2; // center of the ink image
                inkImage.style.left = `${textLineCenterX - inkImageCenterX - 40}px`; // position ink in the center
                inkImage.style.top = `${textLineRect.top - boxRect.top - 5}px`;  // Position ink correctly

                inkImage.style.position = 'absolute'; // Make sure it's positioned correctly within the container

            }
        });
    }

    addClickListeners() {
        const inkImages = Array.from(this.shadowRoot.querySelectorAll(".ink-image"));
    
        // Dynamically assign IDs based on position
        inkImages.forEach((img, index) => {
            img.id = `ink-image-${index + 1}`;
        });
    
        // Attach click event that calls inkClicked
        inkImages.forEach((inkImage) => {
            if (inkImage) {
                inkImage.addEventListener("click", () => this.inkClicked(inkImage));
            }
        });
    }
    
    inkClicked(inkImage) {
        const inkImages = Array.from(this.shadowRoot.querySelectorAll(".ink-image"));
    
        const anyRedInk = inkImages.some(img => img.src.includes("library-stroke-red.png"));
    
        if (inkImage.style.opacity > 0 && inkImage.style.opacity != 1) {     
            inkImage.style.opacity = 0;  // Immediately hide the clicked ink blot
    
            // Clear any ongoing opacity animation
            if (inkImage.opacityInterval) {
                clearInterval(inkImage.opacityInterval);
            }
    
            this.scoreCurrent++;  // Increase the score
            this.shadowRoot.querySelector("#score").textContent = `${this.scoreCurrent} / ${this.scoreNeeded}`;
            
            if (this.scoreCurrent >= this.scoreNeeded) {
                window.location.href = this.fileRel.concat("", "html/dungeons/library/" + this.nextScreen);
                return;
            }
    
            // Random delay before showing a new ink blot
            const delay = Math.random() * (1000 - 100); // Random delay between 100ms and 1000ms
            setTimeout(() => {
                this.spawnRandomInk();
            }, delay);
        } 
        else if (!anyRedInk) { 
            // Only deduct a life if ALL inks are black and none are fully opaque
            const anyFullyOpaque = inkImages.some(img => img.style.opacity >= 1);
            
            if (!anyFullyOpaque) {
                this.updateLives();
            }
        }
    }
    
    

    spawnRandomInk() {
        const inkImages = [...this.shadowRoot.querySelectorAll(".ink-image")];
        const randomIndex = Math.floor(Math.random() * inkImages.length);
        const inkImage = inkImages[randomIndex];

        if (!inkImage) return;

        inkImage.src = this.fileRel.concat("","images/library_dungeon/library-stroke-black.png");
        inkImage.style.opacity = 0;
        let opacity = 0;
        
        this.currentInk = inkImage; // Track the active ink

        inkImage.opacityInterval = setInterval(() => {
            if (this.currentInk !== inkImage) {
                clearInterval(inkImage.opacityInterval);
                return;
            }

            opacity += 0.01;
            inkImage.style.opacity = opacity;

            if (opacity >= 1) {
                inkImage.src = this.fileRel.concat("","images/library_dungeon/library-stroke-red.png"); // Reset to black ink
                clearInterval(inkImage.opacityInterval);
                this.updateLives(); // Deduct a life
                this.currentInk = null;

                setTimeout(() => {
                    inkImage.style.opacity = 0;
                    inkImage.src = this.fileRel.concat("","images/library_dungeon/library-stroke-black.png"); // Reset to black ink

                    this.spawnRandomInk();
                }, Math.random() * 1500 + 500);
            }
        }, 10);
    }

    updateLives() {
        // Decrease the lives and update the display
        if (this.livesRemaining > 0) {
            this.livesRemaining -= 1;
        }

        const heartImages = this.shadowRoot.querySelectorAll(".heart");

        heartImages.forEach((heart, index) => {
            if (index < this.livesRemaining) {
                heart.classList.remove("lost"); // Keep heart visible
            } else if (!heart.classList.contains("lost")) {
                heart.classList.add("lost"); // Trigger animation for lost heart
            }
        });

        if (this.livesRemaining === 0) 
        {
            setTimeout(() => {
                this.gameOver(this.fileRel);
            }, 500);
        }
    }

    gameOver() {
        console.log("Game over!");
        window.location.href = this.fileRel.concat("","html/generic/death.html");
    }
}

customElements.define("library-book", LibraryBook);
