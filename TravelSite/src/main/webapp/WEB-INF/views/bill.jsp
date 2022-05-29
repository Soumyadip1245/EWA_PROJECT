<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
  <script
  src="https://kit.fontawesome.com/64d58efce2.js"
  crossorigin="anonymous">
</script>

<style>
    
body {
  font-family: 'Nunito Sans', sans-serif;
  margin: 0;
  padding: 0;
}

button, input {
  font-family: 'Nunito Sans', sans-serif;
}

.container {
  width: 100%;
  display: flex;
  flex-direction: column;
  padding-bottom: 100px;
  background: linear-gradient(to bottom, #FFFFFF 50%, #F4F9FD 100%);
}

.menu {
  width: 100%;
  box-sizing: border-box;
  padding: 30px 10%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-left: 0px;
}

.logo {
  display: flex;
  align-items: center;
}

.main {
  background-color: #ED6C66;
  border: 0;
  width: 70px;
  height: 70px;
  border-radius: 50px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: 70px;
}

.main.nav {
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMS45OTggNTExLjk5OCIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgY2xhc3M9IiI+PGc+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+Cgk8Zz4KCQk8cGF0aCBkPSJNNTA1Ljc0Myw2LjI0OWMtNi4wOC02LjEwMS0xNS4yMTEtNy44OTMtMjMuMTY4LTQuNjcybC00NjkuMzMzLDE5MmMtOC43NjgsMy42MDUtMTQuMTIzLDEyLjU0NC0xMy4xMiwyMS45NzMgICAgYzAuOTgxLDkuNDI5LDguMDY0LDE3LjA2NywxNy4zODcsMTguNzczbDIyMC4xMzksNDAuMDIxbDQwLjA0MywyMjAuMTM5YzEuNjg1LDkuMzIzLDkuMzIzLDE2LjQwNSwxOC43NTIsMTcuNDA4ICAgIGMwLjc0NywwLjA2NCwxLjQ5MywwLjEwNywyLjIxOSwwLjEwN2M4LjU3NiwwLDE2LjQ0OC01LjE4NCwxOS43NTUtMTMuMjY5bDE5Mi00NjkuMzMzICAgIEM1MTMuNjU4LDIxLjQ1OSw1MTEuODIzLDEyLjMyOSw1MDUuNzQzLDYuMjQ5eiIgZmlsbD0iI2ZmZmZmZiIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiI+PC9wYXRoPgoJPC9nPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjwvZz48L3N2Zz4=);
}

.logo .main {
  margin-right: 6px;
}

.logo span {
  font-weight: 700;
  font-size: 70px;
  color: #0B1354;
}

.menu ul {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
}

.menu ul li {
  margin: 0 20px;
}

.menu ul li.active {
  padding-left: 15px;
  position: relative;
}

.menu ul li.active::before {
  position: absolute;
  content: '';
  width: 5px;
  height: 5px;
  background-color: #ED6C66;
  border-radius: 50%;
  left: 0;
  top: 8px;
}

.menu ul li a {
  color: #393939;
  text-decoration: none;
  font-weight: 700;
  font-size: 20px;
  transition: all .3s ease-out;
}

.menu ul li.active a {
  color: #ED6C66;
}

.menu ul li:hover a {
  color: #ED6C66;
}

.secondary {
  border: 0;
  border-radius: 8px;
  background-color: #ED6C66;
  color: #FFF;
  padding: 10px 20px;
  font-size: 14px;
  transition: all .3s ease-out;
  cursor: pointer;
}

.secondary:hover {
  opacity: 0.7;
}
.secondary1 {
  border: 0;
  border-radius: 8px;
  background-color: #ED6C66;
  color: #FFF;
  padding: 10px 20px;
  font-size: 14px;
  transition: all .3s ease-out;
  cursor: pointer;
  width: 120px
}

.secondary1:hover {
  opacity: 0.7;
}
.slide {
  width: 100%;
  display: flex;
  position: relative;
}

