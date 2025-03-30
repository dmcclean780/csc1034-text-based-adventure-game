class PauseMenu extends HTMLElement {
    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Initialize the component
        this.render();
    }

    // Render the pause menu
    render() {
        this.shadowRoot.innerHTML = `
            <style>
                * {
                    font-family: 'Jersey 10', sans-serif;
                    letter-spacing: 0.04em;
                }

                :host {
                    display: none; /* Hidden by default */
                    z-index: 2; /* Overlay above other content */
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
                    background-color: rgba(0, 0, 0, 0.7); /* Transparent black background */
                    z-index: 2; /* Ensure it overlays everything else */
                }

                #wrapper {
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: center;
                    background-color: rgba(238, 202, 153, 0.9); /* Background for the pause menu */
                    padding: 30px 10px; /* Adjusted padding */
                    border-radius: 10px;
                    min-width: 300px; /* Set a minimum width for better appearance */
                }

                #title {
                    font-size: 48px;
                    margin-bottom: 40px; /* Reduced margin below title */
                    color: rgb(47, 37, 27);
                    padding: 0; /* Removed extra padding */
                    text-align: center; /* Ensure it's centered */
                }

                /* Add dashed lines before and after the title */
                #title::before,
                #title::after {
                    content: '---'; /* Creates dashed line */
                    margin: 0 5px; /* Space between the dashed line and the text */
                    font-size: 36px; /* Adjust the dashed line size */
                    color: rgb(47, 37, 27); /* Match the text color */
                }

                #button-container {
                    display: flex;
                    flex-direction: column;
                    gap: 20px; /* Space between the buttons */
                }

                button {
                    width: 225px;
                    height: 50px;
                    background-color: rgba(100, 50, 50, 0.75);
                    border: 3px solid rgba(82, 69, 55, 0.75);                    
                    color: white;
                    border-radius: 5px;
                    cursor: pointer;
                    font-size: 25px;
                }

                button:hover {
                    background-color: rgba(199, 120, 54, 0.75);
                    border-color: rgba(157, 92, 22, 0.75);
                }

                button:active {
                    transform: scale(0.9);
                    transition: transform 0.05s ease-in;
                }
            </style>

            <div id="root">
                <div id="wrapper">
                    <h1 id="title">Pause Menu</h1>
                    <div id="button-container">
                        <button id="settings-button">Settings</button>
                        <button id="quit-button">Quit Game</button>
                        <button id="logout-button">Log Out</button>
                        <button id="return-button">Return</button>
                    </div>
                </div>
            </div>
        `;

        this.shadowRoot.querySelector("#return-button").addEventListener("click", () => {
            this.style.display = "none";
        });

        this.shadowRoot.querySelector("#quit-button").addEventListener("click", () => {
            let username = sessionStorage.getItem("username");
            sessionStorage.clear();
            sessionStorage.setItem("username", username);
            window.location.href = "../../html/menus/startGame.html";
        });

        this.shadowRoot.querySelector("#logout-button").addEventListener("click", () => {
            sessionStorage.clear();
            window.location.href = "../../html/menus/login.html";
        });

        this.shadowRoot.querySelector("#settings-button").addEventListener("click", () => {
            window.location.href = "../../html/menus/settings.html";
        });
    }
}

// Define the custom element
customElements.define("pause-menu", PauseMenu);

// Function to show the pause menu
function showPauseMenu() {
    let pauseMenu = document.querySelector("pause-menu");
    if (pauseMenu) {
        pauseMenu.style.display = "block"; // Show the pause menu
    }
}

// Function to hide the pause menu
function hidePauseMenu() {
    let pauseMenu = document.querySelector("pause-menu");
    if (pauseMenu) {
        pauseMenu.style.display = "none"; // Hide the pause menu
    }
}
