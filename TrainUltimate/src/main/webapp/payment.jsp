<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment form</title>
  <link href="payment.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>

<body>
    <style>
    .button{
        cursor: pointer;
        padding: 0.5em 1em;
        background-color: #012481;
        color: white;
        font-family: 'Rubik', sans-serif;
      }</style>
  <div class="wrapper">
    <h2> Payment Form</h2>
    <form>
      <h4>Account</h4>
      <div class="input-group">
        <div class="input-box">
          <input type="text" placeholder="Full Name" required class="name">
          <i class="fa fa-user icon"></i>
        </div>
        <div class="input-box">
          <input type="text" placeholder="username" required class="name">
          <i class="fa fa-user icon"></i>
        </div>
      </div>
      <div class="input-group">
        <div class="input-box">
          <input type="email" placeholder="email" required class="name">
          <i class="fa fa-envelope"></i>
        </div>
      </div>

      <div class="input-group">
        <div class="input-box">
          <h4>Date of birth</h4>
          <input type="text" placeholder="DD" class="dob">
          <input type="text" placeholder="MM" class="dob">
          <input type="text" placeholder="YYY" class="dob">
        </div>
        <div class="input-box">
          <h4>Gender</h4>
          <input type="radio" name="gender" checked id="b1" class="radio">
          <label for="b1">Male</label>
          <input type="radio" name="gender" class="radio" id="b2">
          <label for="b2">Female</label>
        </div>
      </div>

      <div class="input-group">
        <div class="input-box">
          <h4>Payment Details</h4>
          <input type="radio" name="pay" id="bc1" checked class="radio">
          <label for="bc1">
            <span>
              <i class="fa fa-cc-visa">Credit card</i>
            </span>
          </label>
          <input type="radio" name="pay" id="bc2" class="radio">
          <label for="bc2">
            <span>
              <i class="fa fa-cc-paypal">paypal </i>
            </span>
          </label>
        </div>
      </div>

      <div class="input-group">
        <div class="input-box">
          <input type="tel" class="name" placeholder="card number" required>
          <i class="fa fa-credit-card icon"></i>
        </div>
      </div>

      <div class="input-group">
        <div class="input-box">
          <input type="tel" required placeholder="Card CVC">
          <i class="fa fa-user icon"></i>
        </div>
        <div class="input-box">
          <select>
            <option>01 Dec</option>
            <option>02 Dec</option>
            <option>03 Dec</option>
          </select>
          <select>
            <option>2020</option>
            <option>2021</option>
            <option>2022</option>
          </select>
        </div>
      </div>

     <form>

    <button type="button" class="pay-btn" onclick="alert('Payment Successfull!! Click on Next')"><b><i>Pay Now</i></b></button>
               <a href="confirm.jsp" class="button">NEXT</a>

    </form>
      </div>

    </form>


  </div>

</body>

</html>




