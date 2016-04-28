<jsp:include page="/includes/header.jsp" />
<jsp:include page="/includes/column_left_all.jsp" />

<section>
    
<h1>Thanks for joing our CSA!  Please send your payment through your bank
to the email csa@supersecure.net.  You will receive a payment receipt
via the email you provided.</h1>
<p>Here is the information that you entered:</p>

<label  class="no_pad_top">Email</label>
<span>${user.email}</span><br>
<label class="no_pad_top">First Name</label>
<span>${user.firstName}</span><br>
<label class="no_pad_top">Last Name</label>
<span>${user.lastName}</span><br>
<label  class="no_pad_top">Address1</label>
<span>${user.address1}</span><br>
<label class="no_pad_top">Address2</label>
<span>${user.address2}</span><br>
<label class="no_pad_top">City</label>
<span>${user.city}</span><br>
<label  class="no_pad_top">State</label>
<span>${user.state}</span><br>
<label class="no_pad_top">Zip</label>
<span>${user.zip}</span><br>
<label class="no_pad_top">Credit Card Type</label>
<span>${user.creditCardType}</span><br>
<label class="no_pad_top">Credit Card Expiration</label>
<span>${user.creditCardExpirationDate}</span><br>

</section>

<jsp:include page="/includes/column_right_news.jsp" />
<jsp:include page="/includes/footer.jsp" />