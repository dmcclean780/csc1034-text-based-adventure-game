class PopupMenu extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default duration
        this.content = this.getAttribute("content")
        this.contentType = this.getAttribute("contentType") || "text";
        this.contentTitle = this.getAttribute("contentTitle");
        this.timerStarted = false;

        this.shadowRoot.innerHTML = `
            <style>

                :host{
                    display: block;
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
                    background-color: white;
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
                    background-color: red;
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

        if (this.contentType == "text") {
            this.shadowRoot.innerHTML += `
                <div id="root">
                    <div id="wrapper">
                        <div id="content-box">
                            <img src="../../../images/library_dungeon/library-stroke-type1.png" class="stroke" alt="stroke" id="clickable-image>
                            <h1 id="title" >${this.contentTitle}</h1>
                            <p id="content" >${this.content}</p>
                        </div>
                    </div>
                </div>
            `;
        } 
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
        const contentTitle = this.getAttribute("contentTitle")
        let content = this.getAttribute("content")
        const contentType = this.getAttribute("contentType") || "text";
        this.shadowRoot.innerHTML = `
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
                    background-color: white;
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
                    background-color: red;
                    color: white;
                    border: none;
                    border-radius: 5px;
                    margin-top: 10px;
                    cursor: pointer;
                }
            </style>
            `;

        if (contentType == "text") {
            this.shadowRoot.innerHTML += `
                <div id="root">
                    <div id="wrapper">
                        <div id="content-box">
                            <h1>${contentTitle}</h1>
                            <p>${content}</p>
                        </div>
                    </div>
                </div>
            `;
        } 

        this.shadowRoot.querySelector("#close-button").addEventListener("click", () => {
            this.style.display = "none";
        });
    }

    

}

customElements.define("library-book", PopupMenu);

