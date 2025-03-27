document.addEventListener("DOMContentLoaded", () => {
    console.log(sessionStorage.getItem("username"));
    if (sessionStorage.getItem("username")) {
        window.location.href = pathToRoot + "index.html";
    }
});

document.getElementById("loginForm").addEventListener("submit", async (event) => {
    event.preventDefault();
    setTimeout(async () => {
        if (serverReachable) {

            let username = document.getElementById("username").value;
            let password = document.getElementById("password").value;
            let messageElement = document.getElementById("loginMessage");
            try {
                // Check if username and password match in the database
                let sqlQuery = `SELECT username, pass FROM users WHERE username = '${username}' AND pass = '${password}'`;
                let result = await makeDatabaseQuery(sqlQuery);

                if (result && result.length > 0) {
                    username = result[0].username;
                    sessionStorage.setItem("username", username);

                    window.location.href = pathToRoot + "index.html";
                } else {
                    messageElement.textContent = "Invalid username or password.";
                }
            }
            catch (error) {
                console.error("Error completing login:", error);
                messageElement.textContent = "An error occurred. Please try again.";
            }
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 250);
});


document.getElementById("registerForm").addEventListener("submit", async (event) => {
    event.preventDefault();
    setTimeout(async () => {
        if (serverReachable) {

            let username = document.getElementById("regUsername").value.trim();
            let password = document.getElementById("regPassword").value;
            let confirmPassword = document.getElementById("confirmPassword").value;
            let messageElement = document.getElementById("registerMessage");

            // Check if passwords match
            if (password !== confirmPassword) {
                messageElement.textContent = "Passwords do not match.";
                return;
            }

            try {
                // Check if the username already exists in the database
                let selectQuery = `SELECT * FROM users WHERE username = '${username}'`;
                let checkResult = await makeDatabaseQuery(selectQuery);

                if (checkResult && checkResult.length > 0) {
                    messageElement.textContent = "Username already exists.";
                    return;
                }

                // Insert the new user into the database
                const insertQuery = `INSERT INTO users (username, pass) VALUES ('${username}', '${password}')`;
                const insertResult = await makeDatabaseQuery(insertQuery);

                const insertDefaultSettings = `INSERT INTO settings (username, doTextAnimations, textAnimationSpeed) VALUES ('${username}', TRUE, 30)`;
                const insertSettingsResult = await makeDatabaseQuery(insertDefaultSettings);

                if (insertResult > 0) {
                    messageElement.textContent = "Registration successful!";
                    document.getElementById("registerForm").reset();
                    sessionStorage.setItem("username", username);
                    window.location.href = pathToRoot + "index.html";
                } else {
                    messageElement.textContent = "Error registering user.";
                }

            } catch (error) {
                console.error("Registration error:", error);
                messageElement.textContent = "An error occurred. Please try again.";
            }
        } else {
            alert("Error - Server is Unreachable. Please try again later.");
        }
    }, 250);
});


function toggleForms() {
    document.getElementById("loginContainer").classList.toggle("hidden");
    document.getElementById("registerContainer").classList.toggle("hidden");
}

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

// Toggle password visibility for registration form
document.getElementById('toggle-reg-password').addEventListener('click', () => {
    var passwordInput = document.getElementById('regPassword');
    var button = document.getElementById('toggle-reg-password');

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        button.textContent = "Hide";
    } else {
        passwordInput.type = "password";
        button.textContent = "Show";
    }
});

// Toggle password visibility for confirm password field
document.getElementById('toggle-confirm-password').addEventListener('click', () => {
    var confirmPasswordInput = document.getElementById('confirmPassword');
    var button = document.getElementById('toggle-confirm-password');

    if (confirmPasswordInput.type === "password") {
        confirmPasswordInput.type = "text";
        button.textContent = "Hide";
    } else {
        confirmPasswordInput.type = "password";
        button.textContent = "Show";
    }
});