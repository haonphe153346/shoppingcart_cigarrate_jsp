<%-- 
    Document   : dashboard
    Created on : Feb 28, 2022, 9:54:54 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Admin Dashboard
        </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="css/app.css">
        <script type="text/javascript">
            function doDelete(id) {
                if (confirm("Are u sure to delete product with id=" + id + " ?")) {
                    window.location = "delete?id=" + id;
                }
            }
        </script>
          <style>
            
.card {
  position: relative;
  display: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  
  background-clip: border-box;
  border: 1px solid rgba(0, 0, 0, 0.125);
  border-radius: 0.25rem; }
  .card > hr {
    margin-right: 0;
    margin-left: 0; }
  .card > .list-group {
    border-top: inherit;
    border-bottom: inherit; }
    .card > .list-group:first-child {
      border-top-width: 0;
      border-top-left-radius: calc(0.25rem - 1px);
      border-top-right-radius: calc(0.25rem - 1px); }
    .card > .list-group:last-child {
      border-bottom-width: 0;
      border-bottom-right-radius: calc(0.25rem - 1px);
      border-bottom-left-radius: calc(0.25rem - 1px); }
  .card > .card-header + .list-group,
  .card > .list-group + .card-footer {
    border-top: 0; }

.card-body {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1.25rem; }

.card-title {
  margin-bottom: 0.75rem; }

.card-subtitle {
  margin-top: -0.375rem;
  margin-bottom: 0; }

.card-text:last-child {
  margin-bottom: 0; }

.card-link:hover {
  text-decoration: none; }

.card-link + .card-link {
  margin-left: 1.25rem; }

.card-header {
  padding: 0.75rem 1.25rem;
  margin-bottom: 0;
  background-color: rgba(0, 0, 0, 0.03);
  border-bottom: 1px solid rgba(0, 0, 0, 0.125); }
  .card-header:first-child {
    border-radius: calc(0.25rem - 1px) calc(0.25rem - 1px) 0 0; }

.card-footer {
  padding: 0.75rem 1.25rem;
  background-color: rgba(0, 0, 0, 0.03);
  border-top: 1px solid rgba(0, 0, 0, 0.125); }
  .card-footer:last-child {
    border-radius: 0 0 calc(0.25rem - 1px) calc(0.25rem - 1px); }

.card-header-tabs {
  margin-right: -0.625rem;
  margin-bottom: -0.75rem;
  margin-left: -0.625rem;
  border-bottom: 0; }

.card-header-pills {
  margin-right: -0.625rem;
  margin-left: -0.625rem; }

.card-img-overlay {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1.25rem;
  border-radius: calc(0.25rem - 1px); }

.card-img,
.card-img-top,
.card-img-bottom {
  flex-shrink: 0;
  width: 100%; }

.card-img,
.card-img-top {
  border-top-left-radius: calc(0.25rem - 1px);
  border-top-right-radius: calc(0.25rem - 1px); }

.card-img,
.card-img-bottom {
  border-bottom-right-radius: calc(0.25rem - 1px);
  border-bottom-left-radius: calc(0.25rem - 1px); }

.card-deck .card {
  margin-bottom: 15px; }

@media (min-width: 576px) {
  .card-deck {
    display: flex;
    flex-flow: row wrap;
    margin-right: -15px;
    margin-left: -15px; }
    .card-deck .card {
      flex: 1 0 0%;
      margin-right: 15px;
      margin-bottom: 0;
      margin-left: 15px; } }

.card-group > .card {
  margin-bottom: 15px; }

@media (min-width: 576px) {
  .card-group {
    display: flex;
    flex-flow: row wrap; }
    .card-group > .card {
      flex: 1 0 0%;
      margin-bottom: 0; }
      .card-group > .card + .card {
        margin-left: 0;
        border-left: 0; }
      .card-group > .card:not(:last-child) {
        border-top-right-radius: 0;
        border-bottom-right-radius: 0; }
        .card-group > .card:not(:last-child) .card-img-top,
        .card-group > .card:not(:last-child) .card-header {
          border-top-right-radius: 0; }
        .card-group > .card:not(:last-child) .card-img-bottom,
        .card-group > .card:not(:last-child) .card-footer {
          border-bottom-right-radius: 0; }
      .card-group > .card:not(:first-child) {
        border-top-left-radius: 0;
        border-bottom-left-radius: 0; }
        .card-group > .card:not(:first-child) .card-img-top,
        .card-group > .card:not(:first-child) .card-header {
          border-top-left-radius: 0; }
        .card-group > .card:not(:first-child) .card-img-bottom,
        .card-group > .card:not(:first-child) .card-footer {
          border-bottom-left-radius: 0; } }

