<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Passenger details</title>
    <link rel="stylesheet" href= "reservation.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@800&display=swap" rel="stylesheet">
      <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Source+Serif+4&display=swap" rel="stylesheet">


</head>
<style>
    .heading{
        font-family: 'Roboto Slab', serif;
          font-size:50px;
        }

    .test{
        display: initial;
        margin-top: 10px;
        margin-left: 10px;
    }
    .test1{
        margin-left: 10px;
    }
    .text-primary{
    font-family: 'Source Serif 4', sans-serif;
    }


</style>
<br>
<br>

<center>
    <marquee width="60%" direction="left" height="100px">
        <h1 class="heading">Train Ticket Reservation</h1>    </marquee>
    <font color="black">
        <br>
        <br>

        <form action="addPassengers">
            <legend class="text-primary"><b>Passenger Details</b></legend>
            <tr><input id="NumberOfPassengers"  class="form-control" style="width: 300px" type = "number" max="10" name="noOfPassengers" placeholder="Number of passengers" required/></tr>
            <div class="form-group">

            </div>

            </div>
            <div id="details">

            </div><br>
    </font>
    <br>
    <div class="col-sm-4">
        <legend class="text-primary"><b>Further Information</b></legend>
        <p>The passenger who booked should get any of these proofs( Passport / PAN Card / Driving License / Photo ID card issued by Central / State Govt) during the journey in original.</p>
        <input type="file"  class="form-control" style="width: 300px" value="Upload">
    </div>
    <br>

    <input type="number" name="trainNo"  style="width: 300px" readonly value="${train.trainNo}">
    <br>
    <br>
    <div class="col-sm-8">
        <legend class="text-primary"><b>Terms and Mailing</b></legend>
        <br><br>
        <div class="form-group">
            <input type="checkbox" name="terms" required><label>* I accept the <a href="#">Terms and Conditions</a></label>
            <br>

        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            <br>
            <br>
            <button  type="submit" class="btn btn-primary">Confirm</button>
        </div>
    </div>
    </form>
    </div>
    </div>
    </div>
    </body>
    <script  src="https://code.jquery.com/jquery-3.6.0.js"   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="   crossorigin="anonymous"></script>
    <script>
        $('#NumberOfPassengers').on('input',function(e){
            $('#details').html('');
            var val=$(this).val();
            for(let i = 1; i <= val; i++){
                $('#details').append('<br><label for="name">Name:</label>'+
                    '<input type="text" class="form-control test" style="width: 300px" name="name'+i+'" id="name" class="trainInput" placeholder="Name">'+
                    '<label for="age"  class="test1">Age:</label>'+
                    '<input type="text" class="form-control test" style="width: 300px"name="age'+i+'"    id="age" class="trainInput" placeholder="Age">'+
                    '<label for="gender" class="test1">Gender:&emsp;</label>'+
                    '<select class="form-control test" style="width: 300px" name="gender'+i+'" id="gender" >'+
                    '<option value="">select</option>'+
                    '<option value="M">Male</option>'+
                    '<option value="F">Female</option>'+
                    '</select>');
            }

        });

    </script>
</html>
</center>
</body>