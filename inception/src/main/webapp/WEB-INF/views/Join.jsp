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
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
	


$(document).ready(function(){
	
	$("#userpw2").blur(function(){
		  var pw1 = $("#userpw").val();
		  var pw2 = $("#userpw2").val();
		  if(pw1 != pw2){
			  $("#content2").text("암호가 일치하지 않습니다").css("color","red");
		  }else{
			  $("#content2").text("암호가 일치합니다").css("color","blue");
		  }
		  
		 });
	$("#useremail2").blur(function(){
		  var email1 = $("#useremail").val();
		  var email2 = $("#useremail2").val();
		  if(email1 != email2){
			  $("#content3").text("이메일이 일치하지 않습니다").css("color","red");
		  }else{
			  $("#content3").text("이메일이 일치합니다").css("color","blue");
		  }
		  
		 });
	
	 $("#userid").blur(function(){
		 var userinfo = $("#insert_form").serialize();
		$.ajax({
			type:"GET",
			url:"/user/idchk",
			data:userinfo,
			success:function(idchk){
				if(1==idchk){
					$("#content").text("중복된 아이디입니다").css("color","red");
				}else{
					$("#content").text("사용가능한 아이디 입니다").css("color","blue");
				}
				
			}
		}); 
	 });
	
});

</script>

  <title>Join</title>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <div class="login-box well">

          <form id="insert_form" role="form" method="post" action="/user/joinchk">
            <legend>Join</legend>

            <div class="form-group">
              <label for="userid">ID</label>
              <input id="userid" type="text" name="userid" class="form-control" placeholder="Enter Your ID" />
              <span id="content"> </span>
            </div>

            <div class="form-group">
              <label for="password">password</label>
              <input id="userpw" type="password" name="userpw" class="form-control" placeholder="Enter Your password"  />
            </div>

            <div class="form-group">
              <label for="re-password">re-password</label>
              <input id="userpw2" type="password" name="userpw2" class="form-control" placeholder="Enter Your password"/>
              <span id="content2"> </span>
            </div>

            <div class="form-group">
              <label for="useremail">Email</label>
              <input id="useremail" type="text" name="useremail" class="form-control" placeholder="Enter Your Email" />
            </div>
            
             <div class="form-group">
              <label for="useremail2">re - Email</label>
              <input id="useremail2" type="text" name="useremail2" class="form-control" placeholder="Enter Your Email" />
              <span id="content3"> </span>
            </div>
            
             <div class="form-group">
              <label for="profilepicture">profilepicture</label>
              <input id="profilepicture" type="text" name="profilepicture" class="form-control" placeholder="Insert the jpgfile" />
            </div>
            
            <div class="form-group">
            	<input id="sex"type="radio" name="sex" value="남자">남자<br/>
				<input id="sex"type="radio" name="sex" value="여자">여자<br/>
             <!--  <label for="sex">SEX</label>
              <input id="sex" type="text" name="sex" class="form-control" placeholder="Enter Your sex" /> -->
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
