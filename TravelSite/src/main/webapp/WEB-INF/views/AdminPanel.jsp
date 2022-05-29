<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  
  <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  background: #F8F8FB;
  font-family: 'Poppins', sans-serif;
}

.container {
  max-width: 80%;
  margin: auto;
}

.flex {
  display: flex;
}

.flex1 {
  display: flex;
  justify-content: space-between;
}

a {
  text-decoration: none;
  color: black;
}

ul {
  list-style: none;
}

/*-------------head-------------*/
.head .container {
  padding: 15px 0 10px 0;
  color: white;
}

.head {
  background: #2A3042;
}

header .logo img {
  width: 100px;
  margin-right: 30px;
  margin-top: 10px;
}

header .search {
  background: #383E4F;
  padding: 10px;
  width: 250px;
  border-radius: 50px;
  margin-right: 30px;
}

header .search i {
  opacity: 0.8;
  margin: 2px;
}

header input {
  width: 100%;
  padding: 2px;
  outline: none;
  background: none;
  border: none;
  margin-left: 10px;
}

::placeholder {
  color: white;
  opacity: 0.7;
  font-weight: 500;
  letter-spacing: 2px;
}

header .select {
  margin-top: 5px;
}

header select {
  outline: none;
  background: none;
  color: white;
  border: none;
  font-size: 15px;
  opacity: 0.8;
}

header select option {
  color: black;
}

.head .right span {
  margin-left: 30px;
  margin-top: 10px;
  opacity: 0.8;
}

.head .right .img {
  height: 30px;
  margin-top: 10px;
}

.head .admin .text {
  margin-left: 10px;
  margin-top: 8px;
  opacity: 0.8;
}

.head .admin label {
  font-size: 15px;
}

.head .admin img {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  border: 4px solid #5F6471;
  margin-left: 20px;
}

.head .admin i {
  font-size: 12px;
  margin-top: 6px;
  margin-left: 5px;
}

/*-------------head-------------*/
/*-------------menu-------------*/
.menu {
  background: white;
  color: #616778;
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
}

.menu .container {
  padding: 15px 0 15px 0;
}

.hov {
  color: #557AEB;
}

.navbar {
  display: flex;
}

nav {
  flex: 1;
}

nav ul {
  display: inline-block;
}

nav a {
  color: #616778;
  font-size: 15px;
  transition: 0.5s;
  display: flex;
}

nav h5 {
  font-weight: 500;
  font-size: 17px;
  margin: 0 10px 0 10px;
}

nav a i {
  font-size: 12px;
  margin-top: 5px;
}

nav a:hover {
  color: #557AEB;
}

nav .material-icons {
  font-size: 18px;
  margin: 0;
  padding: 0;
}

nav ul li {
  display: inline-block;
  margin-right: 50px;
  font-family: sans-serif;
}

.navbar label {
  text-align: center;
  font-size: 20px;
  width: 35px;
  height: 35px;
  line-height: 30px;
  border: 2px solid rgba(255, 255, 255, 0.4);
  display: none;
  background: black;
  border-radius: 50%;
}

header.sticky {
  z-index: 10;
  position: fixed;
  top: 0;
  width: 100%;
  background: #ffff;
  height: 10vh;
  box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.1);
  transition: 0.5s;
}

@media only screen and (max-width:768px) {
  .container {
    max-width: 90%;
    margin: auto;
  }

  .menu {
    background: none;
    box-shadow: none;
  }

  nav ul {
    position: absolute;
    top: 65px;
    left: 0;
    width: 100%;
    background: white;
    overflow: hidden;
    transition: max-height 0.5s;
    z-index: 9;
    height: 30vh;
    padding: 0 0 0 50px;
  }

  nav ul li {
    display: block;
    margin-top: 30px;
  }

  .navbar label {
    display: block;
    cursor: pointer;
  }

  .head .right span:nth-child(2),
  .head .right span:nth-child(3),
  .head .right .text,
  header .select,
  .menu a i,
  header .search {
    display: none;
  }

  header .navbar label {
    position: absolute;
    left: 25%;
    top: 22px;
  }

  header {
    position: relative;
  }

  /*
  header.sticky {
    position: relative;
  }*/
}

