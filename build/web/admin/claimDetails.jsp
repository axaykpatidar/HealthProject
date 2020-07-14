<%@page import="beans.PolicyHolder"%>
<%@page import="daos.PolicyHolderDao"%>
<%@page import="daos.ClaimDao"%>
<%@page import="beans.Claim"%>
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
        <title>Claim Details</title>

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




                <div class="main-content">


                    <div class="row">

                        <%                            int cId = Integer.parseInt(request.getParameter("cId"));
                            ClaimDao cd = new ClaimDao();
                            Claim claim = cd.getClaimById(cId);
                            PolicyHolderDao phd = new PolicyHolderDao();
                            PolicyHolder pHolder = phd.getPolicyHolderByClaimId(cId);
                            PolicyDao pd = new PolicyDao();
                            Policy policy = pd.getPolicyByPolicyHolderId(pHolder.getPhId());
                            //  String reason = cd.getClaimReasonById(cId);
%>
                        <div class="col-lg-12">

                            <center><h3></h3></center>
                            <div class="table-responsive table--no-card m-b-30">
                                 <div class="card col col-md-10" style=" text-align: justify;
                                     text-justify: inter-word;">
                                     <div class="card-body">
                                 <img class="card-img-bottom" width="10px" height="20px" src="../<%=pHolder.getImage()%>" alt="Card image" style="width:100%">
                               <h4 class="card-title">Claimed By : <%=pHolder.getName()%></h4>
                                        <h4 class="card-title">Claimed On : <%=claim.getClaim_date()%></h4>
                                        <h4 class="card-title">Claiming Status : <%=claim.getStatus()%></h4>
                                        <%--             <p class="card-text">Reason : <%=reason%></p> --%>
                                    </div>
                                    <br/><br/>

                                    <h4 class="card-title">Policy Name : <%=policy.getName()%></h4>
                                    <h4 class="card-title">Total Premium paid : </h4>
                                    <h4 class="card-title">Total Sum Assured : <%=claim.getAmount()%></h4>

                                    <a href="#" class="btn btn-info">Click here to view documents</a><br>

                                    <%
                        if (claim.getStatus().equalsIgnoreCase("pending")) {%>
                                    <a href="../ClaimController?op=acceptClaimRequest&cId=<%=claim.getId()%>" class="btn btn-success">Accept Claim Request</a>  
                                    <%}
                                    %>

                                    <%
                        if (claim.getStatus().equalsIgnoreCase("Accepted")) {%>
                                    <a href="claimConfirmation.jsp?cId=<%=claim.getId()%>" class="btn btn-success">Confirm Claim Request</a>  
                                    <%}
                                    %>

                                    <%
                        if (claim.getStatus().equalsIgnoreCase("success")) {%>
                                    <a href="#" class="btn btn-success">View payment invoice</a> <br>
                                    <a href="otherDetails.jsp?cId=<%=claim.getId()%>" class="btn btn-outline-dark">Update Database</a> 
                                    <%}
                                    %>


                                </div>
                                <a href="<%=request.getHeader("referer")%>" class="btn btn-primary">Back </a><br><br>
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
