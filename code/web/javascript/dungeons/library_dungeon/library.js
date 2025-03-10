let fullPath = window.location.pathname;
let folderPath = fullPath.substring(0, fullPath.lastIndexOf('/') + 1);
let pageName = fullPath.split('/').pop();
let baseName = pageName.substring(0, pageName.lastIndexOf('_') + 1);
let actionName = pageName.substring(pageName.lastIndexOf('_') + 1);

console.log(fullPath);
console.log(actionName);

document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.button-option');

    buttons.forEach(button => {
        button.addEventListener('click', function() 
        {
            let id = this.id;

            if(baseName == "library_outside_")
            {
                outsideDecision(id);
            }
            else if(baseName == "library_r1_")
            {
                r1Decision(id);
            }
            else if(baseName == "library_r2_")
            {
                r2Decision(id);
            }
            else if(baseName == "library_r3_")
            {
                r3Decision(id);
            } 
        });
    });
});

function outsideDecision(outsideButtonId) 
{
    if(actionName == "enterQuestion.html")
    {
        if(outsideButtonId == "option_1")
        {
            window.location.href = folderPath + "library_r1_enter.html";
        }
        else if(outsideButtonId == "option_2")
        {
            window.location.href  = folderPath + "library_outside_lookAround.html";
        }
        else if(outsideButtonId == "option_3")
        {
            console.log("You can't do that, this will take you back to the Village - Not implemented yet");
        }
    }
    else if(actionName == "lookAround.html")
    {
        if(outsideButtonId == "option_1")
        {
            window.location.href = folderPath + "library_r1_enter.html";
        }
        else if(outsideButtonId == "option_2")
        {
            console.log("You can't do that, this will take you back to the Village - Not implemented yet");
        }
    }
}

function r1Decision(r1Buttonid)
{
    if(actionName == "enter.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_investigateBookcase.html";
        }
        else if(r1Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r1_investigateInkPot.html";

        }
    }
    else if(actionName == "investigateBookcase.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_investigateInkPot.html";
        }
        else if(r1Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r1_raiseTorchBookcase.html";
        }
    }
    else if(actionName == "raiseTorchBookcase.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_investigateInkPot.html";
        }
        else if(r1Buttonid == "option_2")
        {
            window.location.href = "../../../html/generic/death.html";
        }
    }
    else if(actionName == "investigateInkPot.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_takeQuill.html";
        }
    }
    else if(actionName == "takeQuill.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_bookReadPeace.html";
        }
        else if(r1Buttonid == "option_2")
        {
            window.location.href = "../../../html/generic/death.html";
        }
        else if(r1Buttonid == "option_3")
        {
            window.location.href = "../../../html/generic/death.html";
        }
    }
    else if(actionName == "book1Win.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_nextRoom.html";
        }
    }
    else if(actionName == "nextRoom.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_enter.html";
        }
    }
    else if(actionName == "bookPeaceWin.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_enter.html";
        }
    }
}

function r2Decision(r2Buttonid)
{
    if(actionName == "enter.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_stepForwardBookcaseFall.html";
        }
        else if(r2Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r2_walkAroundBookcases.html";

        }
    }
    else if(actionName == "stepForwardBookcaseFall.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = "../../../html/generic/death.html";
        }
        else if(r2Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r2_diveBackwards.html";
        }
    }
    else if(actionName == "diveBackwards.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_walkAroundBookcases.html";
        }
    }
    else if(actionName == "walkAroundBookcases.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_approachBook.html";
        }
    }
    else if(actionName == "approachBook.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_sliceStronger.html";
        }
        else if(r2Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r2_sliceWeaker.html";
        }
    }
    else if(actionName == "sliceStronger.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_sliceWeaker.html";
        }
    }
    else if(actionName == "sliceWeaker.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_BookReadWar.html";
        }
    }
    else if(actionName == "bookWarWin.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_nextRoom.html";
        }
    }
    else if(actionName == "nextRoom.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r3_entrance.html";
        }
        else if(r2Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r2_unlockGlassCage.html";
        }
    }
    else if(actionName == "unlockGlassCage.html")
    {
        if(r2Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r3_entrance.html";
        }
    }
}

function r3Decision(r3Buttonid)
{
    if(actionName == "entrance.html")
    {
        if(r3Buttonid == "option_1")
        {
            document.getElementById("details").style.display = "none";
            document.getElementById("input-box-container").style.display = "none";
            document.getElementById("dialogue").style.display = "flex";
            document.getElementById("background").style.display = "none";
        }
    }
    else if(actionName == "bookDecision.html")
    {
        if(r3Buttonid == "option_1")
        {
            document.getElementById("details").style.display = "none";
            document.getElementById("input-box-container").style.display = "none";
            document.getElementById("dialogue").style.display = "flex";
            document.getElementById("background").style.display = "none";
        }
        else if(r3Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_r3_peaceChosen.html";
        }
    }
    else if(actionName == "peaceChosen.html")
        {
            if(r3Buttonid == "option_1")
            {
                document.getElementById("details").style.display = "none";
                document.getElementById("input-box-container").style.display = "none";
                document.getElementById("dialogue").style.display = "flex";
                document.getElementById("background").style.display = "none";
            }
        }
    else if(actionName == "bookFinalWin.html")
        {
            if(r3Buttonid == "option_1")
            {
                document.getElementById("details").style.display = "none";
                document.getElementById("input-box-container").style.display = "none";
                document.getElementById("dialogue").style.display = "flex";
                document.getElementById("background").style.display = "none";
            }
        }
    else if(actionName == "calligraphousKillSpare.html")
    {
        if(r3Buttonid == "option_1")
        {
            document.getElementById("details").style.display = "none";
            document.getElementById("input-box-container").style.display = "none";
            document.getElementById("dialogue").style.display = "flex";
            document.getElementById("background").style.display = "none";
        }
        else if(r3Buttonid == "option_2")
        {
            window.location.href = folderPath + "library_end_epilogue.html";
        }
    }
}

