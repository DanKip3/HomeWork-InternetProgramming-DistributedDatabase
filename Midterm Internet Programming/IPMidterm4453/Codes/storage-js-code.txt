function reserve()
{
    if(!document.getElementById("defaultCheck1").checked){
        alert("Must validate before answer");
      }
    else{
    var surname = document.getElementById("surname").value;
    localStorage.setItem("surname",surname);
    var name = document.getElementById("name").value;
    localStorage.setItem("name",name);
    var studentID = document.getElementById("studentID").value;
    localStorage.setItem("studentID",studentID);
    var email = document.getElementById("email").value;
    localStorage.setItem("email",email);
    } 
}

