window.onload = function(){
    getBasicInfo();
}
var base_url = "http://localhost:8080/MyResume";

// 显示登录弹窗
function fadeModal() {
  var mask = document.getElementById('mask');
  console.log(mask);
  mask.style.display = "block";
  var loginForm = document.getElementsByClassName('login-form')[0];
  console.log(loginForm);
  loginForm.style.display = "block";
}

// 登录弹窗隐藏
function fadeOutLogin() {
  var mask = document.getElementById('mask');
  console.log(mask);
  mask.style.display = "none";
  var loginForm = document.getElementsByClassName('login-form')[0];
  console.log(loginForm);
  loginForm.style.display = "none";
 }

// 登录操作
function login() {
  var username = document.getElementById("login_username").value;
  var password = document.getElementById("login_password").value;

  var postdata = {"username":username,"password":password};

  var xmlhttp = new XMLHttpRequest();
  xmlhttp.open("POST","/MyResume/login",false);
  xmlhttp.send(postdata);

  xmlhttp.onreadystatechange=function(){
    console.log(xmlhttp.responseText);
    if(xmlhttp.readyState==4 && xmlhttp.status==200 & xmlhttp.responseText.status==200 ){
      window.location.href = base_url + "/editinfo.jsp";
    }
    else{
      alert("登录失败!");
    }
  }
}

function getBasicInfo() {
    var user_id = "15683646990";

    // var postdata = {"user_id":user_id};

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET","/MyResume/getBasicInfo?user_id="+user_id,true);
    xmlhttp.send();

    xmlhttp.onreadystatechange=function(){
        console.log(xmlhttp.responseText);
        // if(xmlhttp.readyState==4 && xmlhttp.status==200){
        //     console.log("成功！");
        //     window.location.href("/Myresume/editinfo.jsp");
        // }
        // else{
        //     alert("获取数据失败!");
        // }
    }
}