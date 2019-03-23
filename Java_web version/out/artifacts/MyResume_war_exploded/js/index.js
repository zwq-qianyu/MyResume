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

    var xmlhttp = new XMLHttpRequest();
    console.log(password);
    xmlhttp.open("GET","/MyResume/login?username="+username+"&password="+password,true);
    xmlhttp.send();
    xmlhttp.onreadystatechange=function(){
        if(xmlhttp.readyState==4 && xmlhttp.status==200){
            var data = xmlhttp.responseText;
            console.log(data);
            if(data === "success"){
                window.location.href = base_url + "/editinfo.jsp";
            }
        }
    }
}

// 获取基本信息
function getBasicInfo() {
    var user_id = "15683646990";

    // var postdata = {"user_id":user_id};

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("GET","/MyResume/getBasicInfo?user_id="+user_id,true);
    xmlhttp.send();

    xmlhttp.onreadystatechange=function(){

        console.log(xmlhttp.responseText);
    }
}





// ===============================================发送验证码并验证

// 直接修改原生String对象原型链，为其增加trim方法
String.prototype.trim = function(){
    //从空格开始（至少一个空格），中间任意个字符，从空格结束（至少一个空格）
    return this.replace(/^\s+(.*?)\s+$/,'$1');
}

<!-- 获取验证码 -->
function get_mobile_code(){
    var user_id = document.getElementById("login_username").value;
    user_id = user_id.trim();

    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("POST","/MyResume/postMessage?user_id="+user_id,false);
    xmlhttp.send();

    RemainTime();
};

var iTime = 90;
var Account;
//  剩余时间显示
function RemainTime(){
    document.getElementById('get_password').disabled = true;
    var iSecond,sSecond="",sTime="";
    if (iTime >= 0){
        iSecond = parseInt(iTime%60);
        iMinute = parseInt(iTime/60)
        if (iSecond >= 0){
            if(iMinute>0){
                sSecond = iMinute + "分" + iSecond + "秒";
            }else{
                sSecond = iSecond + "秒";
            }
        }
        sTime=sSecond;
        if(iTime==0){
            clearTimeout(Account);
            sTime='获取手机验证码';
            iTime = 59;
            document.getElementById('get_password').disabled = false;
        }else{
            Account = setTimeout("RemainTime()",1000);
            iTime=iTime-1;
        }
    }else{
        sTime='没有倒计时';
    }
    document.getElementById('get_password').value = sTime;
}

function tologin() {
    var pass = document.getElementById('password').value;
    // console.log(pass);
    console.log("http://localhost:8080/MyResume/login？password="+pass);
    // window.location.href="http://localhost:8080/login?password="+pass;
}