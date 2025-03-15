if(settings.doTextAnimations){
    document.addEventListener("DOMContentLoaded", () => {
        setupObservers();
    });
}


let detailsChanged = false;
let promptChanged = false;
let changeTimeout;
let detailsObserver, promptObserver;

function setupObservers() {
    detailsObserver = createObserver("#details", "details");
    promptObserver = createObserver("#prompt", "prompt");
}

function createObserver(selector, type) {
    const target = document.querySelector(selector);
    if (!target) return null;

    const observer = new MutationObserver(() => {
        observer.disconnect(); // Stop observing during updates
        if (type === "details") detailsChanged = true;
        if (type === "prompt") promptChanged = true;

        clearTimeout(changeTimeout);
        changeTimeout = setTimeout(() => {
            handleChanges();
            detailsChanged = false;
            promptChanged = false;
        }, 50); // Short delay to check for simultaneous changes
    });

    observer.observe(target, { childList: true, subtree: true });
    return observer;
}

function handleChanges() {
    const prompt = document.querySelector("#prompt");
    const details = document.querySelector("#details");
    const options = document.querySelector("#options");
    const timerBar = document.querySelector("#timer-bar");

    options.style.display = "none";
    if (timerBar) {
        timerBar.stopTimer();
        timerBar.display = "none";
    }
    document.getElementById("details-box").style.display = "flex";
    if (detailsChanged && promptChanged) {
        console.log("Both #details and #prompt changed. Animating in sequence.");
        details.style.display = "block";
        prompt.style.display = "none";
        animateText(details, () => {
            detailsObserver.observe(details, { childList: true, subtree: true }); // Restart observer for details
            document.getElementById("input-box").style.display = "flex";
            prompt.style.display = "block";
            animateText(prompt, () => {
                promptObserver.observe(prompt, { childList: true, subtree: true }); // Restart observer for prompt
                setTimeout(() => {
                    if (timerBar) {
                        timerBar.style.display = "block";
                        setTimeout(() => {
                            animateElementChildrenPlacement(options);
                        }, 500);
                        timerBar.checkAndStartTimer();
                    } else {
                        animateElementChildrenPlacement(options);
                    }
                }, 250);
            });
        });

    } else if (detailsChanged) {
        console.log("#details changed. Animating.");
        details.style.display = "block";
        animateText(details, () => {
            document.getElementById("input-box").style.display = "flex";
            detailsObserver.observe(details, { childList: true, subtree: true }); // Restart observer for details
            setTimeout(() => {
                if (timerBar) {
                    timerBar.style.display = "block";
                    timerBar.checkAndStartTimer();
                    setTimeout(() => {
                        animateElementChildrenPlacement(options);
                    }, 500);
                } else {
                    animateElementChildrenPlacement(options);
                }
            }, 250);
        });

    } else if (promptChanged) {
        console.log("#prompt changed. Animating.");
        document.getElementById("input-box").style.display = "flex";
        animateText(prompt, () => {
            promptObserver.observe(prompt, { childList: true, subtree: true }); // Restart observer for prompt
            setTimeout(() => {
                if (timerBar) {
                    timerBar.style.display = "block";
                    timerBar.checkAndStartTimer();
                    setTimeout(() => {
                        animateElementChildrenPlacement(options);
                    }, 500);
                } else {
                    animateElementChildrenPlacement(options);
                }
            }, 250);
        });
    }
}

function animateElementChildrenPlacement(element) {
    const elementChildren = Array.from(element.children);

    // Ensure children have transition applied before changing opacity
    elementChildren.forEach((child) => {
        child.style.opacity = "0";
        child.style.visibility = "hidden";
    });

    element.style.display = "flex"; // Ensure parent remains visible

    // Force a small delay to apply styles before triggering animation
    setTimeout(() => {
        elementChildren.forEach((child, index) => {
            setTimeout(() => {
                child.style.visibility = "visible";
                child.style.opacity = "1";
            }, index * 100); // Adjust timing (500ms per child)
        });
    }, 50); // Small delay to allow browser to apply styles
}

function animateText(container, callback) {
    let text = container.innerText.trim();
    console.log(text)

    container.innerHTML = ""; // Clear existing text
    let delay = 0;

    requestAnimationFrame(() => {
        text.split("").forEach((letter, index) => {
            delay = index * settings.textAnimationSpeed;
            setTimeout(() => {
                container.innerHTML += letter;
            }, delay);
        });
        // Re-enable observer after animation
        if (callback) {
            setTimeout(callback, delay);
        }
    });
}
