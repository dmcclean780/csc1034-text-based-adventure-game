class TextEntry extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });
        this.render();
        
    }

    connectedCallback() {
        this.shadowRoot.getElementById("submit-button").addEventListener("click", this.checkAnswer.bind(this));
    }

    checkAnswer() {
        let answer = this.shadowRoot.getElementById("text-entry").value;
        if (answer.toLowerCase() === this.correctAnswer.toLowerCase()) {
            this.correctResponseFunction();
        } else {
            this.incorrectResponseFunction();
            this.shadowRoot.getElementById("text-entry").value = "";
        }
    }

    render(){
        this.correctAnswer = this.getAttribute("correctAnswer") || "correct";
        this.correctResponseFunction = eval(this.getAttribute("correctResponseFunction") || (() => { console.log("Correct!") }));
        this.incorrectResponseFunction = eval(this.getAttribute("incorrectResponseFunction") || (() => { console.log("Incorrect!") }));

        this.shadowRoot.innerHTML = `
            <style>
                :host{
                    flex: 1;
                    display: flex;
                    flex-direction: row;
                    justify-content: space-between;
                    align-items: center;
                }

                #text-entry{
                    flex: 4;
                    height: 50px;
                    font-size: 20px;
                    margin-right: 10px;
                    border-radius: 10px;
                    text-align: center;
                    cursor: pointer;
                    font-size: 1.25em;
                    font-weight: bold;
                }

                #submit-button{
                    flex: 1;
                    height: 50px;
                    font-size: 20px;
                    padding: 10px 20px;
                    background-color: rgba(100, 50, 50, 0.75);
                    border-radius: 10px;
                    text-align: center;
                    cursor: pointer;
                    font-size: 1.25em;
                    color: white;
                    font-weight: bold;
                }

            </style>

            <input id="text-entry" type="text" placeholder="Enter your answer here">
            <button id="submit-button">Submit</button>
        `;
        
    }
}

customElements.define("text-entry", TextEntry);

