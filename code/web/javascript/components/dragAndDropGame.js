/**
 * This will work on a mobile device/touchscreen device as well.
 * However it will not work when using chrome dev tools to simulate a mobile device.
 * The touch must be held slightly before dragging on touchscreen
 */


class DragAndDropGame extends HTMLElement {

    elementsDragged = 0;
    elementsDraggedID = [];
    fullBoxes = [];

    constructor() {
        super();
        this.attachShadow({ mode: "open" });
        this.noItemsToDrag = this.getAttribute("noItemsToDrag") || 3;
        this.dragItemsType = this.getAttribute("dragItemsType") || "text/plain";
        this.dragItemsImage = this.getAttribute("dragItemsImage") || "https://via.placeholder.com/150";
        this.gameTimeLimit = this.getAttribute("gameTimeLimit") || 5;
        this.gameFailFunction = this.getAttribute("gameFailFunction") || (() => { console.log("Game Over!") });
        this.gameTitle = this.getAttribute("gameTitle") || "Drag and Drop Game";
        this.destBoxBackgroundStylings = this.getAttribute("destBoxBAckgroundStylings");

        this.shadowRoot.innerHTML = `
            <style>
                #root{
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    background-color: rgba(0, 0, 0, 0.5);
                }

                #wrapper{
                    position: relative;
                    width: 90%;
                    height: 90%;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }   

                #content-box{
                    width: 100%;
                    height: 95%;
                    background-color: rgba(100, 50, 50, 0.75);
                    border-radius: 10px;
                    padding: 10px;
                    text-align: center;
                    display: flex;
                    flex-direction: column;
                    justify-content: space-between;
                    align-items: center;
                }

                #content{
                    flex: 9;
                }

                #title{
                    flex: 1;
                   
                }

                #timer-bar{
                    flex: 1;
                    margin: 10px;    
                }

                #game-box{
                    width: 100%;
                    height: 100%;
                    background-color: rgb(61, 60, 60);
                    background-size: cover;
                    background-position: center;
                    border-radius: 10px;

                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                    
                }

                .drag-items-container{
                    width: 20%;
                    height: 100%;
                    display: flex;
                    flex-direction: column;
                    justify-content: space-around;
                    align-items: center;
                    padding: 10px;
                    overflow: auto;
                    box-sizing: border-box;
                }

                .drag-items-dest-container{
                    width: 30%;
                    height: 100%;
                    display: flex;
                    flex-direction: column;
                    justify-content: space-around;
                    align-items: center;
                    
                    margin-right: 10px;
                }

                .drag-item{
                    width: 100%;
                    height: ${80 / this.noItemsToDrag}%;
                    background-image: url("${this.dragItemsImage}");
                    background-size: contain;
                    background-position: center;
                    background-repeat: no-repeat;
                    background-color: transparent;
                    image-rendering: pixelated;

                }

                .drag-item-dest-box{
                    width: 100%;
                    flex: 1;
                    ${this.destBoxBackgroundStylings}
                }

            </style>

            <div id="root">
                <div id="wrapper">
                    <div id="content-box">
                        <h1 id="title" >${this.gameTitle}</h1>
                        <timer-bar id="timer-bar" duration="${this.gameTimeLimit}"></timer-bar>
                        <div id="game-box">
                            <div class="drag-items-container">
                                ${Array.from({ length: this.noItemsToDrag }, (_, i) =>
            `<div class="drag-item" draggable="true" id="drag-item-${i}"></div>`).join("")
            }
                            </div>
                            <div class="drag-items-dest-container">
                                ${Array.from({ length: this.noItemsToDrag }, (_, i) =>
                `<div class="drag-item-dest-box" id="target-${i}"></div>`).join("")
            }
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        `;

        this.dragstartHandler = this.dragstartHandler.bind(this);
        this.dropHandler = this.dropHandler.bind(this);
        this.dragoverHandler = this.dragoverHandler.bind(this);
    }

    connectedCallback() {
        for (let i = 0; i < this.noItemsToDrag; i++) {
            const element = this.shadowRoot.getElementById(`drag-item-${i}`);
            element.addEventListener("dragstart", this.dragstartHandler);

        }

        for (let i = 0; i < this.noItemsToDrag; i++) {
            const element = this.shadowRoot.getElementById(`target-${i}`);
            element.addEventListener("drop", this.dropHandler);
            element.addEventListener("dragover", this.dragoverHandler);
        }

        this.shadowRoot.getElementById("timer-bar").onCompleteCallback = eval(this.gameFailFunction);
    }

    dragstartHandler(ev) {
        ev.dataTransfer.setData("text/plain", ev.target.id);
    }

    dropHandler(ev) {
        ev.preventDefault();
        // Get the dragged item's ID
        const data = ev.dataTransfer.getData("text/plain");
        const draggedElement = this.shadowRoot.getElementById(data);

        // Ensure it's dropped only inside the #target container, not another .drag-item
        if (ev.target.classList.contains("drag-item") || this.fullBoxes.includes(ev.target.id)) {
            return; // Prevent dropping inside another .drag-item
        }

        // Append the dragged item to the valid container
        ev.target.appendChild(draggedElement);
        this.fullBoxes.push(ev.target.id);
        draggedElement.style.height = "100%";
        draggedElement.style.width = "30%";
        draggedElement.style.marginLeft = Math.random() * 50 + "%";
        if (!this.elementsDraggedID.includes(data)) {
            this.elementsDragged++;
        }
        this.elementsDraggedID.push(data);
        if (this.elementsDragged == this.noItemsToDrag) {
            this.shadowRoot.getElementById("timer-bar").stopTimer();
            setTimeout(() => {
                this.style.display = "none";
            }, 10);
        }

    }

    dragoverHandler(ev) {
        ev.preventDefault();
        ev.dataTransfer.dropEffect = "move";
    }
}

customElements.define("drag-drop-game", DragAndDropGame);

