<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Home</title>
		
				
				<style type="text/css">
			
			    .hidden.menu {
			      display: none;
			    }
			
			    .masthead.segment {
			      min-height: 700px;
			      padding: 1em 0em;
			    }
			    .masthead .logo.item img {
			      margin-right: 1em;
			    }
			    .masthead .ui.menu .ui.button {
			      margin-left: 0.5em;
			    }
			    .masthead h1.ui.header {
			      margin-top: 3em;
			      margin-bottom: 0em;
			      font-size: 4em;
			      font-weight: normal;
			    }
			    .masthead h2 {
			      font-size: 1.7em;
			      font-weight: normal;
			    }
			
			    .ui.vertical.stripe {
			      padding: 8em 0em;
			    }
			    .ui.vertical.stripe h3 {
			      font-size: 2em;
			    }
			    .ui.vertical.stripe .button + h3,
			    .ui.vertical.stripe p + h3 {
			      margin-top: 3em;
			    }
			    .ui.vertical.stripe .floated.image {
			      clear: both;
			    }
			    .ui.vertical.stripe p {
			      font-size: 1.33em;
			    }
			    .ui.vertical.stripe .horizontal.divider {
			      margin: 3em 0em;
			    }
			
			    .quote.stripe.segment {
			      padding: 0em;
			    }
			    .quote.stripe.segment .grid .column {
			      padding-top: 5em;
			      padding-bottom: 5em;
			    }
			
			    .footer.segment {
			      padding: 5em 0em;
			    }
			
			    .secondary.pointing.menu .toc.item {
			      display: none;
			    }
			
			    @media only screen and (max-width: 700px) {
			      .ui.fixed.menu {
			        display: none !important;
			      }
			      .secondary.pointing.menu .item,
			      .secondary.pointing.menu .menu {
			        display: none;
			      }
			      .secondary.pointing.menu .toc.item {
			        display: block;
			      }
			      .masthead.segment {
			        min-height: 350px;
			      }
			      .masthead h1.ui.header {
			        font-size: 2em;
			        margin-top: 1.5em;
			      }
			      .masthead h2 {
			        margin-top: 0.5em;
			        font-size: 1.5em;
			      }
			    }
			
			
			  </style>
			
			  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			  <script>
			  $(document)
			    .ready(function() {
			
			      // fix menu when passed
			      $('.masthead')
			        .visibility({
			          once: false,
			          onBottomPassed: function() {
			            $('.fixed.menu').transition('fade in');
			          },
			          onBottomPassedReverse: function() {
			            $('.fixed.menu').transition('fade out');
			          }
			        })
			      ;
			
			      
			
			    })
			  ;
			  </script>
		
	</head>
<body>


<!-- Page Contents -->

<div class="pusher">
  <div class="ui inverted vertical masthead center aligned segment">

    <div class="ui container">
      <div class="ui large secondary inverted pointing menu">
        <a class="toc item">
          <i class="sidebar icon"></i>
        </a>
        <a class="item">Home</a>
        <a class="item">Tags</a>
        <a class="item">Publications</a>
        
        <div class="right item">
          <a class="ui inverted button" href="SignIn">SignIn</a>
          <a class="ui inverted button" href="SignUp">SignUp</a>
        </div>
      </div>
    </div>

    <div class="ui text container">
      <h1 class="ui inverted header">
        Questify
      </h1>
      <h2>Where you Find the answer</h2>
      	
      		<div class="ui fluid icon input">
  				<input type="text" placeholder="Search ...">
 				 <i class="search icon"></i>
			</div>
    </div>

  </div>

  


  <div class="ui vertical stripe quote segment">
    <div class="ui equal width stackable internally celled grid">
      <div class="center aligned row">
      
        <div class="column">
          <h3>"The art and science of asking questions is the source of all knowledge."</h3>
          <p>Thomas Berger</p>
        </div>
        
        <div class="column">
          <h3>"Going online and asking questions is the best way to learn."</h3>
          <p> Tom Felton</p>
        </div>
      </div>
    </div>
  </div>

  

  <div class="ui inverted vertical footer segment">
    <div class="ui container">
      <div class="ui stackable inverted divided equal height stackable grid">
      
      
        <div class="three wide column">
          <h4 class="ui inverted header">About</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Developers</a>
            <a href="#" class="item">Contact Us</a>
          </div>
        </div>
        
       
        
      </div>
    </div>
  </div>
  
  
</div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
</body>
</html>