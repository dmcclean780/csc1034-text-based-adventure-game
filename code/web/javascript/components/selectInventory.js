class SelectInventory extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default duration
        this.correctItem = this.getAttribute("correctItem");
        this.correctAnswerFunction = eval(this.getAttribute("correctAnswerFunction"));
        this.incorrectAnswerFunction = eval(this.getAttribute("incorrectAnswerFunction"));
        //this.contentTitle = "Inventory";

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

                #inventory-list{
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    gap: 10px;
                }

                .inventory-button{
                    padding: 10px;
                    border-radius: 5px;
                    background-color: rgba(100, 50, 50, 0.75);
                    cursor: pointer;
                    border: none;
                    min-width: 80px;    
                }
            </style>
            `;

        this.shadowRoot.innerHTML = this.shadowRootStyles;        

        this.shadowRoot.innerHTML += `
            <div id="root">
                <div id="wrapper">
                    <div id="content-box">
                        <h1>Inventory</h1>
                        <div id="inventory-list"></div>
                    </div>
                    <button id="close-button" >Close</button>
                </div>
            </div>
        `;

        this.shadowRoot.querySelector("#close-button").addEventListener("click", () => {
            this.style.display = "none";
        });

        this.render();


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
        const inventoryList = this.shadowRoot.querySelector("#inventory-list");
        inventoryList.innerHTML = "";

        const itemData = getAllInventoryItems();

        this.correctItem = this.getAttribute("correctItem");
        this.correctAnswerFunction = eval(this.getAttribute("correctAnswerFunction"));
        this.incorrectAnswerFunction = eval(this.getAttribute("incorrectAnswerFunction"));

        if (!itemData || itemData.length === 0) {
            inventoryList.innerHTML = "<p>No items in inventory</p>";
            return;
        }

        itemData.forEach(item => {
            const itemButton = document.createElement("button");
            itemButton.classList.add("inventory-button");
            itemButton.innerHTML = item;

            itemButton.addEventListener("click", () => {
                const isCorrect = item === this.correctItem;
                console.log(`Selected item: ${item}, Correct: ${isCorrect}`);
                this.style.display = "none";
                if (isCorrect){
                    this.correctAnswerFunction();
                }else{
                    this.incorrectAnswerFunction();
                }
            });

            inventoryList.appendChild(itemButton);
        });
    }

    connectedCallback(){
        this.render();
    }

    

}



customElements.define("select-inventory", SelectInventory);