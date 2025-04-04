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
    }, 500);
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
                // Define regex patterns
                const usernameRegex = /^[a-zA-Z0-9_]{3,20}$/;  // Allows alphanumeric and underscores, 3-20 characters
                const passwordRegex = /^[A-Za-z\d!@#$%^&*]{6,}$/;  // At least 6 characters, allows letters, numbers, and special characters

                // Validate inputs
                if (!usernameRegex.test(username)) {
                    messageElement.textContent = "Invalid username. Use 3-20 letters, numbers, or underscores.";
                    return;
                }

                if (!passwordRegex.test(password)) {
                    messageElement.textContent = "Invalid password. Must be at least 6 characters with letters or numbers.";
                    return;
                }

                // Proceed with database queries
                let selectQuery = `SELECT * FROM users WHERE username = '${username}'`;
                let checkResult = await makeDatabaseQuery(selectQuery);

                if (checkResult && checkResult.length > 0) {
                    messageElement.textContent = "Username already exists.";
                    return;
                }

                const insertQuery = `INSERT INTO users (username, pass) VALUES ('${username}', '${password}')`;
                const insertResult = await makeDatabaseQuery(insertQuery);

                const insertDefaultSettings = `INSERT INTO settings (username, doTextAnimations, textAnimationSpeed, soundEffects, musicVolume, textSize) VALUES ('${username}', TRUE, 30, TRUE, 30, 'Medium')`;
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
    }, 500);
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