<%@page import="beans.Policy"%>
<%@page import="daos.PolicyDao"%>
<%@page import="daos.PolicyHolderDao"%>
<%@page import="daos.UserDao"%>
<%@page import="beans.PolicyHolder"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.User"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <i class="fa-fa-user"><title>Claim Page</title></i>

    <!-- Template CSS -->
    <link rel="stylesheet" href="assets/css/style-liberty.css">

    <!-- google fonts -->
    <link href="//fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900&display=swap" rel="stylesheet">
    <script>
        function openClaimForm() {
            claimDiv.style.display = "block";
        }
    </script>

</head>

     <script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src="//m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');
            }
        })();
    </script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');
            }
        })();
    </script>
    <script>
        (function () {
            if (typeof _bsa !== 'undefined' && _bsa) {
                // format, zoneKey, segment:value, options
                _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');
            }
        })();
    </script>
    <!--<script>(function(v,d,o,ai){ai=d.createElement("script");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, "//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34");</script>-->
    <div id="codefund"><!-- fallback content --></div>
    <script src="https://codefund.io/properties/441/funder.js" async="async"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-149859901-1');
    </script>

    <script>
        window.ga = window.ga || function () {
            (ga.q = ga.q || []).push(arguments)
        };
        ga.l = +new Date;
        ga('create', 'UA-149859901-1', 'demo.w3layouts.com');
        ga('require', 'eventTracker');
        ga('require', 'outboundLinkTracker');
        ga('require', 'urlChangeTracker');
        ga('send', 'pageview');
    </script>
    <script async src='assets/js/autotrack.js'></script>

    <meta name="robots" content="noindex">
<body><link rel="stylesheet" href="assets/css/demobar_w3_4thDec2019.css">
    <%
        User user = (User) session.getAttribute("user");
        System.out.println("user name : " + user.getName());
        PolicyDao pd = new PolicyDao();
        ArrayList<Policy> policyList = pd.getAllPolicyByUserId(user.getId());
    %>

    <!-- Demo bar start -->
    <div id="w3lDemoBar" class="w3l-demo-bar">
        <a href="dashboard.jsp" ga-on="click" ga-event-category="Collective Admin Panel Template" ga-event-action="view" ga-event-label="Collective Admin Panel - view">
            <span class="w3l-icon -back">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path opacity=".87" fill="none" d="M0 0h24v24H0V0z"/><path d="M16.62 2.99c-.49-.49-1.28-.49-1.77 0L6.54 11.3c-.39.39-.39 1.02 0 1.41l8.31 8.31c.49.49 1.28.49 1.77 0s.49-1.28 0-1.77L9.38 12l7.25-7.25c.48-.48.48-1.28-.01-1.76z"/></svg>
            </span>
            <span class="w3l-text">Back</span>
        </a>
    </div>

    <div class="se-pre-con"></div>
    <section>
        <!-- sidebar menu start -->
        <jsp:include page="sidebar.jsp"></jsp:include>
            <!-- //sidebar menu end -->
            <!-- header-starts -->
        <jsp:include page="navbar.jsp"></jsp:include>
            <!-- //header-ends -->
            <!-- main content start -->
            <div class="main-content">

                <!-- content -->
                <div class="container-fluid content-top-gap">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb my-breadcrumb">
                            <li class="breadcrumb-item"><a href="dashboard.jsp">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                        </ol>
                    </nav>


                    <!-- data tables -->
                    <div class="data-tables">
                        <div class="row">
                            <div class="col-lg-12 mb-4">
                                <div class="card card_border p-4">
                                    <h3 class="card__title position-absolute">All Policies </h3>
                                    <div class="table-responsive">
                                        <table id="example" class="display" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>Policy Name</th>
                                                    <th>Sum Assured</th>
                                                    <th>Time Duration</th>
                                                    <th>Policy Type</th>
                                                    <th>Premium</th>
                                                    <th>Claim</th>
                                                </tr>
                                            </thead>
                                        <%
                                            for (Policy policy : policyList) {
                                                System.out.println("name:" + policy.getName());
                                                int time_duration = (Integer.parseInt(policy.getMin_time_duration()));
                                                int sum_assured = Integer.parseInt(policy.getMin_sum_assured()) * time_duration;

                                        %>
                                        <tbody>

                                            <tr>
                                                <td><%=policy.getName()%></td>
                                                <td><%=sum_assured%></td>
                                                <td><%=time_duration%></td>
                                                <td><%=policy.getType()%></td>
                                                <td><%=(sum_assured) / 100%></td>
                                                <td><button type="button" name="button" class="btn btn-primary" onclick="openClaimForm()" >Click Here To Claim</button></td>
                                            </tr>

                                            <%}
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- //data tables -->
                <div class="data-tables" id="claimDiv" style="display: none">
                    <div class="row">
                        <div class="col-lg-12 mb-4">
                            <div class="card card_border p-4">
                                <h3 class="card__title position-absolute"> Tell us few details : </h3><br><br>
                                <form class="form" action="otherDetails.jsp"  method="post">
                                    <input type="text" name="insurance" value="Health Insurance" readonly="" class="form-control"><br>
                                    <input type="text" name="contact" placeholder="Your Registered Mobile No." class="form-control"><br>
                                    <input type="text" name="name" placeholder="Your Name" class="form-control"><br>
                                    <input type="text" name="email" placeholder="Your Email Id" class="form-control"><br>
                                    <input type="text" name="reason" placeholder="Reason of Claim" class="form-control"><br>
                                    <input type="submit" name="submit" value="Next" class="form-control btn btn-outline-primary"><br>

                                </form>                                
                               
                                
                            </div>

                        </div>
                    </div>
                </div>
                <div>

                </div>
                <!-- accordions -->
                <!-- //accordions -->

                <!-- modals -->

                <!--footer section start-->
                <footer class="dashboard">
                    <p>&copy 2020 Collective. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank"
                                                                                 class="text-primary">W3layouts.</a></p>
                </footer>
                <!--footer section end-->
                <!-- move top -->
                <button onclick="topFunction()" id="movetop" class="bg-primary" title="Go to top">
                    <span class="fa fa-angle-up"></span>
                </button>
                <script>
                    // When the user scrolls down 20px from the top of the document, show the button
                    window.onscroll = function () {
                        scrollFunction()
                    };

                    function scrollFunction() {
                        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                            document.getElementById("movetop").style.display = "block";
                        } else {
                            document.getElementById("movetop").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                </script>
                <!-- /move top -->


                <script src="assets/js/jquery-3.3.1.min.js"></script>
                <script src="assets/js/jquery-1.10.2.min.js"></script>

                <!-- chart js -->
                <script src="assets/js/Chart.min.js"></script>
                <script src="assets/js/utils.js"></script>
                <!-- //chart js -->

                <!-- Different scripts of charts.  Ex.Barchart, Stackedchart, Linechart, Piechart -->
                <script src="assets/js/bar.js"></script>
                <script src="assets/js/stacked.js"></script>
                <script src="assets/js/linechart.js"></script>
                <script src="assets/js/pie.js"></script>
                <!-- //Different scripts of charts.  Ex.Barchart, Stackedchart, Linechart, Piechart -->

                <!-- data tables js -->
                <script>
                    $(document).ready(function () {
                        $('#example').DataTable();
                    });
                </script>
                <!-- //data tables js -->

                <script src="assets/js/jquery.dataTables.min.js"></script>


                <script src="assets/js/faq.js"></script>

                <script src="assets/js/jquery.nicescroll.js"></script>
                <script src="assets/js/scripts.js"></script>

                <!-- close script -->
                <script>
                    var closebtns = document.getElementsByClassName("close-grid");
                    var i;

                    for (i = 0; i < closebtns.length; i++) {
                        closebtns[i].addEventListener("click", function () {
                            this.parentElement.style.display = 'none';
                        });
                    }
                </script>
                <!-- //close script -->

                <!-- disable body scroll when navbar is in active -->
                <script>
                    $(function () {
                        $('.sidebar-menu-collapsed').click(function () {
                            $('body').toggleClass('noscroll');
                        })
                    });
                </script>
                <!-- disable body scroll when navbar is in active -->

                <!-- loading-gif Js -->
                <script src="assets/js/modernizr.js"></script>
                <script>
                    $(window).load(function () {
                        // Animate loader off screen
                        $(".se-pre-con").fadeOut("slow");
                        ;
                    });
                </script>
                <!--// loading-gif Js -->


                <!-- Bootstrap Core JavaScript -->
                <script src="assets/js/bootstrap.min.js"></script>


                </body>

                </html>
