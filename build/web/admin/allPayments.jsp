<%-- 
    Document   : allPayments
    Created on : 13 May, 2020, 3:23:01 PM
    Author     : AKSHAY
--%>

 <%@page import="beans.Payment"%>
 <%@page import="daos.PaymentDao"%>
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
        <title>All Payments</title>

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

                        <div class="col-lg-12">
                            <center><h3>All Payments History</h3></center><br>
                            <div class="table-responsive table--no-card m-b-30">
                                 <table class="table table-borderless table-striped table-earning">
                                     <thead>
                                     <th>SNo.</th>
                                     <th>Transaction Id</th>
                                     <th>Payment date</th>
                                     <th>Amount</th>
                                     <th>Mode</th>
                                     <th>User's Email Id</th>
                                     </thead>
                                     <%
                                     PaymentDao pyd = new PaymentDao();
                                      ArrayList<Payment> payments = pyd.getAllPayments();
                                      int i=1;
                                      for(Payment pay : payments){
                                          String uEmail = pyd.getUserEmailByPaymentId(pay.getId());
                                     %>
                                      <tbody>
                                      <td><%=i++%></td>
                                      <td><%=pay.getTransaction_id()%></td>
                                      <td><%=pay.getPayment_date()%></td>
                                      <td><%=pay.getAmount()%></td>
                                      <td><%=pay.getMode()%></td>
                                      <td><%=uEmail%></td>
                                      </tbody>  
                                      <%}
                                     %>
                                     
                                 </table>
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
