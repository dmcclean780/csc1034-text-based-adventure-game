class PopupMenu extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default duration
        this.content = this.getAttribute("content")
        this.contentType = this.getAttribute("contentType") || "text";
        this.contentTitle = this.getAttribute("contentTitle");
        this.timerStarted = false;

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

        if (this.contentType == "text") {
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
        } else if (this.contentType == "list") {
            this.content = this.content.split(",");
            this.shadowRoot.innerHTML += `
                <div id="root">
                    <div id="wrapper">
                        <div id="content-box">
                            <h1 id="title" >${this.contentTitle}</h1>
                            <ul id="content>
                                ${this.content.map((item) => `<li>${item}</li>`).join("")}
                            </ul>
                        </div>
                        <button id="close-button">Close</button>
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
        this.shadowRoot.innerHTML = this.shadowRootStyles;

        if (contentType == "text") {
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
        } else if (contentType == "list") {
            content = content.split(",");
            this.shadowRoot.innerHTML += `
                <div id="root">
                    <div id="wrapper">
                        <div id="content-box">
                            <h1>${contentTitle}</h1>
                            <ul>
                                ${content.map((item) => `<li>${item}</li>`).join("")}
                            </ul>
                        </div>
                        <button id="close-button">Close</button>
                    </div>
                </div>
            `;
        }

        this.shadowRoot.querySelector("#close-button").addEventListener("click", () => {
            this.style.display = "none";
        });
    }

    

}

customElements.define("popup-menu", PopupMenu);

