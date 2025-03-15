sessionStorage.clear();

document.getElementById("loginForm").addEventListener("submit", async function (event) {
    event.preventDefault();

    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    let messageElement = document.getElementById("loginMessage");

    console.log(username, password);

    try {
        // Check if username and password match in the database
        let sqlQuery = `SELECT username, pass FROM users WHERE username = '${username}' AND pass = '${password}'`;
        let result = await makeDatabaseQuery(sqlQuery);

        console.log("Full result object:", result);

        if (result && result.length > 0) {
            let user = result[0];
            console.log(user);
            sessionStorage.setItem("username", user.username);
            sessionStorage.setItem("password", user.pass);
            window.location.href = "../../index.html";
        } else {
            messageElement.textContent = "Invalid username or password.";
        }
    } 
    catch (error) {
        console.error("Error completing login:", error);
        messageElement.textContent = "An error occurred. Please try again.";
    }
});


document.getElementById("registerForm").addEventListener("submit", async function (event) {
    event.preventDefault();

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
        let insertQuery = `INSERT INTO users (username, pass) VALUES ('${username}', '${password}')`;
        let insertResult = await makeDatabaseQuery(insertQuery);


        if (insertResult > 0) {
            messageElement.textContent = "Registration successful!";
            document.getElementById("registerForm").reset();
        } else 
        {
            messageElement.textContent = "Error registering user.";
        }

    } catch (error) {
        console.error("Registration error:", error);
        messageElement.textContent = "An error occurred. Please try again.";
    }
});
    

function toggleForms() {
    document.getElementById("loginContainer").classList.toggle("hidden");
    document.getElementById("registerContainer").classList.toggle("hidden");
    }

// Toggle password visibility for login form
document.getElementById('toggle-password').addEventListener('click', function () {
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
document.getElementById('toggle-reg-password').addEventListener('click', function () {
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
document.getElementById('toggle-confirm-password').addEventListener('click', function () {
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