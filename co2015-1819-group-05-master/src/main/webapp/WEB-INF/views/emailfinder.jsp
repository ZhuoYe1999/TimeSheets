    <%@ page import="java.sql.*" %>  <!-- need a database for the email address -->
    <%  
    String email=request.getParameter("email");  
    if(email.contains("@")&&email.contains(".")){  
    try{  
    Class.forName("oracle.jdbc.driver.OracleDriver");  
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
    PreparedStatement ps=con.prepareStatement("select * from user100 where email=?");  
    ps.setString(1,email);  
    ResultSet rs=ps.executeQuery();  
    if(rs.next()){  
    out.print("Unavailable! ");  
    }else{  
    out.print("Available!");  
    }  
    }catch(Exception e){out.print(e);}  
    }else{  
    out.print("Invalid email!");  
    }  
    %>  