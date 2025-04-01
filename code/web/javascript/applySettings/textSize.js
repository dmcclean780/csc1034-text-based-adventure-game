document.addEventListener("settingsLoaded", () => {
    applyTextSize();
});


function applyTextSize()
{
    reload = false;

    console.log(settings.textSize);
    if (settings.textSize == 'Small') {
        document.body.style.fontSize = "10px";
    } else if (settings.textSize == 'Medium') {
        document.body.style.fontSize = "15px";
    } else if (settings.textSize == 'Large') {
        document.body.style.fontSize = "20px";
    }
}
