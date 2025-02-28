// let clickableText = document.getElementByID("#clickable-text");
let clickableImage = document.getElementByID("#clickable-image");


clickableText.addEventListener( "click", function() 
{
  console.log( "Bad instance!" );
})

document.addEventListener("DOMContentLoaded", function () {
  // Event listener for the image (stroke-overlay)
  let clickableImage = document.querySelector("#clickable-image");
  clickableImage.addEventListener("click", function() {
    console.log("Image clicked!");
    this.style.opacity = '0';  // Reset opacity to full
    opacity = 0; // Reset opacity to 0
  });

  // Event listener for the text (clickable-text)
  let clickableText = document.querySelector("#clickable-text");
  clickableText.addEventListener("click", function() {
    console.log("Text clicked!");
  });

  // Animation for the opacity of the image (stroke-overlay)
  let overlays = document.querySelectorAll(".stroke-overlay");

  overlays.forEach(overlay => {
    overlay.style.opacity = '0'; // Start fully transparent
  });
  let opacity = 0; // Start fully transparent
  
  let interval = setInterval(function () {
    if (opacity < 1) {
      opacity += 0.1; // Increase opacity step-by-step
      overlay.style.opacity = opacity;
    } else {
      clearInterval(interval); // Stop once fully visible
    }
  }, 300); // Adjust speed (300ms per step)


});