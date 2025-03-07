class TimerBar extends HTMLElement {

    constructor() {
        super();
        this.attachShadow({ mode: "open" });

        // Default duration
        this.duration = parseInt(this.getAttribute("duration")) || 10;
        this.onComplete = null;
        this.timerStarted = false;

        // Component Template
        this.shadowRoot.innerHTML = `
            <style>
                #timer-bar{
                    width: 100%;
                    height: 20px;
                    background-color: green;
                    padding: 0 0;
                    margin: 10px 10px;
                    position: absolute;
                    border-radius: 60px / 15px;
                }

                #timer-background{
                    width: 100%;
                    height: 20px;
                    background-color: black;
                    padding: 0 0;
                    margin: 10px 10px;
                    position: absolute;
                    border-radius: 60px / 15px;

                }

                #timer-time{
                    width: 100%;
                    height: 10px;
                    font-size: 1.25em;
                    margin-bottom: 20px;
                    text-align: center;
                    position: absolute;
                    
                }

                #timer-box {
                    width: 100%;
                    background-color: grey;
                    position: relative;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                }
                
                :host{
                    width: 100%;
                }
            </style>

            <div id="timer-box">
                <div id="timer-background"></div>
                <div id="timer-bar"></div>
                <div id="timer-time">${this.duration}</div>
            </div>
        `;
    }

    connectedCallback() {
        this.checkAndStartTimer(); // ✅ Try starting immediately if `onComplete` is already set
    }

    set onCompleteCallback(callback) {
        if (typeof callback === "function") {
            this.onComplete = callback;
            this.checkAndStartTimer(); // ✅ Start the timer once `onComplete` is assigned
        } else {
            console.error("onComplete must be a function, but got:", callback);
        }
    }

    checkAndStartTimer() {
        if (this.onComplete && !this.timerStarted) {
            this.timerStarted = true; // Prevent multiple starts
            this.runTimerBar();
        }
    }

    runTimerBar() {
        let i = 0;
        const widthStep = 100 / this.duration;
        const firstTransition = (30 / 3) * 2;
        const secondTransition = 30 / 3;
        let timerRemaining = this.duration;
    
        if (i == 0) {
            i = 1;
            let timerBar = this.shadowRoot.getElementById("timer-bar");
            let timerTime = this.shadowRoot.getElementById("timer-time");
            timerTime.innerHTML = timerRemaining;
            let width = 100;
            let id = setInterval(() => {
                if (width <= widthStep || timerRemaining <= 1) {
                    clearInterval(id);
                    i = 0;
                    timerBar.style.width = 0 + "%";
                    timerTime.innerHTML = 0;
                    if (this.onComplete) {
                     this.onComplete();
                    }
                } else {
                    if (timerRemaining <= firstTransition) {
                        timerBar.style.backgroundColor = "yellow";
                    }
                    if (timerRemaining <= secondTransition) {
                        timerBar.style.backgroundColor = "red";
                    }
                    width -= widthStep;
                    timerRemaining--;
                    timerBar.style.width = width + "%";
                    timerBar.style.borderTopRightRadius = "0px";
                    timerBar.style.borderBottomRightRadius = "0px";
                    timerTime.innerHTML = timerRemaining;
                }
            }, 1000);
        }
    }


} 

customElements.define("timer-bar", TimerBar);