/*-------------header-------------*/
/*-------------home-------------*/
.home {
  margin-top: 20px;
}

.home .heading h3 {
  color: #495057;
  font-weight: 500;
  font-size: 18px;
}

.home .heading p {
  font-size: 15px;
  color: #495057;
}

.content_left {
  width: 32%;
  margin-top: 20px;
}

.content_right {
  width: 67%;
  margin-top: 20px;
}

.home .top {
  background: white;
  border-radius: 10px;
}

.home .wlecome {
  border-radius: 10px 10px 0 0;
  background: #D4DBF9;
  padding: 20px;
  position: relative;
  height: 110px;
}

.home h3 {
  font-weight: 500;
  color: #556EE6;
}

.home label {
  color: #556EE6;
  font-size: 15px;
}

.home .wlecome img {
  position: absolute;
  width: 150px;
  height: auto;
  top: 0;
  right: 0;
  transform: scale(1.2);
}

.profile {
  padding: 20px;
  position: relative;
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
}

.home .box img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  border: 5px solid white;
  position: absolute;
  top: -20%;
}

.home .box .text {
  margin-top: 70px;
}

.profile p {
  margin-top: 15px;
}

.profile label {
  color: grey;
  font-size: 14px;
  margin-top: 15px;
}

button {
  background: #556EE6;
  border: none;
  outline: none;
  color: white;
  padding: 8px 15px;
  border-radius: 5px;
}

.profile button {
  margin-top: 20px;
}

.earning {
  background: white;
  margin-top: 30px;
  border-radius: 10px;
  padding: 20px;
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
}

.earning h3 {
  color: black;
  margin-bottom: 30px;
}

.earning h2 {
  margin-top: 15px;
  font-weight: 500;
}

.earning p {
  font-size: 14px;
}

.earning span {
  color: green;
}

.earning button {
  margin: 20px 0 10px 0;
}

.earning .box {
  width: 50%;
}

/*---- -content_right-- ---*/
.content_right {
  margin-left: 30px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 30px;
}

.rbox {
  background: white;
  padding: 20px;
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
}

.content_right h4 {
  font-size: 15px;
  font-weight: 400;
}

.rbox h2 {
  font-weight: 400;
  margin-top: 10px;
}

.rbox span {
  background: #556EE6;
  color: white;
  padding: 10px;
  border-radius: 50%;
  margin-top: 15px;
}

.bar {
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
  background: white;
  margin-top: 20px;
  padding: 20px;
}

.bar h5 {
  font-size: 16px;
  font-weight: 500;
}

.bar h4 {
  margin: 5px 20px 0 20px;
}

/*---- -content_right-- ---*/
/*-------------home-------------*/
/*-------------wrapper-------------*/
.wrapper {
  margin-top: 30px;
}

.wrapper .box {
  padding: 20px;
  border-radius: 5px;
  background: white;
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
}

.wrapper h3 {
  font-weight: 500;
  font-size: 17px;
  margin-bottom: 20px;
}

.wrapper .icon {
  width: 50px;
  height: 50px;
  margin: auto;
  border-radius: 50%;
  text-align: center;
  background: #D4DBF9;
}

.wrapper .icon img {
  width: 30px;
  margin-top: 10px;
}

.wrapper .text {
  text-align: center;
  margin-top: 20px;
  margin-bottom: 30px;
}

.wrapper h4 {
  font-weight: 500;
}

.wrapper h4 span {
  color: grey;
}

.wrapper p {
  font-size: 14px;
  color: grey;
  margin-bottom: 5px;
}

.wrapper a {
  font-size: 14px;
}

.wrapper a i {
  font-size: 14px;
}

.wrapper .sicon {
  text-align: center;
}

