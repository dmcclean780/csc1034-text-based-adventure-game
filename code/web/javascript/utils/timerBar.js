class TimerBar extends HTMLElement {

    static observedAttributes = ['timerLength', 'timerFinishedAction'];
    constructor() {
        super();
    }

    attributeChangedCallback(name, oldValue, newValue) {
        console.log(`Attribute ${name} has changed.`);
    }


}


function runTimerBar(initailTimerLength, timerFinishedAction) {
    let i = 0;
    const widthStep = 100 / initailTimerLength;
    const firstTransition = (30 / 3) * 2;
    const secondTransition = 30 / 3;
    let timerRemaining = initailTimerLength;

    if (i == 0) {
        i = 1;
        let timerBar = document.getElementById("timer-bar");
        let timerTime = document.getElementById("timer-time");
        let width = 100;
        let id = setInterval(frame, 1000);
        function frame() {
            if (width <= widthStep || timerRemaining <= 1) {
                clearInterval(id);
                i = 0;
                timerBar.style.width = 0 + "%";
                timerTime.innerHTML = 0;
                timerFinishedAction();
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
        }
    }
}

export { runTimerBar };

