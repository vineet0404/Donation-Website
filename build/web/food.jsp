<%-- 
    Document   : food
    Created on : 9 Apr, 2021, 9:48:40 PM
    Author     : kunal
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="index.css" type="text/css">
<title>Donate food</title>
<%@ include file="header.jsp" %>
<%@ include file="logout.jsp" %>
</head>
<body>
<%@ include file="header.jsp" %>
    <section>
                  <div class="container-fluid">
                      <div class="row" style="display: flex;">
                          <div class="col-md-6 volunterimg-spacing sharefood-img">
                          </div>
                          <div class="col-md-6 col-sm-12 col-xs-12">
                            <div class="form-spacing">
                                <div class="surplusfoodAlignment">
                                    <h2 class="sharefood-heading">Is this Surplus Food?</h2>
                                    <select class="shareFoodSelector" id="surplus" aria-required="true" required onchange="surplusFoodDropdown(this.value)">
                                        <option selected="" disabled="" hidden="" value="">Yes/No*</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                              <form class= "two" action="Final1.java" method="get">
                                    <h3 class="shareFoodSub-heading">Fill in the below form and we will help you connect to the city in the best</h3>
                                    
                                    <input type="text" id="fname" placeholder="Full Name*" required>

                                    <input type="number" id="Mobilenumber" placeholder="Mobile Number*" required>
                
                                    <input type="email" id="email" placeholder="Email Address*" required>
                                
                                <div class="form-group">
                                    <select id="city" class="selector" style="width: 47% !important;" required aria-required="true">
                                        <option selected="" disabled="" hidden="" value="">Select City*</option>
                                        <option value="Agra">Agra</option>
                                        <option value="Ahmedabad">Ahmedabad</option>
                                        <option value="Amravati">Amravati</option>
                                        <option value="Bangalore">Bangalore</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Bhuj">Bhuj</option>
                                        <option value="Bikaner">Bikaner</option>
                                        <option value="Chandigarh">Chandigarh</option>
                                        <option value="Chennai">Chennai</option>
                                        <option value="Delhi">Delhi</option>
                                        <option value="Guwahati">Guwahati</option>
                                        <option value="Hyderabad">Hyderabad</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jaipur">Jaipur</option>
                                        <option value="Jammu">Jammu</option>
                                        <option value="Kolhapur">Kolhapur</option>
                                        <option value="Kolkata">Kolkata</option>
                                        <option value="Lonavala">Lonavala</option>
                                        <option value="Mumbai">Mumbai</option>
                                        <option value="Nagpur">Nagpur</option>
                                        <option value="Pune">Pune</option>
                                        <option value="Rajkot">Rajkot</option>
                                        <option value="Shillong">Shillong</option>
                                        <option value="Udaipur">Udaipur</option>
                                        <option value="Ujjain">Ujjain</option>
                                        <option value="Varanasi">Varanasi</option>
                                        <option value="Yavatmal">Yavatmal</option>
                                        </select>
                                        <input type="text" id="pickupAddress" style="width: 48% !important;margin-left: -4px;" required placeholder="Food Pick-Up Address*">
                                </div>
                                <select id="meal" class="selector" required aria-required="true">
                                    <option selected="" disabled="" hidden="" value="">Meal Quantity*</option>
                                     <option value="50-200 Meals">50-200 Meals</option>
                                     <option value="200-500 Meals">200-500 Meals</option>
                                     <option value="500-1000 Meals">500-1000 Meals</option>
                                     <option value="1000+ Meals">1000+ Meals</option>
                                    </select>
                                
                                    <h3 class="promise-text">Also, good to know:</h3>
                                <div class="box">
                                    <p class="box-text">Our Robins serve people in their free time. Hence, food will be picked and served based on the availability of our Robins at the pick-up address.</p>
                                </div>
                                <div class="termsbox">
                                <div class="form-group" style="font-size: 11px !important;margin-bottom: 30px;width:90%;display: inline-flex;">
                                <input class="formcheckbox1" onclick="checkboxtest()" type="checkbox" id="checkbox1" value="By checking this box, I agree to follow the Robin Hood Army's core principles." required>
                                <p class="checkbox-text">By checking this box, I confirm the food quality is safe and fit for consumption.</p>
                                </div>
                                      </div>

                                <button class="shareFoodSubmit" id="formbutton" onclick="shareFoodSubmit()">
                                        <i class="fa fa-refresh fa-spin" id="submitButton"></i>Submit
                                      </button>


                                      <p class="shareFood-textbox" id="shareFoodMessage">Thank you for doing your bit - we will try our best to serve, you will be redirected to the local city WhatsApp group where you can coordinate with our Robins.</p>
                              </form>
                            </div>
                          </div>
                          </div>
                  </div>
    </section>
</body>
</html>