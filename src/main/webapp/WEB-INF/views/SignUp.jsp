<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>



 <style type="text/css">
 
 
   	body {
      background-color: black;
    }
    
    body > .grid {
      height: 100%;
    }
    .image {
      margin-top: -100px;
    }
    .column {
      max-width: 450px;
    }
    
    label {
    	
 	 	display: inline-block;
  		width: 140px;
  		text-align: left;
  		color:white!important;
	}​
  </style>
  
</head>
<body>

	<div class="ui container">
      <div class="ui large secondary inverted pointing menu">
      
        <a class="item" href="Home">Home</a>
        <a class="item">Tags</a>
        <a class="item">Publications</a>
        
        <div class="right item">
          <a class="ui inverted button" href="SignIn">SignIn</a>
          <a class="ui inverted button" href="SignUp">SignUp</a>
        </div>
      </div>
    </div>

<div class="ui middle aligned center aligned grid">
  <div class="column">

		<form class="ui form">
		
				  <div class="field">
				    <label>First Name</label>
				    <input type="text" name="first-name" >
				  </div>
				  
				  <div class="field">
				    <label>Last Name</label>
				    <input type="text" name="last-name" >
				  </div>
				  
				  <div class="field">
				    <label>UserName</label>
				    <input type="text" name="user-name" >
				  </div>
				  
				  <div class="field">
				    <label>Email</label>
				    <input type="text" name="email" >
				  </div>
				  
				  <div class="field">
				    <label >Password</label>
				    <input type="text" name="password" >
				  </div>
				  
				  <div class="field">
				    <label>Confirm Password</label>
				    <input type="text" name="confirm-password" >
				  </div>
				  
		  <div class="field" >
		  
		    <div class="ui  checkbox"  >
		    
		    	
		      <input type="checkbox" tabindex="0" class="hidden">
		      <label style="width:100%">I agree to the Terms and Conditions</label>
		    </div>
		    
		  
		  </div>
		  <button class="ui teal button" type="submit">Submit</button>
		    
		  
		</form>

</div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</body>
</html>