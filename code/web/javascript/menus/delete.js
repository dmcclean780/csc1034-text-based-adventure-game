document.getElementById("deleteForm").addEventListener("submit", async (event) => {     
    event.preventDefault();     
    setTimeout(async () => {         
        if (serverReachable) {     
            
            let found = false;
            let username = document.getElementById("username").value;             
            let password = document.getElementById("password").value;             
            let messageElement = document.getElementById("deleteMessage");                      

            if (username == sessionStorage.getItem("username")) 
            {                 
                try {                     
                    // Check if username and password match in the database                     
                    let sqlQuery = `DELETE FROM users WHERE username = '${username}' AND pass = '${password}'`;                     
                    let result = await makeDatabaseQuery(sqlQuery);                          

                    if (result == true) 
                    {                            
                        sessionStorage.clear();                             
                        window.location.href = "login.html";                     
                    } 
                    else 
                    {                         
                        messageElement.textContent = "Unable to delete user";                     
                    }                 
                } 
                catch (error) {                     
                    console.error("Error completing delete:", error);                     
                    messageElement.textContent = "An error occurred. Please try again.";                 
                }             
            } 
            else {                 
                messageElement.textContent = "That is not your Username or Password";             
            }         
        } else {             
            alert("Error - Server is Unreachable. Please try again later.");         
        }     
    }, 250);
}); 

// Toggle password visibility for login form
document.getElementById('toggle-password').addEventListener('click', () => {
    var passwordInput = document.getElementById('password');
    var button = document.getElementById('toggle-password');

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        button.textContent = "Hide";
    } else {
        passwordInput.type = "password";
        button.textContent = "Show";
    }
});