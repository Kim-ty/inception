<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

  <title>Join</title>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <div class="login-box well">

          <form role="form" method="post" action="/user/joinchk">
            <legend>Join</legend>

            <div class="form-group">
              <label for="userid">ID</label>
              <input id="userid" type="text" name="userid" class="form-control" placeholder="Enter Your ID" />
            </div>

            <div class="form-group">
              <label for="uesrpw">password</label>
              <input id="userpw" type="password" name="userpw" class="form-control" placeholder="Enter Your password" />
            </div>

            <div class="form-group">
              <label for="userpw2">re-password</label>
              <input id="userpw2" type="password" name="userpw2" class="form-control" placeholder="Enter Your password" />
            </div>

            <div class="form-group">
              <label for="useremail">Email</label>
              <input id="useremail" type="text" name="useremail" class="form-control" placeholder="Enter Your Email" />
            </div>
            
             <div class="form-group">
              <label for="useremail2">re - Email</label>
              <input id="useremail2" type="text" name="useremail2" class="form-control" placeholder="Enter Your Email" />
            </div>
            
             <div class="form-group">
              <label for="profilepicture">profilepicture</label>
              <input id="profilepicture" type="text" name="profilepicture" class="form-control" placeholder="Insert the jpgfile" />
            </div>
            
            <div class="form-group">
              <label for="sex">SEX</label>
              <input id="sex" type="text" name="sex" class="form-control" placeholder="Enter Your sex" />
            </div>
            


            <div class="form-group">
              <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="sign up" />
            </div>
            
            <div class="form-group">
              <input type="reset" class="btn btn-default btn-login-submit btn-block m-t-md" value="reset" />
            </div>
            
          </form>
         
        </div>
      </div>
    </div>
  </div>
</body>

</html>
