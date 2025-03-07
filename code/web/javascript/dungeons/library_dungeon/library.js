let fullPath = window.location.pathname;
let folderPath = fullPath.substring(0, fullPath.lastIndexOf('/') + 1);
let pageName = fullPath.split('/').pop();
let baseName = pageName.substring(0, pageName.lastIndexOf('_') + 1);
let actionName = pageName.substring(pageName.lastIndexOf('_') + 1);

console.log(fullPath);
console.log(actionName);

document.addEventListener('DOMContentLoaded', function() {
    const buttons = document.querySelectorAll('.button_option');

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
            console.log(1);
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
            window.location.href = "/C:/Users/joshu/csc1034_group54/code/web/html/generic/death.html";
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
            window.location.href = "/C:/Users/joshu/csc1034_group54/code/web/html/generic/death.html";
        }
        else if(r1Buttonid == "option_3")
        {
            window.location.href = "/C:/Users/joshu/csc1034_group54/code/web/html/generic/death.html";
        }
    }
    else if(actionName == "book1Win.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r1_nextRoom.html";
        }
    }
    else if(actionName == "library_r1_nextRoom.html")
    {
        if(r1Buttonid == "option_1")
        {
            window.location.href = folderPath + "library_r2_enter.html";
        }
    }
}