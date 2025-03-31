document.getElementById("editForm").addEventListener("submit", async (event) => {     
    event.preventDefault();     
    setTimeout(async () => {         
        if (serverReachable) {     
            
            let oldUsername = sessionStorage.getItem("username");
            let newUsername = document.getElementById("username").value;             
            let password = document.getElementById("password").value;             
            let messageElement = document.getElementById("editMessage");                      

            try {
                
                // Define regex patterns
                const usernameRegex = /^[a-zA-Z0-9_]{3,20}$/;  // Allows alphanumeric and underscores, 3-20 characters
                const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d!@#$%^&*]{6,255}$/;  // At least 6 chars, one letter, one number

                // Validate inputs
                if (!usernameRegex.test(newUsername)) {
                    messageElement.textContent = "Invalid username. Use 3-20 letters, numbers, or underscores.";
                    return;
                }

                if (!passwordRegex.test(password)) {
                    messageElement.textContent = "Invalid password. Must be at least 6 characters with letters and numbers.";
                    return;
                }

                // Proceed with database queries
                let selectQuery = `SELECT * FROM users WHERE username = '${username}'`;
                let checkResult = await makeDatabaseQuery(selectQuery);
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