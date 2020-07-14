   
<%@page import="beans.Hospital"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Upload Your Document Here</h1>
        <%
            String email = request.getParameter("email");
            System.out.println("mail:" + email);
            session.setAttribute("email", email);
            
            String hName = request.getParameter("hName");
            String hAddress = request.getParameter("hAddress");
            Hospital hospital = new Hospital();
            hospital.setName(hName);
            hospital.setAddress(hAddress);
            session.setAttribute("hospital", hospital);
             
            String dName = request.getParameter("dName");
             session.setAttribute("disease", dName);
             
            String doctorName = request.getParameter("docName");
            session.setAttribute("doctor", doctorName);
            
            String adminDate = request.getParameter("admit_date");
            session.setAttribute("admitDate", adminDate);
            
            String dischargeDate = request.getParameter("discharge_date");
            session.setAttribute("dischargeDate", dischargeDate);
            
            String billAmount = request.getParameter("billAmount");
            session.setAttribute("billAmount", billAmount);
            
        %>
        <form class="form" action="../ClaimController?op=claim" enctype="multipart/form-data" method="post">  
            <input type="file" id="file" name="file"  accept="image/*,.pdf">
            <input type="submit" name="submit" value="Submit" class="form-control btn btn-outline-primary"><br>
        </form>
    </body>
</html>
