<%-- 
    Document   : header-admin
    Created on : Mar 12, 2022, 4:08:50 AM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <span>Quản lí sản phẩm</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="listt">
                                list product
                            </a>
                        </li>
                        <li>
                            <a href="add">
                                add product
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                orders
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-submenu">
                    <a href="list-user" class="sidebar-menu-dropdown">
                        <i class='bx bx-user-circle'></i>
                        <span>Quản lí user</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="list-user">
                                List Users
                            </a>
                        </li>
                        <li>
                            <a href="add-users">
                                Add a new users
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