.wrapper .sicon i {
  width: 40px;
  height: 40px;
  text-align: center;
  line-height: 40px;
  border-radius: 50%;
  background: #556EE6;
  color: white;
}

.wrapper .sicon h4 {
  margin-top: 10px;
}

.wrapper .sicon span {
  font-size: 14px;
  color: grey;
}

.wrapper .sicon:nth-child(2) i {
  background: #50A5F1;
}

.wrapper .sicon:nth-child(3) i {
  background: #E83E8C;
}

.wrapper .abox {
  margin-top: 30px;
}

.wrapper .abox i {
  width: 10%;
  margin-top: 5px;
}

.wrapper .abox label {
  width: 20%;
}

.wrapper .abox span {
  width: 10%;
  margin-top: 5px;
  color: #50A5F1;
}

.wrapper .abox p {
  width: 60%;
}

.wrapper .location h3 {
  text-align: left;
}

.wrapper .text {
  text-align: center;
}

.wrapper h2 {
  font-weight: 500;
}

hashtag{
 text-align: left;
}

/*-------------wrapper-------------*/
/*-------------table-------------*/
.table .container {
  padding: 20px;
  background: white;
  margin-top: 30px;
  box-shadow: 0 0.75rem 1.5rem rgb(18 38 63 / 3%);
}

