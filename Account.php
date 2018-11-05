<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/account.css">
<style type="text/css">
	@charset "UTF-8";
body {
  font-family: 'MHei', 'PingFang TC', 'Helvetica Neue', 'Helvetica', 'STHeitiTC-Light', 'Arial', sans-serif;
  color: #FFF;
  overflow-x: hidden;
  background: url(https://placem.at/places) no-repeat center top;
  background-size: cover;
  color: #FFF;
}

h1 {
  color: #FFF !important;
}

a {
  text-decoration: none;
}

a:hover,
a:focus {
  text-decoration: none !important;
}


/*-----------overlay*/

.overlay {
  background: rgba(0, 0, 0, 0.4);
  position: fixed;
  top: 0px;
  left: 0px;
  height: 100%;
  width: 100%;
  height: 100vh;
  width: 100vw;
  z-index: -1;
  display: none;
  overflow: hidden;
}

.login_popup {
  position: fixed;
  top: 0px;
  left: 0px;
  height: 100%;
  width: 100%;
  height: 100vh;
  width: 100vw;
  z-index: 9999999;
  display: none;
}


/*-----------btn*/

.btn-login {
  color: #FFF;
  margin: 100px auto 0px !important;
  float: none;
  border-radius: 3px;
  display: block;
  width: 300px;
  height: 50px;
  font-size: 20px;
  line-height: 50px;
  text-align: center;
  background: rgba(0, 0, 0, 0.6);
  border: 1px solid #FFF;
  transition: .3s ease-out;
}

.btn-login:hover {
  color: #FFF;
  background: rgba(0, 0, 0, 0.9);
}


/*-----------omask*/

.login_popup .mask {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -160px;
  margin-top: -240px;
  width: 320px;
  height: 450px;
  background: rgba(0, 0, 0, 1);
  overflow: hidden;
}


/*-----------close*/

.login_popup .mask i {
  position: absolute;
  width: 20px;
  height: 20px;
  font-size: 20px;
  top: 10px;
  right: 10px;
  z-index: 999;
  color: #CCC;
}

.login_popup .mask i:hover {
  color: #fff;
}

.login_popup .mask i a {
  display: block;
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0px;
  left: 0px;
}

.login_popup h3 {
  color: #FFF;
  font-size: 2em;
  margin-top: 0px;
  margin-bottom: 15px;
}


/*-----------LOGIN*/

.login_popup .mask .login_table {
  position: absolute;
  width: 320px;
  height: 420px;
  top: 0px;
  left: 0px;
  padding: 20px;
}

.login_popup .mask .login_table a {
  color: #ccc;
  transition: .3s ease-out;
}

.login_popup .mask .login_table a:hover {
  color: #FFF;
}

.login_popup .mask .login_table table,
.login_popup .mask .forget_table table {
  width: 100%;
}

.login_popup .mask .login_table table td {
  width: 100%;
  text-align: center;
}

.login_popup .mask .login_table tr:nth-child(4) td {
  padding-top: 60px;
}


/*-----------forget table*/

.login_popup .mask .forget_table {
  position: absolute;
  width: 320px;
  height: 420px;
  top: 0px;
  left: 350px;
  padding: 20px;
}

.login_popup .mask .forget_table a {
  color: #CCC;
  transition: .3s ease-out;
}

.login_popup .mask .forget_table a:hover {
  color: #FFF;
}

.login_popup .mask .login_table input[type=text],
.login_popup .mask .forget_table input[type=text] {
  background: none;
  border: none;
  opacity: 1;
  transition: .3s ease-out;
  width: 100% !important;
  border-radius: 0px;
  border-bottom: 1px solid #333;
  margin-bottom: 15px;
  color: #fff;
  font-size: 16px;
}

.login_popup .mask .login_table input[type=text]::before {
  position: absolute;
  background: #fff;
  width: 1px;
  height: 1px;
  z-index: 99;
  opacity: 0;
}

.login_popup .mask .login_table input[type=text].code,
.login_popup .mask .forget_table input[type=text].code {
  background: none;
  border: none;
  opacity: 1;
  transition: .3s ease-out;
  width: 135px !important;
  border-radius: 0px;
  border-bottom: 1px solid #333;
  margin-bottom: 15px;
  color: #fff;
  display: inline;
  margin-left: 10px;
  font-size: 16px;
  letter-spacing: .3em;
  text-align: center;
}

.login_popup .mask .login_table input[type=password],
.login_popup .mask .forget_table input[type=password] {
  background: none;
  border: none;
  opacity: 1;
  transition: .3s ease-out;
  width: 100% !important;
  border-radius: 0px;
  border-bottom: 1px solid #333;
  margin-bottom: 15px;
  color: #FFF;
  font-size: 16px;
}

.login_popup .mask .login_table input[type=text]:hover,
.login_popup .mask .login_table input[type=text]:focus,
.login_popup .mask .login_table input[type=password]:hover,
.login_popup .mask .login_table input[type=password]:focus {
  box-shadow: none;
  opacity: .8;
  border-bottom: 1px solid #FFF;
}

.login_popup .mask .login_table img.captcha,
.login_popup .mask .forget_table img.captcha {
  width: 100px;
  height: 35px;
}


/*-----------obuttom style*/

.btn-ok {
  width: 80%;
  height: 40px;
  font-size: 1.3em !important;
  line-height: 40px;
  font-size: 20px;
  display: block;
  margin: 0px auto 15px !important;
  padding: 0px;
  text-align: center;
  border: 1px solid #CCC !important;
  float: none;
  color: #666 !important;
}

.btn-ok:hover {
  border: 1px solid #CCC !important;
  color: #fff !important;
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>
  
 
<div class="topnav">

  <a class="active" href="home.php">Home</a>
  <a href="#about">Check Balance</a>
</div>
<h2>Welcome To Your Account</h2>
 <div class="container">
    
    <div class="row">
      <a href="javascript:;" class="btn-login">Deposit</a>
    </div>
  </div>
  <!-- JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script>
  <script src="js/cbc.js"></script>
  <br/><br/>
  <div class="container">
    
    <div class="row">
      <a href="javascript:;" class="btn-login">Withdraw</a>
    </div>
  </div>
  <!-- JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="js/jquery-ui-1.10.4.custom.min.js"></script>
  <script src="js/cbc.js"></script>



<div style="padding-left:16px">
 
  </div>

  <script type="text/javascript">
  	$(function() {
    $(".btn-login").click(
      function() {
        $(".login_popup").fadeIn(), "easeOutExpo";
        $(".overlay").fadeIn(), "easeOutExpo";
        return false;

      }
    )
    $(".overlay").click(
      function() {
        $(".login_popup").fadeOut(), "easeOutExpo";
        $(".login_table").delay(400).animate({
          left: 0
        }, 600, "easeOutExpo");
        $(".forget_table").delay(400).animate({
          left: 400
        }, 600, "easeOutExpo");
        return false;

      }
    )
    $(".glyphicon-remove").click(
      function() {
        $(".login_popup").fadeOut(), "easeOutExpo";
        $(".login_table").delay(400).animate({
          left: 0
        }, 600, "easeOutExpo");
        $(".forget_table").delay(400).animate({
          left: 400
        }, 600, "easeOutExpo");
        return false;

      }
    )

  })
  // 設定忘記密碼 左右切換
$(function() {
  $(".forget").click(
    function() {
      $(".login_table").animate({
        left: -500
      }, 600, "easeOutExpo");
      $(".forget_table").animate({
        left: 0
      }, 600, "easeOutExpo");
      return false;
    }
  )
  $(".back_login").click(
    function() {
      $(".login_table").animate({
        left: 0
      }, 600, "easeOutExpo");
      $(".forget_table").animate({
        left: 400
      }, 600, "easeOutExpo");
      return false;

    }
  )

})   
  </script>
     <!-- login popup Start -->
  <div class="login_popup">
    <!-- pop的半透明div -->
    <div class="overlay"></div>
    <div class="mask">
      <i class="glyphicon glyphicon-remove"><a href=""></a></i>
      <div class="login_table">
        <h3>Deposit</h3>
        <table>
          <tr>
            <td><input type="text" class="form-control" id="" placeholder="Enter Amount"></td>
          </tr>
          <tr>
            <td><input type="password" class="form-control" id="" placeholder="Enter National Id"></td>
          </tr>

          <tr>
            <td>
              <a href="#" class="btn btn-ok">Deposit</a>
              
            </td>
            </tr>
           </table>
           </div>  
           </table>
           </div>
         </div>
          </div>
 

</body>
</html>
