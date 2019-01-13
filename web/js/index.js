window.onload = function(){

}

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
