class Inventory extends HTMLElement {
    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Initialize inventory state
        this.inventory = [];

        // Load inventory from session storage when the component is created
        this.loadInventory();
    }

    loadInventory() {
        let storedInventory = sessionStorage.getItem("inventory");
        let inventory = storedInventory ? JSON.parse(storedInventory) : {}; 

        // Convert object into an array of items
        this.inventory = Object.entries(inventory); // [[item, quantity], [item, quantity]]

        // Call render to update the display
        this.render();
    }

    // Render the inventory content
    render() {
        this.shadowRoot.innerHTML = `
            <style>

                * {
                    font-family: 'Jersey 10', sans-serif;
                    letter-spacing: 0.04em;
                }

                :host {
                    display: none;
                }

                #content-box {
                    width: 100%;
                    height: 95%; /* Adjust height based on content */
                    background-color: rgba(238, 202, 153, 0.75);
                    border-radius: 10px;
                    padding: 10px;
                    text-align: center;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: flex-start; /* Start content from the top */
                    overflow-y: auto;
                }

                #title {
                    font-size: 60px;
                    margin-bottom: 10px; /* Adds space below the title */
                    color: rgb(47, 37, 27);
                }

                #content {
                    width: 100%;
                    text-align: center;
                    list-style-type: none;
                    padding: 0;
                    margin: 0;
                    display: flex;
                    flex-direction: column;
                    align-items: center;
                    justify-content: flex-start; 
                    color: rgb(47, 37, 27);
                    font-size: 40px;
                }

                #close-button {
                    width: 150px;
                    height: 50px;
                    background-color: rgba(100, 50, 50, 0.75);
                    border: 3px solid rgba(82, 69, 55, 0.75);
                    color: white;
                    border-radius: 5px;
                    cursor: pointer;
                    position: absolute;  
                    bottom: 5%;
                    right: 5%;
                    font-size: 25px;
                }

                #close-button:hover{
                    background-color: rgba(199, 120, 54, 0.75);
                    border-color:rgba(157, 92, 22, 0.75) ;
                }

                #root {
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
                    z-index: 1000;
                }

                #wrapper {
                    position: relative;
                    width: 90%;
                    height: 90%;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }   
            </style>
            <div id="root">
                <div id="wrapper">
                    <div id="content-box">
                        <h1 id="title">--- Inventory ---</h1>
                        <ul id="content">
                            ${this.inventory.length > 0
                                ? this.inventory.map(([item, quantity]) => `<li>${this.formatItemName(item)} (x${quantity})</li>`).join("")
                                : "<li>Inventory is empty</li>"
                            }
                        </ul>
                        <h1 id="title">-----------------</h1>
                    </div>
                    <button id="close-button">Close</button>
                </div>
            </div>
        `;

        this.shadowRoot.querySelector("#close-button").addEventListener("click", () => {
            this.style.display = "none";
        });
    }

    // Helper method to format item names
    formatItemName(itemName) {
        return itemName
            .toLowerCase()
            .replace(/_/g, ' ')  // Replace underscores with spaces
            .replace(/\b\w/g, char => char.toUpperCase()); // Capitalize first letter of each word
    }
}

// Define the custom element
customElements.define("inventory-container", Inventory);

// Function to show inventory
function showInventory() {
    let inventory = document.querySelector("inventory-container");
    if (inventory) inventory.style.display = "block";
}
