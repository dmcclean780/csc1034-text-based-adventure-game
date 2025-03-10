class Dialogue extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default duration
        this.name = this.getAttribute("name");
        const dialogueRaw = this.getAttribute("dialogue");
        this.dialogue = dialogueRaw ? JSON.parse(dialogueRaw) : [];
        this.finishedSpeakingFunction = eval(this.getAttribute("finishedSpeakingFunction"));
        this.currentDialogueIndex = 0;
        this.characterImage = this.getAttribute("characterImage");

        this.styles = `
            <style>

                :host {
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 100%;
                    height: 100%;
                    display: none;
                    flex-direction: column;
                    justify-content: start;
                    align-items: start;
                }

                #dialogue-wrapper {
                    position: absolute;
                    width: 100%;
                    height: 90%;
                    display: flex;
                    flex-direction: column;
                    justify-content: end;
                    align-items: start;
                }

                #dialogue-box, #dialogue-background {
                    position: absolute;
                    left: 0;
                    color: white;
                    width: 100%;
                    height: 10%;
                    display: flex;
                    flex-direction: column;
                    justify-content: space-between;
                    align-items: start;
                }

                #dialogue-background {
                    background-color: rgba(0,0,0,0.85);
                    clip-path: ellipse(50% 50% at 50% 50%);
                }



                #character-portrait {
                    
                    aspect-ratio: 1 / 1;
                    object-fit: contain;
                }

                #character-name, #next-step {
                    width: 10%;
                    margin-left: 10%;
                    margin-right: 10%;
                    flex: 1;
                    text-align: center;
                    background-color: rgb(144, 144, 144);
                    font-size: 1.5em;
                    border-radius: 5px;
                }

                #next-step {
                    margin-left: 80%;
                }

                #character-dialogue {
                    flex: 5;
                    width: 80%;
                    margin-left: 10%;
                    margin-right: 10%;
                    margin-bottom: 2%;
                    font-size: 1.5em;

                }

                #img-wrapper{
                    height: 90%;
                    width: 30%;
                    display: flex;
                    flex-direction: column;
                    justify-content: end;
                }
            </style>
        `;

        // Component Template
        this.shadowRoot.innerHTML = `
                <div id="img-wrapper">
                    <img id="character-portrait" src= "${this.characterImage}" alt="${this.name}"/>
                </div>
                <div id="dialogue-wrapper">
                    <div id="dialogue-background"></div>
                    <div id="dialogue-box">
                        <div id="character-name">${this.name}</div>
                        <div id="character-dialogue">${this.dialogue[0]}</div>
                        <button id="next-step">-></button>
                    </div>

                </div>
            
        ` + this.styles;
    }

    connectedCallback() {
        this.shadowRoot.querySelector("#next-step").addEventListener("click", () => {
            this.currentDialogueIndex++;
            if (this.currentDialogueIndex < this.dialogue.length) {
                this.shadowRoot.querySelector("#character-dialogue").textContent = this.decodeHtmlEntities(this.dialogue[this.currentDialogueIndex]);
            } else {
                this.style.display = "none";
                if (this.finishedSpeakingFunction) {
                    this.finishedSpeakingFunction();
                }
            }
        });
    }

    render(){
        this.name = this.getAttribute("name");
        const dialogueRaw = this.getAttribute("dialogue");
        this.dialogue = dialogueRaw ? JSON.parse(dialogueRaw) : [];
        this.finishedSpeakingFunction = eval(this.getAttribute("finishedSpeakingFunction"));
        this.currentDialogueIndex = 0;
        this.characterImage = this.getAttribute("characterImage");
        this.shadowRoot.innerHTML = `
                <div id="img-wrapper">
                    <img id="character-portrait" src= "${this.characterImage}" alt="${this.name}"/>
                </div>
                <div id="dialogue-wrapper">
                    <div id="dialogue-background"></div>
                    <div id="dialogue-box">
                        <div id="character-name">${this.name}</div>
                        <div id="character-dialogue">${this.decodeHtmlEntities(this.dialogue[0])}</div>
                        <button id="next-step">-></button>
                    </div>

                </div>
            
        ` + this.styles;

        this.connectedCallback();
    }

    decodeHtmlEntities(str) {
        let textarea = document.createElement("textarea");
        textarea.innerHTML = str;
        return textarea.value;
    }
    



}

customElements.define("dialogue-box", Dialogue);

