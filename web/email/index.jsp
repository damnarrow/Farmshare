<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/column_left_email.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
<h1>Join our Farm Share!</h1>
<p>Joining will give you access to vegetables and/or fruit every Wednesday from
the local farm!  Just fill out the form below.  See the chart below for
your payment bracket.  The payment bracket is based off of your family's
income.</p>

<img src="<c:url value='/images/income-levels.jpg'/>" 

<p><i>${message}</i></p>

<form action="<c:url value='/user/subscribeToEmail'/>" method="post">
    <label>Email</label>
    <input type="email" name="email" required><br>
    <label>First Name</label>
    <input type="text" name="firstName" required><br>
    <label>Last Name</label>
    <input type="text" name="lastName" required><br>        
    <label>Address1</label>
    <input type="text" name="address1" required><br>
    <label>Address2</label>
    <input type="text" name="address2" required><br>
    <label>City</label>
    <input type="text" name="city" required><br>
    <label>State</label>
    <input type="text" name="state" required><br>
    <label>Zip</label>
    <input type="text" name="zip" required><br>
    <label>Credit Card Type</label>
    <input type="text" name="creditCardType" required><br>
    <label>Credit Card Number</label>
    <input type="text" name="creditCardNumber" required><br> 
    <label>Credit Card Expiration</label>
    <input type="text" name="creditCardExpirationDate" required><br> 
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" id="submit">
</form>

</section>

<jsp:include page="/includes/column_right_news.jsp" />
<jsp:include page="/includes/footer.jsp" />