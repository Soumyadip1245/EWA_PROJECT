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
            <img src="img/admin.png" alt="">
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

    
  </header>

  <script>
    var menuitem = document.getElementById("menuitem");
    menuitem.style.maxHeight = "0px";

    function menutoggle() {
      if (menuitem.style.maxHeight == '0px') {
        menuitem.style.maxHeight = "30vh"
      } else {
        menuitem.style.maxHeight = "0px"
      }
    }

    window.addEventListener("scroll", function() {
      var header = document.querySelector("header");
      header.classList.toggle("sticky", window.scrollY > 50);
    })
  </script>

  <section class="home">
    <div class="container">
      <div class="heading flex1">
        <h3>DASHBOARD</h3>
        <p>Dashboard / Dashboard</p>
      </div>


      <div class="content flex">
        <div class="content_left">
          <div class="top">
            <div class="wlecome flex1">
              <div class="text">
                <h3>Welcome Back !</h3>
                <label>Admin Dashboard</label>
              </div>
              <div class="img">
                <img src="img/img2.png" alt="">
              </div>
            </div>

            <div class="profile flex1">
              <div class="box">
                <div class="img">
                  <img src="img/admin.png" alt="">
                </div>
                <div class="text">
                  <p>Admin</p>
                  <label>Travel Management</label>
                </div>
              </div>

              <div class="box">
                <p>125</p>
                <label>Project</label> <br>
                <button type="submit" onclick="document.getElementById('id01').style.display='block'" >
                  Manage <i class="fas fa-cog fa-fw" ></i>
                </button>
                <div id="id01" class="modal">
                    
                    <form:form action="list" method="post" modelAttribute="travel">
                        <button type = "submit" style = "margin-left : 1150px" >New Flight</button>
                      <table>
                          <thead>
                            <tr>
                              
                              <th>Hotel Id</th>
                              <th>Hotel Name</th>
                              <th>Hotel Destination</th>
                              <th>Hotel Date</th>
                              <th>Action</th>
                              </tr>
                          </thead>
                  
                          <tbody>
                            <tr>
                              
                              <c:forEach var="travel" items="${travel}">
								<%-- ${student} <br> --%>
                              <td>${travel.Hotelid }</td>
                              <td>${travel.Hotelname }</td>
                              <td>${travel.HotelDestination }</td>
                              <td>${travel.HotelDate }</td>
                              
                              <td> <button style = "height: 28px">Delete</button> <button type="submit" style = "height: 28px">Edit</button></td>
                            </tr>
                            </c:forEach>
                          </tbody>
                        </table>
                    </form:form>
                  </div>
              </div>
              <script>
                // Get the modal
                var modal = document.getElementById('id01');
                
                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function(event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
                </script>
              <div class="box">
                <p>$1248</p>
                <label>Revenue</label>
              </div>
            </div>
          </div>

          <div class="earning">
            <div class="flex1">
              <div class="box">
                <h3>Monthly Earing</h3>
                <label>This Month</label>
                <h2>Rs. 54,000</h2>
                <p> <span>12% <i class="fas fa-long-arrow-up"></i> </span> From previous period </p>
                <button>
                  View More
                  <i class="fas fa-chevron-down"></i>
                </button>
              </div>

              <div class="chart box">
                <div>
                  <div id="chart"></div>
                </div>
              </div>
            </div>
            <p>We craft digital, graphic and dimensional thinking.</p>
          </div>
        </div>

        <div class="content_right">
          <div class="right_top grid">
            <div class="rbox flex1">
              <div class="text">
                <h4>Order</h4>
                <h2>1,235</h2>
              </div>
              <div class="icon">
                <span class="material-icons"> folder_copy </span>
              </div>
            </div>
            <div class="rbox flex1">
              <div class="text">
                <h4>Order</h4>
                <h2>1,235</h2>
              </div>
              <div class="icon">
                <span class="material-icons"> file_download </span>
              </div>
            </div>
            <div class="rbox flex1">
              <div class="text">
                <h4>Order</h4>
                <h2>1,235</h2>
              </div>
              <div class="icon">
                <span class="material-icons"> sell </span>
              </div>
            </div>
          </div>

          <div class="bar">
            <div class="heading flex1">
              <h5>Email Sent</h5>

              <div class="date flex1">
                <h4>Week</h4>
                <h4>Month</h4>
                <button>Year</button>
              </div>
            </div>

            <div id="bars">

            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- chart js-->
  <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
  <script src="script.js" charset="utf-8"></script>
  <!-- chart js-->
  <script>
                /*------cricle---------*/
            var options = {
            series: [80],
            chart: {
                height: 250,
                type: 'radialBar',
                offsetY: -10
            },
            plotOptions: {
                radialBar: {
                startAngle: -135,
                endAngle: 135,
                dataLabels: {
                    name: {
                    fontSize: '16px',
                    color: '#b6b6b6',
                    offsetY: 70
                    },

                    value: {
                    offsetY: 30,
                    fontSize: '22px',
                    color: '#b6b6b6',
                    formatter: function(val) {
                        return val + "%";
                    }

                    }

                }

                }

            },

            fill: {

                type: 'gradient',

                gradient: {

                shade: 'dark',

                shadeIntensity: 0.15,

                inverseColors: false,

                opacityFrom: 1,

                opacityTo: 1,

                stops: [0, 50, 65, 91]

                },

            },

            stroke: {

                dashArray: 4

            },

            labels: ['Series A'],

            };



            var chart = new ApexCharts(document.querySelector("#chart"), options);
            chart.render();
            /*------cricle---------*/
            /*------bar---------*/
            var options = {
            series: [{
                name: "Series A",
                data: [44, 55, 41, 67, 22, 43, 36, 52, 24, 18, 36, 48]
            }, {
                name: "Series B",
                data: [13, 23, 20, 8, 13, 27, 18, 22, 10, 16, 24, 22]
            }, {
                name: "Series C",
                data: [11, 17, 15, 15, 21, 14, 11, 18, 17, 12, 20, 18]
            }],
            colors: ["#556ee6", "#f1b44c", "#34c38f"],
            chart: {
                type: 'bar',
                height: 400,
                stacked: true,
                toolbar: {
                show: true,
                tools: {
                    download: false
                }
                }
            },
            dataLabels: {
                enabled: false,
            },
            plotOptions: {
                bar: {
                horizontal: false,
                columnWidth: '20%',
                endingShape: "rounded"
                },
            },
            stroke: {
                width: 0,
                colors: ['#fff']
            },
            xaxis: {
                categories: ['Jun', 'Feb', 'Mar', 'April', 'May', 'Jun', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                labels: {
                formatter: function(val) {
                    return val + " "
                }
                }
            },
            yaxis: {
                title: {
                text: undefined
                },
            },
            tooltip: {
                y: {
                formatter: function(val) {
                    return val + "K"
                }
                }
            },
            fill: {
                opacity: 1
            },
            legend: {
                position: 'bottom',
                horizontalAlign: 'left',
                offsetX: 40
            }
            };

            var bars = new ApexCharts(document.querySelector("#bars"), options);
            bars.render();
            /*------bar---------*/



            /*------loc---------*/

            var options = {
            series: [14, 23, 21],
            chart: {
                type: 'polarArea',
            },
            stroke: {
                colors: ['#fff']
            },
            fill: {
                opacity: 0.8
            },
            responsive: [{
                breakpoint: 480,
                options: {
                chart: {
                    width: 200
                },
                legend: {
                    position: 'bottom'
                }
                }
            }]
            };

            var loac = new ApexCharts(document.querySelector("#loac"), options);
            loac.render();



            /*------loc---------*/
  </script>
</body>

</html>