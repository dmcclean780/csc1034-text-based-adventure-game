class selectInventory extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default duration
        this.content = setUpInventory();
        this.contentTitle = "Inventory";

        this.shadowRootStyles = `
            <style>

                :host{
                    display: none;
                }

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
                    background-color: rgba(238, 202, 153, 0.75);;
                    border-radius: 10px;
                    padding: 10px;
                    text-align: center;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                }

                #close-button{
                    position: absolute;
                    bottom: 0;
                    width: 100px;
                    height: 50px;
                    background-color: rgba(100, 50, 50, 0.75);
                    color: white;
                    border: none;
                    border-radius: 5px;
                    margin-top: 10px;
                    cursor: pointer;
                }

                #content{
                    height: 20%;
                }

                #title{
                    height 80%;    
                }
            </style>
            `;

        this.shadowRoot.innerHTML = this.shadowRootStyles;        

        this.shadowRoot.innerHTML += `
            <div id="root">
                <div id="wrapper">
                    <div id="content-box">
                        <h1 id="title" >${this.contentTitle}</h1>
                        <p id="content" >${this.content}</p>
                    </div>
                    <button id="close-button" >Close</button>
                </div>
            </div>
        `;


    }

    attributeChangedCallback(name, oldValue, newValue) {
        this.render(); // Rerender when attributes change
    }

    connectedCallback() {
        this.shadowRoot.querySelector("#close-button").addEventListener("click", () => {
            this.style.display = "none";
        });
    }

    render() {
        const contentTitle = "Inventory"
        let content = setUpInventory()
        this.shadowRoot.innerHTML = this.shadowRootStyles;

            this.shadowRoot.innerHTML += `
                <div id="root">
                    <div id="wrapper">
                        <div id="content-box">
                            <h1>${contentTitle}</h1>
                            <p>${content}</p>
                        </div>
                        <button id="close-button" >Close</button>
                    </div>
                </div>
            `;

        this.shadowRoot.querySelector("#close-button").addEventListener("click", () => {
            this.style.display = "none";
        });
    }

    

}


async function setUpInventory() {

    const itemData = await makeItemQuery("NULL");
    const inventoryData = await makeInventoryQuery("INVENTORY");
    
    const inventoryBox = document.getElementById("inventory-grid");
    inventoryBox.replaceChildren();
    for(let i=0; i<parseInt(inventoryData.rowSize) * parseInt(inventoryData.colSize); i++){
        const inventoryTile = document.createElement("div");
        inventoryTile.classList.add("inventory-tile");
        inventoryTile.id = i+1;
        inventoryTile.style.border = "1px solid rgba(70, 70, 70, 0.5)";
        inventoryBox.appendChild(inventoryTile);
    }

    for(let i=0; i<itemData.length; i++){
        
        const item = itemData[i];
        const inventoryTile = document.getElementById((parseInt(item.rowPosition)-1) * (parseInt(inventoryData.colSize)) + parseInt(area.colPosition));
        const itemTile = document.createElement("button");
        itemTile.classList.add("inventory-button");
        inventoryTile.appendChild(itemTile);
    }
}


customElements.define("select-inventory", SelectInventory);