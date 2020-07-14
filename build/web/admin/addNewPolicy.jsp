<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="daos.PolicyDao"%>
<%@page import="beans.Policy"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="au theme template">
        <meta name="author" content="Hau Nguyen">
        <meta name="keywords" content="au theme template">

        <!-- Title Page-->
        <title>All Orders</title>

        <jsp:include page="base.jsp"></jsp:include>

        </head>

        <body class="animsition">
            <div class="page-wrapper">
                <!-- MENU  SIDEBAR-->
            <jsp:include page="sidebar.jsp"></jsp:include>
                <!-- END MENU SIDEBAR-->

                <!-- PAGE CONTAINER-->
                <div class="page-container2">
                    <!-- HEADER DESKTOP-->
                <jsp:include page="navbar.jsp"></jsp:include>

                    <!-- END HEADER DESKTOP-->

                    <!-- Main Section -->


                <%

                    if (session.getAttribute("admin") == null) {
                        response.sendRedirect("../login.jsp");
                        return;
                    }

                %>



                %>
                <div class="main-content">

                    <div class="row">
                        <jsp:useBean id="newPolicy" class="beans.Policy" scope="session"></jsp:useBean>
                        <div class="col-lg-12">
                            <center><h3>Add New Policy & Details</h3></center>
                            <div class="table-responsive table--no-card m-b-30">
                                <jsp:setProperty name="newPolicy" property="*"></jsp:setProperty>
                           <form class="form" action="../PolicyController?op=addNewPolicy" method="post">
                                    <input type="text" placeholder="Enter Policy Name" class="form-control" name="name"><br>
                                    <input type="text" name="type" class="form-control" placeholder="Enter Policy Type"><br>
                                     <input type="number" name="minTime" class="form-control" placeholder="Enter Minimum Time period"><br>
                                          <input type="number" name="minSum" class="form-control" placeholder="Enter Minimun Sum Assured"><br>
                                          <textarea class="form-control" cols="40" rows="10" name="description">Enter Description</textarea><br>  
                                          <center><input type="submit" name="submit" class="btn btn-primary"></center>
                                </form> 
                            
                            </div>
                        </div>
                    </div>

                </div>




                <!-- End Main Section -->

                <!-- Footer --!>
                <jsp:include page="footer.jsp"></jsp:include>
                <!-- End Footer -->
                <!-- END PAGE CONTAINER-->
            </div>

        </div>

        <!-- Jquery JS-->
        <script src="assets/vendor/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap JS-->
        <script src="assets/vendor/bootstrap-4.1/popper.min.js"></script>
        <script src="assets/vendor/bootstrap-4.1/bootstrap.min.js"></script>
        <!-- Vendor JS       -->
        <script src="assets/vendor/slick/slick.min.js">
        </script>
        <script src="assets/vendor/wow/wow.min.js"></script>
        <script src="assets/vendor/animsition/animsition.min.js"></script>
        <script src="assets/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
        </script>
        <script src="assets/vendor/counter-up/jquery.waypoints.min.js"></script>
        <script src="assets/vendor/counter-up/jquery.counterup.min.js">
        </script>
        <script src="assets/vendor/circle-progress/circle-progress.min.js"></script>
        <script src="assets/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
        <script src="assets/vendor/chartjs/Chart.bundle.min.js"></script>
        <script src="assets/vendor/select2/select2.min.js">
        </script>
        <script src="assets/vendor/vector-map/jquery.vmap.js"></script>
        <script src="assets/vendor/vector-map/jquery.vmap.min.js"></script>
        <script src="assets/vendor/vector-map/jquery.vmap.sampledata.js"></script>
        <script src="assets/vendor/vector-map/jquery.vmap.world.js"></script>

        <!-- Main JS-->
        <script src="assets/js/main.js"></script>

    </body>

</html>
<!-- end document-->
