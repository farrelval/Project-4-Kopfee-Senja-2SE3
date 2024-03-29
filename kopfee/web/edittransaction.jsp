<%-- 
    Document   : createtransaction
    Created on : Jul 13, 2022, 12:54:25 PM
    Author     : Haikal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="config.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <!-- Font Awesome CDN Link -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        
        <!-- JS Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
        
        <title>Edit Transaction | Kopfee Senja</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div>
                    <form action="EditTransaction" method="POST">
                        
                        <%
                                DBConnection dbcon = new DBConnection();
                                Connection con = dbcon.open();
                                PreparedStatement pst;
                                ResultSet rs;

                                String id = request.getParameter("id");
                                pst = con.prepareStatement("SELECT * FROM transaction WHERE id = ?");
                                pst.setString(1, id);
                                rs = pst.executeQuery();
                                
                                while(rs.next()){
                                    

                            %>
                            
                        <div class="form-group">
                            <h3>Edit Transaction</h3>
                        </div>
                            
                        <div class="form-group">
                            <label>id</label>
                            <input type="text" name="id" id="id" class="form-control" placeholder="Your Name..." value="<%= rs.getString("id")%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" id="name" class="form-control" placeholder="Your Name..." value="<%= rs.getString("name")%>" required>
                        </div>

                        <div class="form-group">
                            <label>Number</label>
                            <input type="text" name="number" id="number" class="form-control" placeholder="Your Number..." value="<%= rs.getString("number")%>"required>
                        </div>

                        <div class="form-group">
                            <label>Order Name 1</label>
                            <input type="text" name="ordername1" id="ordername1" class="form-control" placeholder="What is your order..." value="<%= rs.getString("ordername1")%>"required>
                        </div>
                        
                        <div class="form-group">
                            <label>Quantity 1</label>
                            <input type="text" name="orderamount1" id="orderamount1" class="form-control" placeholder="How much..." value="<%= rs.getString("orderamount1")%>"required>
                        </div>
                        
                        <div class="form-group">
                            <label>Order Name 2</label>
                            <input type="text" name="ordername2" id="ordername2" class="form-control" placeholder="What is your order..." value="<%= rs.getString("ordername2")%>">
                        </div>
                        
                        <div class="form-group">
                            <label>Quantity 2</label>
                            <input type="text" name="orderamount2" id="orderamount2" class="form-control" placeholder="How much..." value="<%= rs.getString("orderamount2")%>">
                        </div>
                        
                        <div class="form-group">
                            <label>Order Name 3</label>
                            <input type="text" name="ordername3" id="ordername3" class="form-control" placeholder="What is your order..." value="<%= rs.getString("ordername3")%>">
                        </div>
                        
                        <div class="form-group">
                            <label>Quantity 3</label>
                            <input type="text" name="orderamount3" id="orderamount3" class="form-control" placeholder="How much..." value="<%= rs.getString("orderamount3")%>">
                        </div>
                        
                        <div class="form-group">
                            <label>Date</label>
                            <input type="datetime-local" name="date" id="date" class="form-control" value="<%= rs.getString("date")%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Message</label>
                            <input type="text" name="ordermessage" id="ordermessage" class="form-control" placeholder="Message..." value="<%= rs.getString("ordermessage")%>" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Status</label>
                            <select class="form-control" name="status">
                                <option value="pending">Pending</option>
                                <option value="done">Done</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>Total Price</label>
                            <input type="text" name="total" id="total" class="form-control" placeholder="Price in total..." value="<%= rs.getString("total")%>" required>
                        </div>
                        
                        <div class="form-group">
                            <button type="submit" class="btn btn-success">Send</button>
                        </div>
                            
                        <%}%>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
