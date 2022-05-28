<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
        <style>
        
	.*{
	   margin:0;
	   padding:0;
	   box-sizing:border-box;
	   font-family:'Poppins',sans-serif;
	   }
	   .container{
	   width:100%;
	   height:100vh;
	   background:#3c5077;
	   display:flex;
	   align-items:center;
	   justify-content:center;
	   }
	   .btn{
		padding: 10px 60px; 
		background: #fff; 
		border: 0; 
		outline: none; 
		cursor: pointer; 
		font-size: 22px; 
		font-weight: 500; 
		border-radius: 30px;
		}
		.popup{
		width: 400px;
		background: #fff;
		border-radius: 6px;
		position: absolute;
		top: 0%;
		left: 50%;
		transform: translate(-50%, -50%) scale(0.1);
		text-align: center;
		padding: 0 30px 30px;
		color: #333;
		visibility: hidden;
		transition: transform 0.4s, top 0.4s;
		}
		.open-popup{
		visibility: visible;
		top: 50%;
		transform : translate(-50%,-50%) scale(1);
		}
		.popup img{
		   width:100px;
		   margin-top:-50px;
		   border-radius:50%;
		   box-shadow:02px 5px rgba(0,0,0,0.2);
		}
		.popup h1{
		    font-size:38px;
		   font-weight:500;
		   margin:30px010px;
		}
		.popup button{
		   width:100%;
		    margin-top:50px;
		    padding:10px0;
		    background:#6fd649;
		    color:#fff;
		    border:0;
		    outline:none;
		    font-size:18px;
		    border-radius:4px;
		    cursor:pointer;
		    box-shadow:02px 5px rgba(0,0,0,0.2);
		    }
	        </style>
    </head>
    <body>
        
        <div class = "container">
        
        <script>
       
        	window.addEventListener('load',function(){
        		
        	});
        	 function myFunction(){
        		swal({
        			  title: "Good job!",
        			  text: "You clicked the button!",
        			  icon: "success",
        			  button: "Aww yiss!",
        			});
        	}
        </script>
        <button type = "submit" class = "btn" onclick= "myFunction()">Click</button>
        <button type = "submit" class = "btn" onclick = "openPopup()">Submit</button>
        <div class = "popup" id = "popup">
        <img src="C:\Users\hp\Desktop\Travel\TravelSite\src\main\webapp\WEB-INF\views\tick.jpg" >
       
        <h1>Thank You</h1>
        <p>Details Successful</p>
        <button type = "button" onclick = "closePopup()">OK</button>
        </div>
         </div>
         
        <script> 
        
	        let popup = document.getElementById("popup");
	        function openPopup()
	        {
	        popup.classList.add("open-popup"); 
	        }
	        function closePopup(){
	        	popup.classList.remove("open-popup");
	        }
        </script>
    </body>
</html>
