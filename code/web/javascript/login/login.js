sessionStorage.clear();

document.getElementById("loginForm").addEventListener("submit", async function (event) {
    event.preventDefault();
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
        //Checks the database to see if a matching username and password can be found.
    let sqlQuery =
    `SELECT userId, username FROM users
    WHERE username = '${username}' AND pw = '${password}'`;
    dbConfig.set('query', sqlQuery);

    console.log(username, password);

    try {
            let response = await fetch(dbConnectorUrl, {
            method: "POST",
            body: dbConfig
            });
            let result = await response.json();

            console.log(result);

            if (result.success && result.data.length > 0) {
                let user = result.data[0];
                console.log(user);
                sessionStorage.setItem("userId", user.userId);
                sessionStorage.setItem("username", user.username);
                window.location.href = "../../index.html";
                } 
            else {
                document.getElementById("loginMessage").textContent = "Invalid username or password.";
                }
        } 
    catch (error) {
        console.error("Error completing login:", error);
        }

    
    });

document.getElementById("registerForm").addEventListener("submit",
    async function (event) {
    event.preventDefault();
    let username = document.getElementById("regUsername").value;
    let password = document.getElementById("regPassword").value;
    let confirmPassword = document.getElementById("confirmPassword").value;
    //Client-side check to see if the two entered passwords match.
    if (password !== confirmPassword) {
    document.getElementById("registerMessage").textContent = "Passwords do not match.";
    return;
    }

    //This query will check to see if the username already exists in the database.
    let selectQuery = `SELECT userId FROM users WHERE username = '${username}'`;
    dbConfig.set('query', selectQuery);
    try {
    let checkResponse = await fetch(dbConnectorUrl, {
    method: "POST",
    body: dbConfig
    });
    let checkResult = await checkResponse.json();
    //If the username already exists in the database, an error is displayed.
    if (checkResult.success && checkResult.data.length > 0) {
    document.getElementById("registerMessage").textContent =
    "Username already exists.";
    return;
    }
    } catch (error) {
    console.error("Error checking for existing accounts:", error);
    }

    //This query adds the new user credentials to the database.
    let insertQuery = `INSERT INTO users (username, pw)
    VALUES ('${username}', '${password}')`;
    dbConfig.set('query', insertQuery);
    try {
    let insertResponse = await fetch(dbConnectorUrl, {
    method: "POST",
    body: dbConfig
    });
    let insertResult = await insertResponse.json();
    if (insertResult.success) {
    document.getElementById("registerMessage").textContent = "Registration successful!";
    document.getElementById("registerForm").reset();
    } else {
    document.getElementById("registerMessage").textContent = "Error registering user.";
    }
    } catch (error) {
    console.error("Error registering user:", error);
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
