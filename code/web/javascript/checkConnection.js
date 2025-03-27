let serverReachable = false;
let errorEncountered = false;

let testConnection = async function(){
    const response = await ping();
    if (response) {
        serverReachable = true;
        errorEncountered = false;
    } else {
        serverReachable = false;
        if(!errorEncountered){
            errorEncountered = true;
            alert("Error - Server is Unreachable. Please try again later.");
        }
       
    }
    // console.log(errorEncountered);
    // console.log(serverReachable);
    // console.log("next test in 1 second");
    setTimeout(testConnection, 1000);
}

testConnection();