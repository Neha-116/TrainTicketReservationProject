<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login and register page</title>
    <link rel="stylesheet" href= "simple.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Serif+4:wght@600&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@800&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    <style>
        @import url(https://fonts.googleapis.com/css?family=Roboto:300);

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .heading{
            font-family: 'Roboto Slab', serif;
            margin-top:50px;
            font-size:50px;
        }

        .login{
            font-family: 'Source Serif 4', sans-serif !important;
        }
        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }
        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 270px;
            height: 50px;
            margin: 0 0 15px;
            padding: 20px;
            box-sizing: border-box;
            font-size: 14px;
            border-radius: 25px;
            border: 0px;
        }


        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }
        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }
        .form .register-form {
            display: none;
        }
        .container {
            position: relative;
            z-index: 1;
            max-width: 300px;
            margin: 0 auto;
        }
        .container:before, .container:after {
            content: "";
            display: block;
            clear: both;
        }
        .container .info {
            margin: 50px auto;
            text-align: center;
        }
        .container .info h1 {
            margin: 0 0 15px;
            padding: 0;
            font-size: 36px;
            font-weight: 300;
            color: #1a1a1a;
        }
        .container .info span {
            color: #4d4d4d;
            font-size: 12px;
        }
        .container .info span a {
            color: #000000;
            text-decoration: none;
        }
        .container .info span .fa {
            color: #EF3B3A;
        }
        body {

            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .fa{
        width: 30px;
         height: 30px;
         }


        .images
        {
        flex: row;
        }

        .images>img{
        width:-100px;
        height:-50px;
        }

        .facebook {
        background: #3b5998;
        color: white;
        width: 20px;
         height: 20px;
         margin: 0 5px;
        }

        .google {
        color: white;
        background: #db4a39;
        width: 20px;
         height: 20px;
         margin: 0 5px;
        }



    </style>
<body>
<marquee width="100%" direction="left" height="100px">
    <h1 class="heading" style="font-weight: bolder">WELCOME TO TRAIN TICKET RESERVATION BOOKING SYSTEM</h1>    </marquee>



<div class="login-page">
    <div class="form" >
        <h3 class="login">LOGIN</h3>
        <form class="login-form" action="Login" onsubmit="MyFunction()"  >
            <input type="text" placeholder="Username"  name="username" />
            <input type="password" placeholder="Password"  name="password" />
            <button class="btn btn-primary rounded-pill">login</button>

            <footer class="text-center text-white">

            <p class="message">Not registered? <a href="RegistrationPage.html">Create an account</a></p>
            <div class="images">
                <a href="RegistrationPage.html" class="google"><i class="fa fa-google"></i>
                <a href="https://www.facebook.com/" class="facebook"><i class="fa fa-facebook"></i>


            </div>
        </form>
    </div>
</div>

<script>
    $('.text a').click(function(){
        $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
    });
</script>



</footer>
</body>
</html>