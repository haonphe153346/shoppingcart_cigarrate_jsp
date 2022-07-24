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
            Apex Admin
        </title>
        <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="css/app.css">

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
            <div class="main-content">
                <div class="row">
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    total order
                                </div>
                                <div class="counter-info">
                                    <c:forEach items="${requestScope.ttorder}" var="a">
                                         <div class="counter-count">
                                        ${a}
                                    </div>
                                    </c:forEach>
                                   
                                    <i class='bx bx-shopping-bag'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    Total Product
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        ${totalproduct}
                                    </div>
                                    <i class='bx bx-chat'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    total profit
                                </div>
                                <div class="counter-info">
                                    <c:forEach items="${requestScope.ttprofit}" var="u">
                                         <div class="counter-count">
                                        $${u}
                                    </div>
                                    </c:forEach>
                                   
                                    <i class='bx bx-line-chart'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    daily visitors
                                </div>
                                <div class="counter-info">
                                    <c:forEach items="${requestScope.dayview}" var="e">
                                        <div class="counter-count">
                                        ${e.customer+e.non_customer}
                                    </div>
                                    </c:forEach>
                                    
                                    <i class='bx bx-user'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-3 col-md-6 col-sm-12">
                        <!-- TOP PRODUCT -->
                        <div class="box f-height">
                            <div class="box-header">
                                top product
                            </div>
                            <div class="box-body">
                                <c:forEach items="${requestScope.top4}" var="c">
                                    <ul class="product-list">
                                        <li class="product-list-item">
                                            <div class="item-info">
                                                <img src="img/${c.image}" alt="product image">
                                                <div class="item-name">
                                                    <div class="product-name">${c.name}</div>
                                                    <div class="text-second">${c.category.name}</div>
                                                </div>
                                            </div>
                                            <div class="item-sale-info">
                                                <div class="text-second">Sales</div>
                                                <div class="product-sales">$${c.price}</div>
                                            </div>
                                        </li>

                                    </ul>
                                </c:forEach>

                            </div>
                        </div>
                        <!-- TOP PRODUCT -->
                    </div>
                    <div class="col-4 col-md-6 col-sm-12">
                        <!-- CATEGORY CHART -->
                        <div class="box f-height">
                            <div class="box-body">
                                <div id="category-chart"></div>
                            </div>
                        </div>
                        <!-- END CATEGORY CHART -->
                    </div>
                    <div class="col-5 col-md-12 col-sm-12">
                        <!-- CUSTOMERS CHART -->
                        <div class="box f-height">
                            <div class="box-header">
                                Profit
                            </div>
                            <div class="box-body">
                                <div id="customer-chart"></div>
                            </div>
                        </div>
                        <!-- END CUSTOMERS CHART -->
                    </div>
                    <div class="col-12">
                       <div class="box shadow mt-4">
                  <div id="areachart"></div>
                </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->

        <div class="overlay"></div>

        <!-- SCRIPT -->
        <!-- APEX CHART -->
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="js/app.js" type="text/javascript"></script>
        <!-- APP JS -->
        <script>
            let cate = []
            <c:forEach items="${requestScope.listcate}" var="c">
            cate.push("${c.name}")
            </c:forEach>
            let tt = []
            <c:forEach items="${requestScope.listquantitycate}" var="z">
            tt.push(${z})
            </c:forEach>
            let category_options = {
                series: tt,
                labels: cate,
                chart: {
                    type: 'donut',
                },
                colors: ['#6ab04c', '#2980b9', '#f39c12', '#d35400']
            }

            let category_chart = new ApexCharts(document.querySelector("#category-chart"), category_options)
            category_chart.render()
            
            
        </script>
        <script> 
            let profit = []
            let num = []
            let date = []
            <c:forEach items="${requestScope.profit}" var="p">
                profit.push("${p.money}")
                num.push("${p.quanlity}")
                date.push("${p.date}")
            </c:forEach>
           
            
            let customer_options = {
    series: [{
        name: "Profit Daily Week",
        data: profit
    }],
    colors: ['#6ab04c', '#2980b9'],
    chart: {
        height: 350,
        type: 'line',
    },
    dataLabels: {
        enabled: false
    },
    stroke: {
        curve: 'smooth'
    },
    xaxis: {
        categories: date,
    },
    legend: {
        position: 'top'
    }
}

let customer_chart = new ApexCharts(document.querySelector("#customer-chart"), customer_options)
customer_chart.render()
        </script>
        <script>
            let nonc = []
            let c = []
            let datee = []
                    <c:forEach items="${requestScope.daily}" var="r">
                        nonc.push("${r.non_customer}")
                        c.push("${r.customer}")
                        datee.push("${r.date}")
                    </c:forEach>
            var optionsArea = {
  chart: {
    height: 380,
    type: 'area',
    stacked: false,
  },
  stroke: {
    curve: 'straight'
  },
  series: [{
      name: "Non-Customer",
      data: nonc
    },
    {
      name: "Customer",
      data: c
    }
  ],
  xaxis: {
    categories: datee,
  },
  tooltip: {
    followCursor: true
  },
  fill: {
    opacity: 1,
  },

}

var chartArea = new ApexCharts(
  document.querySelector("#areachart"),
  optionsArea
);

chartArea.render();
        </script>
    </body>

</html>
