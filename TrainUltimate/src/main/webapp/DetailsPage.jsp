<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Page</title>
    <link rel="stylesheet" href="Details.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@800&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Source+Serif+4&display=swap" rel="stylesheet">

</head>

<style>

.train{
font-family: 'Source Serif 4', sans-serif;
font-size: 40px;
}
.heading{
    font-family: 'Roboto Slab', serif;
}
    .test{
        width: 150px;
        margin: 10px;
        display: initial;
    }
</style>
<body>
<center>
    <br><br>
    <h1 class="heading">TRAIN DETAILS</h1>
    <br><br>
    <br>
    <table border=2px  class="table table-bordered" style="width: 80%;">

        <tr class="train">
            <td><b>TrainNo</b></td>
            <td><b>TrainName</b></td>
            <td><b>Source</b></td>
            <td><b>Destination</b></td>
            <td><b>Fare</b></td>
        </tr>
        <tr>
            <td>1001</td>
            <td>Shatabdi express</td>
            <td>Bangalore</td>
            <td>Delhi</td>
            <td>2500 Rs</td>
        </tr>

        <tr>
            <td>1002</td>
            <td>Shatabdi Express</td>
            <td>Delhi</td>
            <td>Bangalore</td>
            <td>2500 Rs</td>
        </tr>
        <tr>
            <td>1003</td>
            <td>Udyan express</td>
            <td>Delhi</td>
            <td>Bangalore</td>
            <td>1500 Rs</td>
        </tr>
        <tr>
            <td>1004</td>
            <td>Udyan express</td>
            <td>Mumbai</td>
            <td>Bangalore</td>
            <td>1500 Rs</td>
        </tr>
        <tr>
            <td>1005</td>
            <td>Brindavan express</td>
            <td>Bangalore</td>
            <td>Chennai</td>
            <td>1000 Rs.</td>
        </tr>
        <tr>
            <td>1006</td>
            <td>Brindavan express</td>
            <td>Chennai</td>
            <td>Bangalore</td>
            <td>1000 Rs</td>
        </tr>


    </table><br>
    <br>
    <br>
    <form action="detailsPage">
        <tr>
            <td><input type="text" name="TrainNo" class="trainInput form-control test" placeholder="TrainNo"></td>
            <td><input type="text" name="TrainName" class="trainInput form-control test" placeholder="TrainName"></td>
            <td><input type="text" name="Source" class="trainInput form-control test" placeholder="Source"></td>
            <td><input type="text" name="Destination" class="trainInput form-control test" placeholder="Destination"></td>
            <td><input type="number" name="TicketPrice" class="trainInput form-control test" placeholder="TicketPrice"></td>
        </tr><br><br>
        <tr>
                <td><input type="submit" name="value" class="add" id="add-button" onclick="myFunction1()"  value="Add"></td>
        <script>
        function myFunction1() {
                  let a1 = prompt("To proceed please enter OTP", "");
                  let a2 = prompt("Please enter name", "");
                    let person = alert("Are you sure u want to add train?");
                    }
                    </script>

                <td><input type="submit" name="value" class="modify" id="modify-button" onclick="myFunction2()" value="Modify"></td>
                <script>
                function myFunction2() {
                          let a1 = prompt("To proceed please enter OTP", "");
                          let a2 = prompt("Please enter name", "");
                            let person = alert("Are you sure u want to modify train?");
                            }
                            </script>
                <td><input type="submit" name="value" class="delete" id="delete-button" onclick="myFunction3()" value="Delete"></td>
                <script>
                        function myFunction3() {
                                  let a1 = prompt("To proceed please enter OTP", "");
                                  let a2 = prompt("Please enter name", "");
                                    let person = alert("Are you sure u want to delete train?");
                                    }
                                    </script>
                </tr><br><br>

    </form><br>
    <a href="LoginPage.jsp"> <tr><input type="submit"  class="btn btn-warning" name="value" value="Logout"> </tr></a>

</center>
</body>
</html>



