<%@page import="beans.User" %>
<div class="sidebar-menu sticky-sidebar-menu">

    <!-- logo start -->
    <div class="logo">
        <h1><a href="#">Hello  ${user.name}</a></h1>
    </div>

    <!-- if logo is image enable this -->
    <!-- image logo --
    <div class="logo">
      <a href="index.html">
        <img src="image-path" alt="Your logo" title="Your logo" class="img-fluid" style="height:35px;" />
      </a>
    </div>
    <!-- //image logo -->

    <div class="logo-icon text-center">
        <a href="dashboard.jsp" title="logo"><img src="assets/images/logo.png" alt="logo-icon"> </a>
    </div>
    <!-- //logo end -->

    <div class="sidebar-menu-inner">

        <!-- sidebar nav start -->
        <ul class="nav nav-pills nav-stacked custom-nav">
            <li class="active" ><a href="dashboard.jsp"><i></i><span> Dashboard</span></a>
            </li>
            <li class="">
                <a href="../myPolicies.jsp"><i class=""></i>
                    <span>Buy New Policy<i class=""></i></span></a>
            </li>
            <li class="menu-list"><a href="#"><i class=""></i>
                    <span>Manage Policy <i class=""></i></span></a>
                <ul class="sub-menu-list">
                    <li><a href="allPolicies.jsp">All Policies</a></li>

                    <li><a href="renew.jsp">Renew</a></li>
                    <li><a href="claim.jsp">Claim</a></li>

                </ul>
            </li>

            <li class="menu-list"><a href="#"><i class=" "></i>
                    <span>Payment Details <i class=""></i></span></a>
                <ul class="sub-menu-list">
                    <li><a href="allPayments.jsp">All Payments</a></li>
                 </ul>
                    
            </li>

           
              <li class="menu-list"><a href="#"><i class=" "></i>
                    <span>Policy Holders <i class=""></i></span></a>
                <ul class="sub-menu-list">
                    <li><a href="allPolicyHolders.jsp"><i class=""></i>All Policy Holders</a></li>
                 </ul>
             </li>

            
             <li class="menu-list"><a href="#"><i class=" "></i>
                    <span>Claim Details <i class=""></i></span></a>
                <ul class="sub-menu-list">
                    <li><a href="allClaims.jsp"><i class=""></i>All Claims</a></li>
                 </ul>
                    
            </li>

            <li class="menu-list"><a href="#"><i class=" "></i>
                    <span>Review <i class=""></i></span></a>
            </li>
            <li class="menu-list"><a href="#"><i class=" "></i>
                    <span>User <i class=""></i></span></a>
                <ul class="sub-menu-list">
                    <li><a href="../logout.jsp?op=user">Logout</a></li>
                    <li><a href="#">Forgot Password</a></li>
                </ul>
            </li>

        </ul>
        <!-- //sidebar nav end -->
        <!-- toggle button start -->
        <!-- //toggle button end -->
    </div>
</div>