.desc {
  flex: 1;
  display: flex;
  flex-direction: column;
  padding: 100px 0 120px 10%;
  background: linear-gradient(to right, #FCECEB, #F5F6FA);
  margin-right: 1%;
  padding-left: 2px;
  padding-top: 0px;
}

.desc small {
  font-family: 'Caveat', cursive;
  font-size: 20px;
  color: #A6A1B1;
}

.desc h1 {
  font-weight: 700;
  font-size: 62px;
  margin: 20px 0 50px;
  line-height: 66px;
  color: #0B1354;
}

.desc h1 span {
  color: #ED6C66;
}

.desc a {
  display: flex;
  align-items: center;
  color: #6B6C8C;
  text-decoration: none;
  font-weight: 700;
  transition: all .3s ease-out;
}

/* .main.arrow {
  margin-left: 15px;
  cursor: pointer;
  transition: all .3s ease-out;
  width: 20px;
  height: 20px;
  background-size: 8px;
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDQ0Ny4yNDMgNDQ3LjI0MyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgY2xhc3M9IiI+PGcgdHJhbnNmb3JtPSJtYXRyaXgoLTEsMCwwLDEsNDQ3LjI0MjIyNTY0Njk3MjY2LDApIj4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik00MjAuMzYxLDE5Mi4yMjljLTEuODMtMC4yOTctMy42ODItMC40MzQtNS41MzUtMC40MUg5OS4zMDVsNi44OC0zLjJjNi43MjUtMy4xODMsMTIuODQzLTcuNTE1LDE4LjA4LTEyLjhsODguNDgtODguNDggICAgYzExLjY1My0xMS4xMjQsMTMuNjExLTI5LjAxOSw0LjY0LTQyLjRjLTEwLjQ0MS0xNC4yNTktMzAuNDY0LTE3LjM1NS00NC43MjQtNi45MTRjLTEuMTUyLDAuODQ0LTIuMjQ3LDEuNzY0LTMuMjc2LDIuNzU0ICAgIGwtMTYwLDE2MEMtMy4xMTksMjEzLjI2OS0zLjEzLDIzMy41Myw5LjM2LDI0Ni4wMzRjMC4wMDgsMC4wMDgsMC4wMTcsMC4wMTcsMC4wMjUsMC4wMjVsMTYwLDE2MCAgICBjMTIuNTE0LDEyLjQ3OSwzMi43NzUsMTIuNDUxLDQ1LjI1NS0wLjA2M2MwLjk4Mi0wLjk4NSwxLjg5OS0yLjAzMywyLjc0NS0zLjEzN2M4Ljk3MS0xMy4zODEsNy4wMTMtMzEuMjc2LTQuNjQtNDIuNCAgICBsLTg4LjMyLTg4LjY0Yy00LjY5NS00LjctMTAuMDkzLTguNjQxLTE2LTExLjY4bC05LjYtNC4zMmgzMTQuMjRjMTYuMzQ3LDAuNjA3LDMwLjY4OS0xMC44MTIsMzMuNzYtMjYuODggICAgQzQ0OS42NTQsMjExLjQ5NCw0MzcuODA2LDE5NS4wNTksNDIwLjM2MSwxOTIuMjI5eiIgZmlsbD0iI2ZmZmZmZiIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiI+PC9wYXRoPgoJPC9nPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjwvZz48L3N2Zz4=);
} */

.desc a:hover {
  color: #ED6C66;
}

.desc a:hover .main {
  opacity: 0.7;
}

/* .pic {
  flex: 1;
  padding-right: 10%;
  background: url(https://images.unsplash.com/photo-1584467541268-b040f83be3fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80) no-repeat center;
  background-size: cover;
  position: relative;
} */

.controls {
  width: 70%;
  margin: -50px 10% 0;
  z-index: 2;
  display: flex;
  background-color: #FFF;
  box-sizing: border-box;
  padding: 25px 30px 25px 0;
  box-shadow: 0 3px 30px 1px rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  overflow-x: auto;
  align-items: center;
  justify-content: space-between;
  margin-top: -120px
}

.controls .items {
  display: flex;
}

.controls .item {
  display: flex;
  flex-direction: column;
  padding: 0 30px 0 50px;
  border-right: 1px solid #EEE;
  background-position: 20px top;
  background-repeat: no-repeat;
  background-size: 20px;
  flex: 1;
}

.controls .item:last-child {
  border: 0;
}

/* .controls .item.destination {
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTI1NiwwQzE1My43NTUsMCw3MC41NzMsODMuMTgyLDcwLjU3MywxODUuNDI2YzAsMTI2Ljg4OCwxNjUuOTM5LDMxMy4xNjcsMTczLjAwNCwzMjEuMDM1ICAgIGM2LjYzNiw3LjM5MSwxOC4yMjIsNy4zNzgsMjQuODQ2LDBjNy4wNjUtNy44NjgsMTczLjAwNC0xOTQuMTQ3LDE3My4wMDQtMzIxLjAzNUM0NDEuNDI1LDgzLjE4MiwzNTguMjQ0LDAsMjU2LDB6IE0yNTYsNDY5LjcyOSAgICBjLTU1Ljg0Ny02Ni4zMzgtMTUyLjAzNS0xOTcuMjE3LTE1Mi4wMzUtMjg0LjMwMWMwLTgzLjgzNCw2OC4yMDItMTUyLjAzNiwxNTIuMDM1LTE1Mi4wMzZzMTUyLjAzNSw2OC4yMDIsMTUyLjAzNSwxNTIuMDM1ICAgIEM0MDguMDM0LDI3Mi41MTUsMzExLjg2MSw0MDMuMzcsMjU2LDQ2OS43Mjl6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0yNTYsOTIuMTM0Yy01MS40NDIsMC05My4yOTIsNDEuODUxLTkzLjI5Miw5My4yOTNzNDEuODUxLDkzLjI5Myw5My4yOTIsOTMuMjkzczkzLjI5MS00MS44NTEsOTMuMjkxLTkzLjI5MyAgICBTMzA3LjQ0MSw5Mi4xMzQsMjU2LDkyLjEzNHogTTI1NiwyNDUuMzI4Yy0zMy4wMywwLTU5LjktMjYuODcxLTU5LjktNTkuOTAxczI2Ljg3MS01OS45MDEsNTkuOS01OS45MDFzNTkuOSwyNi44NzEsNTkuOSw1OS45MDEgICAgUzI4OS4wMjksMjQ1LjMyOCwyNTYsMjQ1LjMyOHoiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8L2c+PC9zdmc+);
}

.controls .item.checkin {
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDQ3Ny44NjcgNDc3Ljg2NyIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTEyIDUxMiIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgY2xhc3M9IiI+PGc+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+Cgk8Zz4KCQk8cGF0aCBkPSJNNDI2LjY2Nyw1MS4yaC01MS4yVjE3LjA2N0MzNzUuNDY3LDcuNjQxLDM2Ny44MjYsMCwzNTguNCwwcy0xNy4wNjcsNy42NDEtMTcuMDY3LDE3LjA2N1Y1MS4yaC0yMDQuOFYxNy4wNjcgICAgQzEzNi41MzMsNy42NDEsMTI4Ljg5MiwwLDExOS40NjcsMFMxMDIuNCw3LjY0MSwxMDIuNCwxNy4wNjdWNTEuMkg1MS4yQzIyLjkyMyw1MS4yLDAsNzQuMTIzLDAsMTAyLjR2MzI0LjI2NyAgICBjMCwyOC4yNzcsMjIuOTIzLDUxLjIsNTEuMiw1MS4yaDM3NS40NjdjMjguMjc3LDAsNTEuMi0yMi45MjMsNTEuMi01MS4yVjEwMi40QzQ3Ny44NjcsNzQuMTIzLDQ1NC45NDQsNTEuMiw0MjYuNjY3LDUxLjJ6ICAgICBNNDQzLjczMyw0MjYuNjY3YzAsOS40MjYtNy42NDEsMTcuMDY3LTE3LjA2NywxNy4wNjdINTEuMmMtOS40MjYsMC0xNy4wNjctNy42NDEtMTcuMDY3LTE3LjA2N1YyMDQuOGg0MDkuNlY0MjYuNjY3eiAgICAgTTQ0My43MzMsMTcwLjY2N2gtNDA5LjZWMTAyLjRjMC05LjQyNiw3LjY0MS0xNy4wNjcsMTcuMDY3LTE3LjA2N2g1MS4ydjM0LjEzM2MwLDkuNDI2LDcuNjQxLDE3LjA2NywxNy4wNjcsMTcuMDY3ICAgIHMxNy4wNjctNy42NDEsMTcuMDY3LTE3LjA2N1Y4NS4zMzNoMjA0Ljh2MzQuMTMzYzAsOS40MjYsNy42NDEsMTcuMDY3LDE3LjA2NywxNy4wNjdzMTcuMDY3LTcuNjQxLDE3LjA2Ny0xNy4wNjdWODUuMzMzaDUxLjIgICAgYzkuNDI2LDAsMTcuMDY3LDcuNjQxLDE3LjA2NywxNy4wNjdWMTcwLjY2N3oiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTEzNi41MzMsMjM4LjkzM0gxMDIuNGMtOS40MjYsMC0xNy4wNjcsNy42NDEtMTcuMDY3LDE3LjA2N2MwLDkuNDI2LDcuNjQxLDE3LjA2NywxNy4wNjcsMTcuMDY3aDM0LjEzMyAgICBjOS40MjYsMCwxNy4wNjctNy42NDEsMTcuMDY3LTE3LjA2N0MxNTMuNiwyNDYuNTc0LDE0NS45NTksMjM4LjkzMywxMzYuNTMzLDIzOC45MzN6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0yNTYsMjM4LjkzM2gtMzQuMTMzYy05LjQyNiwwLTE3LjA2Nyw3LjY0MS0xNy4wNjcsMTcuMDY3YzAsOS40MjYsNy42NDEsMTcuMDY3LDE3LjA2NywxNy4wNjdIMjU2ICAgIGM5LjQyNiwwLDE3LjA2Ny03LjY0MSwxNy4wNjctMTcuMDY3QzI3My4wNjcsMjQ2LjU3NCwyNjUuNDI2LDIzOC45MzMsMjU2LDIzOC45MzN6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0zNzUuNDY3LDIzOC45MzNoLTM0LjEzM2MtOS40MjYsMC0xNy4wNjcsNy42NDEtMTcuMDY3LDE3LjA2N2MwLDkuNDI2LDcuNjQxLDE3LjA2NywxNy4wNjcsMTcuMDY3aDM0LjEzMyAgICBjOS40MjYsMCwxNy4wNjctNy42NDEsMTcuMDY3LTE3LjA2N0MzOTIuNTMzLDI0Ni41NzQsMzg0Ljg5MiwyMzguOTMzLDM3NS40NjcsMjM4LjkzM3oiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTEzNi41MzMsMzA3LjJIMTAyLjRjLTkuNDI2LDAtMTcuMDY3LDcuNjQxLTE3LjA2NywxNy4wNjdjMCw5LjQyNiw3LjY0MSwxNy4wNjcsMTcuMDY3LDE3LjA2N2gzNC4xMzMgICAgYzkuNDI2LDAsMTcuMDY3LTcuNjQxLDE3LjA2Ny0xNy4wNjdDMTUzLjYsMzE0Ljg0MSwxNDUuOTU5LDMwNy4yLDEzNi41MzMsMzA3LjJ6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0yNTYsMzA3LjJoLTM0LjEzM2MtOS40MjYsMC0xNy4wNjcsNy42NDEtMTcuMDY3LDE3LjA2N2MwLDkuNDI2LDcuNjQxLDE3LjA2NywxNy4wNjcsMTcuMDY3SDI1NiAgICBjOS40MjYsMCwxNy4wNjctNy42NDEsMTcuMDY3LTE3LjA2N0MyNzMuMDY3LDMxNC44NDEsMjY1LjQyNiwzMDcuMiwyNTYsMzA3LjJ6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0zNzUuNDY3LDMwNy4yaC0zNC4xMzNjLTkuNDI2LDAtMTcuMDY3LDcuNjQxLTE3LjA2NywxNy4wNjdjMCw5LjQyNiw3LjY0MSwxNy4wNjcsMTcuMDY3LDE3LjA2N2gzNC4xMzMgICAgYzkuNDI2LDAsMTcuMDY3LTcuNjQxLDE3LjA2Ny0xNy4wNjdDMzkyLjUzMywzMTQuODQxLDM4NC44OTIsMzA3LjIsMzc1LjQ2NywzMDcuMnoiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTEzNi41MzMsMzc1LjQ2N0gxMDIuNGMtOS40MjYsMC0xNy4wNjcsNy42NDEtMTcuMDY3LDE3LjA2N1M5Mi45NzQsNDA5LjYsMTAyLjQsNDA5LjZoMzQuMTMzICAgIGM5LjQyNiwwLDE3LjA2Ny03LjY0MSwxNy4wNjctMTcuMDY3UzE0NS45NTksMzc1LjQ2NywxMzYuNTMzLDM3NS40Njd6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0yNTYsMzc1LjQ2N2gtMzQuMTMzYy05LjQyNiwwLTE3LjA2Nyw3LjY0MS0xNy4wNjcsMTcuMDY3czcuNjQxLDE3LjA2NywxNy4wNjcsMTcuMDY3SDI1NiAgICBjOS40MjYsMCwxNy4wNjctNy42NDEsMTcuMDY3LTE3LjA2N1MyNjUuNDI2LDM3NS40NjcsMjU2LDM3NS40Njd6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIiBjbGFzcz0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik0zNzUuNDY3LDM3NS40NjdoLTM0LjEzM2MtOS40MjYsMC0xNy4wNjcsNy42NDEtMTcuMDY3LDE3LjA2N3M3LjY0MSwxNy4wNjcsMTcuMDY3LDE3LjA2N2gzNC4xMzMgICAgYzkuNDI2LDAsMTcuMDY3LTcuNjQxLDE3LjA2Ny0xNy4wNjdTMzg0Ljg5MiwzNzUuNDY3LDM3NS40NjcsMzc1LjQ2N3oiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiIGNsYXNzPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8L2c+PC9zdmc+);
}

.controls .item.guests {
  background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTQzNywyNjguMTUyaC01MC4xMThjLTYuODIxLDAtMTMuNDI1LDAuOTMyLTE5LjcxLDIuNjQ2Yy0xMi4zOTgtMjQuMzcyLTM3LjcxLTQxLjExOC02Ni44NzctNDEuMTE4aC04OC41OSAgICBjLTI5LjE2NywwLTU0LjQ3OSwxNi43NDYtNjYuODc3LDQxLjExOGMtNi4yODUtMS43MTQtMTIuODg5LTIuNjQ2LTE5LjcxLTIuNjQ2SDc1Yy00MS4zNTUsMC03NSwzMy42NDUtNzUsNzV2ODAuMTE4ICAgIGMwLDI0LjgxMywyMC4xODcsNDUsNDUsNDVoNDIyYzI0LjgxMywwLDQ1LTIwLjE4Nyw0NS00NXYtODAuMTE4QzUxMiwzMDEuNzk3LDQ3OC4zNTUsMjY4LjE1Miw0MzcsMjY4LjE1MnogTTEzNi43MDUsMzA0LjY4MiAgICB2MTMzLjU4OUg0NWMtOC4yNzEsMC0xNS02LjcyOS0xNS0xNXYtODAuMTE4YzAtMjQuODEzLDIwLjE4Ny00NSw0NS00NWg1MC4xMThjNC4wNzIsMCw4LjAxNSwwLjU1MywxMS43NjksMS41NzIgICAgQzEzNi43NzksMzAxLjM2NiwxMzYuNzA1LDMwMy4wMTYsMTM2LjcwNSwzMDQuNjgyeiBNMzQ1LjI5NSw0MzguMjcxaC0xNzguNTlWMzA0LjY4MWMwLTI0LjgxMywyMC4xODctNDUsNDUtNDVoODguNTkgICAgYzI0LjgxMywwLDQ1LDIwLjE4Nyw0NSw0NVY0MzguMjcxeiBNNDgyLDQyMy4yNzFjMCw4LjI3MS02LjcyOSwxNS0xNSwxNWgtOTEuNzA1di0xMzMuNTljMC0xLjY2Ny0wLjA3NC0zLjMxNy0wLjE4Mi00Ljk1NyAgICBjMy43NTQtMS4wMTgsNy42OTctMS41NzIsMTEuNzY5LTEuNTcySDQzN2MyNC44MTMsMCw0NSwyMC4xODcsNDUsNDVWNDIzLjI3MXoiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgoJPGc+CgkJPHBhdGggZD0iTTEwMC4wNiwxMjYuNTA0Yy0zNi43NDksMC02Ni42NDYsMjkuODk3LTY2LjY0Niw2Ni42NDZjLTAuMDAxLDM2Ljc0OSwyOS44OTcsNjYuNjQ2LDY2LjY0Niw2Ni42NDYgICAgYzM2Ljc0OCwwLDY2LjY0Ni0yOS44OTcsNjYuNjQ2LTY2LjY0NkMxNjYuNzA2LDE1Ni40MDEsMTM2LjgwOSwxMjYuNTA0LDEwMC4wNiwxMjYuNTA0eiBNMTAwLjA1OSwyMjkuNzk2ICAgIGMtMjAuMjA3LDAtMzYuNjQ2LTE2LjQzOS0zNi42NDYtMzYuNjQ2YzAtMjAuMjA3LDE2LjQzOS0zNi42NDYsMzYuNjQ2LTM2LjY0NmMyMC4yMDcsMCwzNi42NDYsMTYuNDM5LDM2LjY0NiwzNi42NDYgICAgQzEzNi43MDUsMjEzLjM1NywxMjAuMjY2LDIyOS43OTYsMTAwLjA1OSwyMjkuNzk2eiIgZmlsbD0iI2VkNmM2NiIgZGF0YS1vcmlnaW5hbD0iIzAwMDAwMCIgc3R5bGU9IiI+PC9wYXRoPgoJPC9nPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+Cgk8Zz4KCQk8cGF0aCBkPSJNMjU2LDQzLjcyOWMtNDkuMDk2LDAtODkuMDM4LDM5Ljk0Mi04OS4wMzgsODkuMDM4YzAsNDkuMDk2LDM5Ljk0Miw4OS4wMzgsODkuMDM4LDg5LjAzOHM4OS4wMzgtMzkuOTQyLDg5LjAzOC04OS4wMzggICAgQzM0NS4wMzgsODMuNjcyLDMwNS4wOTYsNDMuNzI5LDI1Niw0My43Mjl6IE0yNTYsMTkxLjgwNWMtMzIuNTU0LDAtNTkuMDM4LTI2LjQ4NC01OS4wMzgtNTkuMDM4ICAgIGMwLTMyLjU1MywyNi40ODQtNTkuMDM4LDU5LjAzOC01OS4wMzhzNTkuMDM4LDI2LjQ4NCw1OS4wMzgsNTkuMDM4QzMxNS4wMzgsMTY1LjMyMSwyODguNTU0LDE5MS44MDUsMjU2LDE5MS44MDV6IiBmaWxsPSIjZWQ2YzY2IiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIj48L3BhdGg+Cgk8L2c+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KCTxnPgoJCTxwYXRoIGQ9Ik00MTEuOTQsMTI2LjUwNGMtMzYuNzQ4LDAtNjYuNjQ2LDI5Ljg5Ny02Ni42NDYsNjYuNjQ2YzAuMDAxLDM2Ljc0OSwyOS44OTgsNjYuNjQ2LDY2LjY0Niw2Ni42NDYgICAgYzM2Ljc0OSwwLDY2LjY0Ni0yOS44OTcsNjYuNjQ2LTY2LjY0NkM0NzguNTg2LDE1Ni40MDEsNDQ4LjY4OSwxMjYuNTA0LDQxMS45NCwxMjYuNTA0eiBNNDExLjk0LDIyOS43OTYgICAgYy0yMC4yMDYsMC0zNi42NDYtMTYuNDM5LTM2LjY0Ni0zNi42NDZjMC4wMDEtMjAuMjA3LDE2LjQ0LTM2LjY0NiwzNi42NDYtMzYuNjQ2YzIwLjIwNywwLDM2LjY0NiwxNi40MzksMzYuNjQ2LDM2LjY0NiAgICBDNDQ4LjU4NiwyMTMuMzU3LDQzMi4xNDcsMjI5Ljc5Niw0MTEuOTQsMjI5Ljc5NnoiIGZpbGw9IiNlZDZjNjYiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiPjwvcGF0aD4KCTwvZz4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8L2c+CjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CjwvZz4KPGcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KPC9nPgo8L2c+PC9zdmc+);
} */

.controls .item span {
  color: #0B1354;
  font-weight: 700;
  margin-bottom: 5px;
}

.controls .item input {
  border: 0;
  background-color: transparent;
  padding: 0;
  margin: 0;
  outline: none;
}

.controls .main.nav {
  min-width: 24px;
  cursor: pointer;
  transition: all .3s ease-out;
}

.controls .main.nav:hover {
  opacity: 0.7;
}

</style>
</head>
<body>
<div class="container">
  <section class="menu">
    <div class="logo">
      <button type="button" class="main nav"></button>
      <span>Travel</span>
    </div>
      
    <ul>
      <li class="active">
        <a href="#">Home</a>
      </li>
      <li>
        <a href="#">Tours</a>
      </li>
      <li>
        <a href="#">Destination</a>
      </li>
      <li>
        <a href="#">Reviews</a>
      </li>
      <li>
        <a href="#">Contact</a>
      </li>
      <li>
        <a href="#">Blog</a>
      </li>
    </ul>

    <a href ="login.html"><button class ="secondary1"><i class="fas fa-user" style = "padding-right: 10px;"></i>Account </button></a>
  </section>
  <style>
    :root {
    --body-bg: rgb(204, 204, 204);
    --white: #ffffff;
    --darkWhite: #ccc;
    --black: #000000;
    --dark: #615c60;
    --themeColor:#ED6C66;
    --pageShadow: 0 0 0.5cm rgba(0, 0, 0, 0.5);
}

/* Font Include */
@import url('https://fonts.googleapis.com/css2?family=Rajdhani:wght@600&display=swap');

/* body {
    background-color: var(--body-bg);
} */

.page {
    background: var(--white);
    display: block;
    margin: 0 auto;
    position: relative;
    box-shadow: var(--pageShadow);
}

.page[size="A4"] {
    width: 21cm;
    height: 29.7cm;
    overflow: hidden;
}

.bb {
    border-bottom: 3px solid var(--darkWhite);
}

/* Top Section */
.top-content {
    padding-bottom: 15px;
}

.logo img {
    height: 60px;
}

.top-left p {
    margin: 0;
}

.top-left .graphic-path {
    height: 40px;
    position: relative;
}

.top-left .graphic-path::before {
    content: "";
    height: 20px;
    background-color: var(--dark);
    position: absolute;
    left: 15px;
    right: 0;
    top: -15px;
    z-index: 2;
}

.top-left .graphic-path::after {
    content: "";
    height: 22px;
    width: 17px;
    background: var(--black);
    position: absolute;
    top: -13px;
    left: 6px;
    transform: rotate(45deg);
}

.top-left .graphic-path p {
    color: var(--white);
    height: 40px;
    left: 0;
    right: -100px;
    text-transform: uppercase;
    background-color: var(--themeColor);
    font: 26px;
    z-index: 3;
    position: absolute;
    padding-left: 10px;
}

/* User Store Section */
.store-user {
    padding-bottom: 25px;
}

.store-user p {
    margin: 0;
    font-weight: 600;
}

.store-user .address {
    font-weight: 400;
}

.store-user h2 {
    color: var(--themeColor);
    font-family: 'Rajdhani', sans-serif;
}

.extra-info p span {
    font-weight: 400;
}

/* Product Section */
thead {
    color: var(--white);
    background: var(--themeColor);
}

.table td,
.table th {
    text-align: center;
    vertical-align: middle;
}

tr th:first-child,
tr td:first-child {
    text-align: left;
}

.media img {
    height: 60px;
    width: 60px;
}

.media p {
    font-weight: 400;
    margin: 0;
}

.media p.title {
    font-weight: 600;
}

/* Balance Info Section */
.balance-info .table td,
.balance-info .table th {
    padding: 0;
    border: 0;
}

.balance-info tr td:first-child {
    font-weight: 600;
}

tfoot {
    border-top: 2px solid var(--darkWhite);
}

tfoot td {
    font-weight: 600;
}

/* Cart BG */
.cart-bg {
    height: 250px;
    bottom: 32px;
    left: -40px;
    opacity: 0.3;
    position: absolute;
}

/* Footer Section */
footer {
    text-align: center;
    position: absolute;
    bottom: 30px;
    left: 75px;
}

footer hr {
    margin-bottom: -22px;
    border-top: 3px solid var(--darkWhite);
}

footer a {
    color: var(--themeColor);
}

footer p {
    padding: 6px;
    border: 3px solid var(--darkWhite);
    background-color: var(--white);
    display: inline-block;
}

  </style>
  <section class="slide">
    <div class="desc">
      <div class="my-5 page" size="A4">
        <div class="p-5">
            <section class="top-content bb d-flex justify-content-between">
                <div class="logo">
                    <img src="logo.png" alt="" class="img-fluid">
                </div>
                <div class="top-left">
                    <div class="graphic-path">
                        <p>Invoice</p>
                    </div>
                    <div class="position-relative">
                        <p>Invoice No. <span>${random}</span></p>
                    </div>
                </div>
            </section>

            <section class="store-user mt-5">
                <div class="col-10">
                    <div class="row bb pb-3">
                        <div class="col-7">
                            <p>Hotel</p>
                            <h2>${name}</h2>
                            <p class="address"> ${destination},<br> India </p>
                            <div class="txn mt-2">TXN: 508268</div>
                        </div>
                        <div class="col-5">
                            <p>Customer,</p>
                            <h2>${username}</h2>
                            <p class="address"> Car: ${car}</p>
                            <div class="txn mt-2">Members: ${member}</div>
                        </div>
                    </div>
                    <div class="row extra-info pt-3">
                        <div class="col-7">
                            <p>Payment Method: <span>Digital</span></p>
                            <p>Order Number: <span>${random}</span></p>
                        </div>
                        <div class="col-5">
                            <p>Checkin Date: <span>${cdate}</span></p>
                            <p>Checkout Date: <span>${coutdate}</span></p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="product-area mt-4">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>Sr No.</td>
                            <td>Price</td>
                            <td>Quantity</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="media">
                                    
                                    <div class="media-body">
                                        <p class="mt-0 title">1. &nbsp;&nbsp;&nbsp;&nbsp; Ac rooms with parking facilities</p>
                                      
                                    </div>
                                </div>
                            </td>
                            <td>${price}</td>
                            <td>${rooms}</td>
                            <td>${totalprice}</td>
                        </tr>
                       
                    </tbody>
                </table>
            </section>

            <section class="balance-info">
                <div class="row">
                    <div class="col-8">
                        <p class="m-0 font-weight-bold"> Note: </p>
                        <p>All taxes are inclusive and non-refundable</p>
                    </div>
                    <div class="col-4">
                        <table class="table border-0 table-hover">
                            <tr>
                                <td>Sub Total:</td>
                                <td>${totalprice}</td>
                            </tr>
                           
                            <tr>
                                <td>Discount:</td>
                                <td>${discount}</td>
                            </tr>
                            <tfoot>
                                <tr>
                                    <td>Total:</td>
                                    <td>${subtotalprice}</td>
                                </tr>
                            </tfoot>
                        </table>

                        <!-- Signature -->
                        <div class="col-12">
                            <img src="signature.png" class="img-fluid" alt="">
                            <p class="text-center m-0"> Director Signature </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Cart BG -->
            <img src="cart.jpg" class="img-fluid cart-bg" alt="">

            <footer>
                <hr>
                <p class="m-0 text-center">
                    View This Invoice Online At - <a href="#!"> invoice/hotel.com/#868 </a>
                </p>
                <div class="social pt-3">
                    <span class="pr-2">
                        <i class="fas fa-mobile-alt"></i>
                        <span>0123456789</span>
                    </span>
                    <span class="pr-2">
                        <i class="fas fa-envelope"></i>
                        <span>me@hotel.com</span>
                    </span>
                    <span class="pr-2">
                        <i class="fab fa-facebook-f"></i>
                        <span>/hotel.7264</span>
                    </span>
                    <span class="pr-2">
                        <i class="fab fa-youtube"></i>
                        <span>/hotel</span>
                    </span>
                    <span class="pr-2">
                        <i class="fab fa-github"></i>
                        <span>/example</span>
                    </span>
                </div>
            </footer>
        </div>
    </div>


    </div>
    <div class="pic"></div>
  </section>
  
</div>

</body>
</html>