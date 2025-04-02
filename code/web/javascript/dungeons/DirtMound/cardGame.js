const cards = [
    { id: 0, icon: '../../../../../cardImages/boulder.png', matched: false },
    { id: 1, icon: '../../../../../cardImages/boulder.png', matched: false },
    { id: 2, icon: '../../../../../cardImages/mushroom.png', matched: false },

    { id: 3, icon: '../../../../../cardImages/worm.png', matched: false },
    { id: 4, icon: '../../../../../cardImages/mushroom.png', matched: false },
    { id: 5, icon: '../../../../../cardImages/boulder.png', matched: false },

    { id: 6, icon: '../../../../../cardImages/worm.png', matched: false },
    { id: 7, icon: '../../../../../cardImages/mushroom.png', matched: false },
    { id: 8, icon: '../../../../../cardImages/worm.png', matched: false },
];

let flippedCards = [];
let canFlip = false;
let gameEnded = false; 
const cardElements = document.querySelectorAll('.card');
const popupMenu = document.getElementById('cardPopup');


function initGame() {
    console.log("Initializing game...");

  
    cardElements.forEach((card, index) => {
        
        const img = document.createElement('img');
        img.src = cards[index].icon;  
        img.alt = "Card Icon"; 
        img.classList.add('card-image'); 
        card.innerHTML = ''; 
        card.appendChild(img);  
        card.classList.add('flipped'); 
    });

    setTimeout(() => {
        
        cardElements.forEach(card => card.classList.remove('flipped'));
        canFlip = true;
    }, 4000); 

    cardElements.forEach((card, index) => {
        card.addEventListener('click', () => flipCard(index));
    });
}


function flipCard(index) {
    if (!canFlip || cards[index].matched || flippedCards.includes(index) || gameEnded) return; 

    cardElements[index].classList.add('flipped');
    flippedCards.push(index);

    
    if (flippedCards.length === 3) {
        canFlip = false;
        checkMatch();
    }
}


function checkMatch() {
    const [firstIndex, secondIndex, thirdIndex] = flippedCards;
    const firstCard = cards[firstIndex];
    const secondCard = cards[secondIndex];
    const thirdCard = cards[thirdIndex];

    console.log(`Checking match: ${firstCard.icon} vs ${secondCard.icon} vs ${thirdCard.icon}`);

    if (firstCard.icon === secondCard.icon && secondCard.icon === thirdCard.icon) {
       
        firstCard.matched = true;
        secondCard.matched = true;
        thirdCard.matched = true;
        flippedCards = [];
        canFlip = true;

    
        gameEnded = true; 
       
        setTimeout(() => {  
            window.location.href = 'dung_M_Pt2End.html';  
        }, 500);
    } else {
       
        setTimeout(() => {
            cardElements[firstIndex].classList.remove('flipped');
            cardElements[secondIndex].classList.remove('flipped');
            cardElements[thirdIndex].classList.remove('flipped');
            flippedCards = [];
            canFlip = true;

           
            gameEnded = true; 
            setTimeout(() => {  
                window.location.href = 'dung_M_Pt2EndDeath.html';  
            }, 500); 
        }, 1000); 
    }
}




initGame();