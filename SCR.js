let login = document.getElementById('login');
let signup = document.getElementById('signup');
let shade = document.getElementById('switch');

login.addEventListener('click', function(){
    shade.classList.remove('toRight');
    shade.classList.add('toLeft');
});

signup.addEventListener('click', function(){
    shade.classList.remove('toLeft');
    shade.classList.add('toRight');
});



function validateform()
{
    var firstName=document.getElementById("firstName").value;
    var lastName=document.getElementById("lastName").value;
    var phoneno=document.getElementById("phoneno").value;

    if(firstName==="")
    {
        alert("please enter your firstName");
        return false;
    }
    if(lastName==="")
    {
        alert("please enter your LastName");
        return false;
    }
    
    if(firstName.length>15)
    {
        alert("Invalid firstName . Maximum 15 characters allowed");
        return false;
    }
    
    if(lastName.length>15)
    {
        alert("Invalid LastName . Maximum 15 characters allowed");
        return false;
    }
    
    var regex=/^[a-zA-Z]+$/;
   
    if(!regex.test(firstName))
    {
        alert("Invalid firstName.Only Alphabetic characters are allowed.");
        return false;
    }
    
     if(!regex.test(lastName))
    {
        alert("Invalid lastName.Only Alphabetic characters are allowed.");
        return false;
    }
    if(phoneno==="")
    {
         alert("Mobile no is required. Please provide Contact no");
         return false;
    }
    if(phoneno.length!==10)
    {
        alert("Invalid Mobile no ");
        return false;
    }

    var email = document.getElementById("email").value;
      
      // Check if the email is empty
      if (email === "") {
        alert("Please Fill your email address.");
        return false;
      }
      
      // Check if the email format is valid
      var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!regex.test(email)) {
        alert("Invalid email address. Please enter a valid email.");
        return false;
      }

      var dob = document.getElementById("dob").value;
      
      // Check if the date of birth is empty
      if (dob === "") {
        alert("Please Fill your date of birth.");
        return false;
      }

      
      // Create a Date object from the input
      var dobDate = new Date(dob);
      var currentDate=new Date();
            // Check if the input is a valid date
      if (isNaN(dobDate.getTime())) {
        alert("Invalid date of birth. Please enter a valid date.");
        return false;
      }
      
      // Check if the person is at least 18 years old
      var eighteenYearsAgo = new Date(currentDate.getdate(),currentDate.getMonth(),currentDate.getFullYear()-18);
      var fortySevenYearsAgo = new Date(currentDate.getdate(),currentDate.getMonth(),currentDate.getFullYear()-47);
      
      
      if (dobDate >=eighteenYearsAgo && dobDate<=fortySevenYearsAgo) {
        alert("You must be at least 18 years old and not more than 47 years old to proceed.");
        return false;
      }

      var bloodGroup = document.getElementById("bloodGroup").value;
      
      // Check if the blood group is empty
      if (bloodGroup === "") {
        alert("Please enter your blood group.");
        return false;
      }
      
      // Check if the blood group matches the pattern
      var bloodGroupPattern = /^(A|B|AB|O)[+-]$/;
      if (!bloodGroupPattern.test(bloodGroup)) 
      {
        alert("Invalid blood group. Please enter a valid blood group (e.g., A+, B-, AB+, O-).");
        return false;
      }

      var emergencycname=document.getElementById("emergencycname");
      if(emergencycname==="")
      {
        alert("please fill any one Emergency Contact Name");
      }

      var emergencycno=document.getElementById("emergencycno");
      if(emergencycno==="")
       {
         alert("Emergency Contact no is required. Please provide Contact no");
         return false;
       }
       if(emergencycno.length!==10)
       {
        alert("Invalid Contact no ");
        return false;
       }

    var address=document.getElementById("address");
    if(address==="")
    {
        alert("Please fill Your residential Address");
        return false;
    }

    var password = document.getElementById("password").value;
    if(password==="")
    {
        alert("Please Create Password for further Process");
        return false;
    }

    var passwordPattern = /^(?=.[a-z])(?=.[A-Z])(?=.\d)(?=.[@$!%?&])[A-Za-z\d@$!%?&]{8,}$/;
    if(!passwordPattern.test(password))
    {
        alert("Please provide Strong Password");
        return false;
    }

     var repeatPassword = document.getElementById("repeatPassword").value;
     
      if (password!==repeatPassword) 
        { 
            alert("Password Doesnt Match");
            return false;

        }
       
      return true;
    
}
validateform();
