document.getElementById("editForm").addEventListener("submit", async (event) => {     
    event.preventDefault();     
    setTimeout(async () => {         
        if (serverReachable) {     
            
            let oldUsername = sessionStorage.getItem("username");
            let newUsername = document.getElementById("username").value;             
            let password = document.getElementById("password").value;             
            let messageElement = document.getElementById("editMessage");                      

            try {                     
                // Check if username and password match in the database                     
                let sqlQuery = `UPDATE users SET username = '${newUsername}', pass = '${password}' WHERE username = '${oldUsername}';`;                     
                let result = await makeDatabaseQuery(sqlQuery);                          

                console.log(result);
                
                if (result) 
                {                            
                    //change sessionstorage and move back to index
                    sessionStorage.setItem("username", newUsername);
                    window.location.href = "../../index.html";                     
                } 
                else 
                {                         
                    messageElement.textContent = "Unable to edit user";                     
                }                 
            } 
            catch (error) {                     
                console.error("Error completing edit:", error);                     
                messageElement.textContent = "An error occurred. Please try again.";                 
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