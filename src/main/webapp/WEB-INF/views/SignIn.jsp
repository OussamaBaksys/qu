<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sign In </title>
		
		
	
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
	  </style>
	  
	  
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	  
	   <script>
	  $(document)
	    .ready(function() {
	    	
	    	
	      $('.ui.form')
	        .form({
	          fields: {
	            email: {
	              identifier  : 'email',
	              rules: [
	                {
	                  type   : 'empty',
	                  prompt : 'Please enter your e-mail'
	                },
	                {
	                  type   : 'email',
	                  prompt : 'Please enter a valid e-mail'
	                }
	              ]
	            },
	            password: {
	              identifier  : 'password',
	              rules: [
	                {
	                  type   : 'empty',
	                  prompt : 'Please enter your password'
	                },
	                {
	                  type   : 'length[6]',
	                  prompt : 'Your password must be at least 6 characters'
	                }
	              ]
	            }
	          }
	        })
	      ;
	    })
	  ;
	  </script>
	  
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
    
    <form class="ui large form">
      <div class="ui stacked segment">
        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input type="text" name="email" placeholder="E-mail address">
          </div>
        </div>
        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="password" placeholder="Password">
          </div>
        </div>
        <div class="ui fluid large teal submit button">Login</div>
      </div>

      <div class="ui error message"></div>

    </form>

    <div class="ui message">
      New to us? <a href="SignUp">Sign Up</a>
    </div>
  </div>
</div>

	
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</body>
</html>