.table h3 {
  font-weight: 500;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

th {
  text-align: left;
  background: #EFF2F7;
  font-weight: 400;
  padding: 15px 5px 15px 5px;
}

td {
  font-size: 14px;
  text-align: left;
  padding: 10px 5px 10px 5px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
}

td:nth-last-child(1) {
  border-bottom: none;
}

.table span {
  font-size: 12px;
  padding: 5px;
  border-radius: 5px;
}

.table button {
  border-radius: 50px;
}

.table .green {
  background: #DAF4EB;
  color: #34C398;
}

.table .red {
  background: #FDE4E4;
  color: #F46C71;
}

.table .yellow {
  background: #FCF1DF;
  color: #F1B44C;
}

.pagination {
  margin-top: 30px;
  text-align: center;
}

.pagination ul {
  display: inline-block;
}

.pagination ul li {
  display: inline-block;
  margin-right: 30px;
}

.pagination .active {
  width: 40px;
  height: 40px;
  background: #556EE6;
  border-radius: 50%;
  line-height: 40px;
  text-align: center;
  color: white;
}

/*-------------table-------------*/
/*-------------footer-------------*/
footer {
  padding: 30px 0 30px 0;
}

/*-------------footer-------------*/
@media only screen and (max-width:768px) {
  .home .content {
    flex-direction: column;
  }

  .content_right,
  .content_left {
    width: 100%;
    margin-left: 0;
  }

  .wrapper .grid {
    grid-template-columns: repeat(1, 1fr);
  }

  .wrapper button {
    margin-top: 20px;
  }
}
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
form1 {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  padding: 0rem 5rem;
  transition: all 0.2s 0.7s;
  overflow: hidden;
  grid-column: 1 / 2;
  grid-row: 1 / 2;
}

form1.sign-up-form1 {
  opacity: 0;
  z-index: 1;
}
.input-field1 {
  max-width: 380px;
  width: 100%;
  background-color: #f0f0f0;
  margin: 10px 0;
  height: 55px;
  border-radius: 55px;
  display: grid;
  grid-template-columns: 15% 85%;
  padding: 0 0.4rem;
  position: relative;
}

.input-field1 i {
  text-align: center;
  line-height: 55px;
  color: #acacac;
  transition: 0.5s;
  font-size: 1.1rem;
}

.input-field1 input {
  background: none;
  outline: none;
  border: none;
  line-height: 1;
  font-weight: 600;
  font-size: 1.1rem;
  color: #333;
}

.input-field1 input::placeholder {
  color: #aaa;
  font-weight: 500;
}
.btn1 {
  width: 150px;
  background-color: #5995fd;
  border: none;
  outline: none;
  height: 49px;
  border-radius: 49px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 600;
  margin: 10px 0;
  cursor: pointer;
  transition: 0.5s;
}

.btn1:hover {
  background-color: #4d84e2;
}
/* table css */
body {
        color: #566787;
		background: #f5f5f5;
		font-family: 'Varela Round', sans-serif;
		font-size: 13px;
	}
    .table-responsive {
        margin: 30px 0;
    }
	.table-wrapper {
        min-width: 1000px;
        background: #fff;
        padding: 20px 25px;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {
		padding-bottom: 15px;
		background: #299be4;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn {
		color: #566787;
		float: right;
		font-size: 13px;
		background: #fff;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn:hover, .table-title .btn:focus {
        color: #566787;
		background: #f2f2f2;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 100px;
	}
	table.table tr th:last-child {
		width: 100px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.settings {
        color: #2196F3;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
	.status {
		font-size: 30px;
		margin: 2px 2px 0 0;
		display: inline-block;
		vertical-align: middle;
		line-height: 10px;
	}
    .text-success {
        color: #10c469;
    }
    .text-info {
        color: #62c9e8;
    }
    .text-warning {
        color: #FFC107;
    }
    .text-danger {
        color: #ff5b5b;
    }
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }
</style>
</head>

<body>
  <header>
    <section class="head">
      <div class="container flex1">
        <div class="left flex1">
          <div class="logo">
            <img src="img/logo.png" alt="">
          </div>

          <div class="search flex">
            <i class="fas fa-search"></i>
            <input type="text" name="" value="" placeholder="Search...">
          </div>

          <div class="select">
            <select>
              <option>Mega Menu</option>
              <option>Mega Menu</option>
            </select>
          </div>
        </div>

        <div class="right flex ">
          <div class="img">
            <img src="https://img.icons8.com/color/24/000000/india.png" />
          </div>

          <span class="material-icons">
            grid_view
          </span>

          <span class="material-icons">
            crop_free
          </span>

          <span class="material-icons">
            notifications
          </span>

          <div class="admin flex">
            <img src="resources/admin.png" alt="">
            <div class="text flex">
              <label>Admin</label>
              <i class="fas fa-chevron-down"></i>
            </div>
          </div>

          <span class="material-icons">
            settings
          </span>
        </div>
      </div>
    </section>
    <form:form action="#" method="post" modelAttribute="travel">
    <div class="container">
      <div class="table-responsive">
          <div class="table-wrapper">
              <div class="table-title">
                  <div class="row">
                      <div class="col-xs-5">
                          <h2>Hotel <b>Management</b></h2>
                      </div>
                      <div class="col-xs-7">
                          <a href="form" class="btn btn-primary"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                          <a href="form" class="btn btn-primary"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>						
                      </div>
                  </div>
              </div>
              <table class="table table-striped table-hover">
                  <thead>
                      <tr>
                          
                          <th>Hotel Id</th>						
                          <th>Hotel Name</th>
                          <th>Hotel Destination</th>
                          <th>Hotel Date</th>
                          <th>Hotel Price</th>
                          <th>Hotel Contact</th>
                          <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="travel" items="${travel}">
                      <tr>
                        <td>${travel.hotelid }</td>
                              <td>${travel.hotelname }</td>
                              <td>${travel.hotelDestination }</td>
                              <td>${travel.hotelDate }</td>
                              <td>${travel.hotelPrice }</td>
                              <td>${travel.hotelContact }</td>
                             
                              
                        
                          <td>
                              <a href="updateForm?HotelId=${travel.hotelid}" class="settings" title="Settings" data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
                              <a href="deleteRecord?HotelId=${travel.hotelid}" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE5C9;</i></a>
                          </td>
                      </tr>
                    </c:forEach>
                  </tbody>
              </table>
             </div>      </div>        
  </div>  
             </form:form>
   
    
  </header>

  
</body>

</html>