.card-columns .card {
  margin-bottom: 0.75rem; }

        </style>
    </head>

    <body>

        <!-- SIDEBAR -->
        <div class="sidebar">
            <div class="sidebar-logo">
                <img src="img/logo.jpg" alt="Comapny logo">
                <div class="sidebar-close" id="sidebar-close">
                    <i class='bx bx-left-arrow-alt'></i>
                </div>
            </div>
            <div class="sidebar-user">
                <div class="sidebar-user-info">
                    <img src="img/users.png" alt="User picture" class="profile-image">
                    <div class="sidebar-user-name">
                        Hello ${sessionScope.admin.name}
                    </div>
                </div>
                <button class="btn btn-outline">
                    <a href="logout"><i class='bx bx-log-out bx-flip-horizontal'></i> </a>

                </button>
            </div>
            <!-- SIDEBAR MENU -->
            <ul class="sidebar-menu">
                <li>
                    <a href="dashboard" class="active">
                        <i class='bx bx-home'></i>
                        <span>dashboard</span>
                    </a>
                </li>

                <li class="sidebar-submenu">
                    <a href="list" class="sidebar-menu-dropdown">
                        <i class='bx bx-shopping-bag'></i>
                        <span>Product</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="listt">
                                All product
                            </a>
                        </li>
                        <li>
                            <a href="add">
                                add product
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-submenu">
                    <a href="list-order" class="sidebar-menu-dropdown">
                        <i class='bx bx-shopping-bag'></i>
                        <span>Order</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="list-order">
                                all order
                            </a>
                        </li>
                        <li>
                            <a href="list-order?sort=1">
                                Order Pending
                            </a>
                        </li>
                        <li>
                            <a href="list-order?sort=2">
                                Order Finished
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-submenu">
                    <a href="list-category" class="sidebar-menu-dropdown">
                        <i class='bx bx-shopping-bag'></i>
                        <span>Category</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="list-category">
                                all category
                            </a>
                        </li>

                    </ul>
                </li>
                <li class="sidebar-submenu">
                    <a href="list-user" class="sidebar-menu-dropdown">
                        <i class='bx bx-user-circle'></i>
                        <span>user</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="list-user">
                                List User
                            </a>
                        </li>
                        
                    </ul>
                </li>

                <li class="sidebar-submenu">
                    <a href="#" class="sidebar-menu-dropdown">
                        <i class='bx bx-cog'></i>
                        <span>settings</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="#" class="darkmode-toggle" id="darkmode-toggle">
                                darkmode
                                <span class="darkmode-switch"></span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->

        <!-- MAIN CONTENT -->
        <div class="main">
            <div class="main-header">
                <div class="mobile-toggle" id="mobile-toggle">
                    <i class='bx bx-menu-alt-right'></i>
                </div>
                <div class="main-title">
                    dashboard
                </div>
            </div>
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Add new Category</h4>
                    
                    <form action="list-category" method="post" class="form-inline">
                      <label class="sr-only" for="inlineFormInputName2">Name</label>
                      <input name="category_id" type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="ID Category">
                      
                      <label class="sr-only" for="inlineFormInputGroupUsername2">Username</label>
                      <input name="category_name" type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="NAME CATEGORY">
                     
                      <button type="submit" class="btn btn-primary mb-2">Submit</button>
                      <button t class="btn btn-primary mb-2"><a href="list-category">Cancel</a></button>
                    </form>
                  </div>
                </div>
            <div class="main-content">
                <div class="row">

                    <c:forEach items="${requestScope.listcate}" var="c">
                        
                        <div class="col-3 col-md-6 col-sm-12">
                            <div class="box box-hover">
                                <!-- COUNTER -->
                                <div class="counter">
                                    <div class="counter-title">
                                        <h2>${c.name}</h2>
                                    </div>
                                    <div class="counter-info">

                                        <div class="counter-count">
                                            <h6>ID: ${c.id}</h6>
                                           
                                        </div>
                                        <a href="delete-category?id=${c.id}">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                            <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
                                            </svg>
                                        </a>

                                    </div>
                                </div>
                                <!-- END COUNTER -->
                            </div>
                        </div>
                    </c:forEach>
                   
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->

        <div class="overlay"></div>

        <!-- SCRIPT -->
        <!-- APEX CHART -->
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <!-- APP JS -->
        <script src="js/app.js"></script>

    </body>

</html>
