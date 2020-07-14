
<%@page import="beans.Admin"%>
<%@page import="daos.AdminDao"%>
<%
    AdminDao ad = new AdminDao();
    Admin admin = ad.getDetailsByLogin("axaykpatidar", "Axay@123");

%>
<aside class="menu-sidebar2">
    <div class="logo">
        <a href="dashboard.jsp">
            <img src="../<%=admin.getImage()%>" alt="<%=admin.getName()%>" />
        </a>
    </div>
    <div class="menu-sidebar2__content js-scrollbar1">
        <%-- <div class="account2" >
             <div class="image img-cir img-120">
                 <img src="images/icon/avatar-big-01.jpg" alt="John Doe" />
             </div>
             <h4 class="name">john doe</h4>
             <a href="#">Sign out</a>
         </div> --%>
        <nav class="navbar-sidebar2">
            <ul class="list-unstyled navbar__list">
                <li class="active has-sub">
                    <a class="js-arrow" href="dashboard.jsp">
                        <i class="fas fa-tachometer-alt"></i>Dashboard
                    </a>
                </li>

                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-th"></i>Manage Policy
                        <span class="arrow">
                            <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="allPolicies.jsp">
                                <i class="fas fa-desktop"></i>All Policies</a>
                        </li>
                        <li>
                            <a href="addNewPolicy.jsp">
                                <i class="fas fa-plus"></i>Add New Policy</a>
                        </li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-users"></i>Manage Policy Holder
                        <span class="arrow">
                            <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="allPolicyHolder.jsp">
                                <i class="fas fa-male"></i>All Policy Holders</a>
                        </li>

                    </ul>
                </li>

                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-user"></i>Manage Users
                        <span class="arrow">
                            <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="allUsers.jsp">
                                <i class="fas fa-male"></i>All Users</a>
                        </li>


                    </ul>
                </li>

                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-tasks"></i>Manage Claims
                        <span class="arrow">
                            <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="allClaims.jsp">
                                <i class="fas fa-male"></i>All Claims</a>
                        </li>
                        <li>
                            <a href="pendingClaims.jsp">
                                <i class="far fa-check-square"></i>Pending Claims</a>
                        </li>
                        
                        <li>
                            <a href="acceptedClaims.jsp">
                                <i class="fas fa-calendar-alt"></i>Accepted Claims</a>
                        </li>


                        <li>
                            <a href="confirmedClaims.jsp">
                                <i class="fas fa-calendar-alt"></i>Confirmed Claims</a>
                        </li>


                    </ul>
                </li>

                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-money-bill-alt"></i>Manage Payments
                        <span class="arrow">
                            <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="allPayments.jsp">
                                <i class="fas fa-history"></i>All Payment History</a>
                        </li>
                        <li>
                            <a href="register.html">
                                <i class="fas fa-money"></i>Policy Wise Payment</a>
                        </li>
                        <li>
                            <a href="forget-pass.html">
                                <i class="fas fa-unlock-alt"></i>Forget Password</a>
                        </li>
                    </ul>
                </li>
                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-desktop"></i>UI Elements
                        <span class="arrow">
                            <i class="fas fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="button.html">
                                <i class="fab fa-flickr"></i>Button</a>
                        </li>
                        <li>
                            <a href="badge.html">
                                <i class="fas fa-comment-alt"></i>Badges</a>
                        </li>
                        <li>
                            <a href="tab.html">
                                <i class="far fa-window-maximize"></i>Tabs</a>
                        </li>
                        <li>
                            <a href="card.html">
                                <i class="far fa-id-card"></i>Cards</a>
                        </li>
                        <li>
                            <a href="alert.html">
                                <i class="far fa-bell"></i>Alerts</a>
                        </li>
                        <li>
                            <a href="progress-bar.html">
                                <i class="fas fa-tasks"></i>Progress Bars</a>
                        </li>
                        <li>
                            <a href="modal.html">
                                <i class="far fa-window-restore"></i>Modals</a>
                        </li>
                        <li>
                            <a href="switch.html">
                                <i class="fas fa-toggle-on"></i>Switchs</a>
                        </li>
                        <li>
                            <a href="grid.html">
                                <i class="fas fa-th-large"></i>Grids</a>
                        </li>
                        <li>
                            <a href="fontawesome.html">
                                <i class="fab fa-font-awesome"></i>FontAwesome</a>
                        </li>
                        <li>
                            <a href="typo.html">
                                <i class="fas fa-font"></i>Typography</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</aside>