<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  <title>Login</title>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <div class="login-box well">

          <form role="form" method="post" action="#">
            <legend>Login</legend>

            <div class="form-group">
              <label for="userid">ID or Email</label>
              <input name="userid" id="userid" placeholder="E-mail or Username" type="text" class="form-control" />
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input name="password" id="password" placeholder="Password" type="password" class="form-control" />
            </div>
            <div class="form-group">
              <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="sign in" />
            </div>
          </form>
          <form role="form" action="JoinForm_adjust_CSS.html" method="post">
            <div class="form-group">
              <input type="submit" class="btn btn-default btn-login-submit btn-block m-t-md" value="sign up" />
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</body>

</html>
