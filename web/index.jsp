<%@ page import="entity.BasicInfo" %>
<%@ page import="tool.Query" %><%--
  Created by IntelliJ IDEA.
  User: ziyichen
  Date: 2019-01-15
  Time: 05:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BasicInfo basicinfo= Query.getCusInfo("15683646990");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>钟伍全的简历</title>
    <meta name="description" content="我是一个对热爱技术和互联网产品的前端开发工程师，目前正在寻找产品经理或web前端开发工程师的岗位，希望能和有优秀的你成为同事。">
    <meta name="keywords" content="钟伍全、Eric、产品、前端、工作、简历">
    <link rel="icon" href="./img/head.jpg">
    <link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/index.css">
</head>
<body>
<!-- mask -->
<div id="mask"></div>
<!-- /mask -->
<!-- 登录表单 -->
<div class="login-form">
    <div class="close" id="close-login" onclick="fadeOutLogin();">X</div>
    <h3>管理员登录</h3>
    <!--   action="editnfo.jsp" method="post" -->
    <form action="/MyResume/login" method="get">
        <input type="text" name="username" placeholder="手机号" id="login_username">
        <input type="password" name="password" placeholder="验证码" id="login_password">
        <!--<input type="button" value="获取验证码" id="get_password"  onclick="get_mobile_code();">-->
        <input type="button" value="获取验证码" id="get_password">
        <!--<button class="login-btn" id="login" onclick="login();">登 录</button>-->
        <button class="login-btn" id="login" type="submit">登 录</button>
    </form>

</div>
<!-- 登录表单结束 -->
<aside>
    <ul>
        <li>
            <a href="#" target="_blank">PDF下载</a>
        </li>
        <li>
            <a href="https://www.runtofuture.cn" target="_blank">Blog</a>
        </li>
        <li>
            <a href="https://github.com/zwq-qianyu" target="_blank">Github</a>
        </li>
        <li>
            <a href="#" onclick="fadeModal();" id="atten-btn">登录</a>
        </li>
    </ul>
</aside>

<section class="container">
    <!-- 左边的基本个人信息 -->
    <section class="sidebar">
        <!-- 基本信息头部 -->
        <div class="title">
            <div class="head-img">
                <%--<img src="./img/head.jpg" alt="">--%>
                    <img src="<%=basicinfo.getHead_pic()%>" alt="">
            </div>
            <h1><%=basicinfo.getNickname()%>的简历</h1>
            <h2>"以梦为笔，绘画天涯"</h2>
            <b>目前是一名 bytedancer 实习生</b>
        </div>

        <ul class="side-info">
            <li>
                <dt><i class="fa fa-bookmark"></i> Contact. 联系方式</dt>
                <dd><i class="fa fa-envelope"></i> 邮箱: <a href="mailto:<%=basicinfo.getEmail()%>" target="_blank"><%=basicinfo.getEmail()%></a></dd>
                <dd><i class="fa fa-weixin"></i> 微信: <%=basicinfo.getWechat()%></dd>
                <dd><i class="fa fa-qq"></i> QQ: <%=basicinfo.getQq()%></dd>
            </li>

            <li>
                <dt><i class="fa fa-bookmark"></i> Application. 应聘岗位</dt>
                <dd>产品经理</dd>
                <dd>Web前端工程师</dd>
            </li>

            <li class="skill">
                <dt><i class="fa fa-bookmark"></i> Tech. 技能点</dt>
                <dd>
                    <div class="skill-name">JavaScript</div>
                    <div class="skill-bar-wrap">
                        <div class="skill-bar" style="width: 90%"></div>
                    </div>
                </dd>
                <dd>
                    <div class="skill-name">Python</div>
                    <div class="skill-bar-wrap">
                        <div class="skill-bar" style="width: 75%"></div>
                    </div>
                </dd>
                <dd>
                    <div class="skill-name">Java</div>
                    <div class="skill-bar-wrap">
                        <div class="skill-bar" style="width: 72%"></div>
                    </div>
                </dd>
                <dd>
                    <div class="skill-name">Swift</div>
                    <div class="skill-bar-wrap">
                        <div class="skill-bar" style="width: 65%"></div>
                    </div>
                </dd>
                <dd>
                    <div class="skill-name">Android</div>
                    <div class="skill-bar-wrap">
                        <div class="skill-bar" style="width: 50%"></div>
                    </div>
                </dd>
                <dd>
                    <div class="skill-name">Design</div>
                    <div class="skill-bar-wrap">
                        <div class="skill-bar" style="width: 35%"></div>
                    </div>
                </dd>
            </li>
        </ul>

        <div class="note">
            <p>我是一个注重用户体验、喜欢产品、热爱技术的前端工程师</p>
            <p>我目前正在寻找产品经理 or 前端开发的岗位，希望借此机会为贵司献上我的一点绵薄之力，快招我到碗里来吧！</p>
            <p>目前在字节跳动实习前端。</p>
        </div>
    </section>

    <!-- 右边主体部分 -->
    <section class="main">
        <ul class="main-info">
            <!-- Basic info. 基本信息 -->
            <li class="someRight">
                <dt><i class="fa fa-info-circle"></i> Basic info. 基本信息</dt>
                <dd><span>个人信息:</span> <%=basicinfo.getNickname()%> / <%=basicinfo.getSex()%> / <%=basicinfo.getAge()%>岁</dd>
                <dd><span>本科:</span> 2016-2020 / 中南大学数学 & 计算机科学与技术</dd>
                <dd><span>常用ID:</span> <a href="https://home.runtofuture.cn"><%=basicinfo.getId_name()%></a></dd>
                <dd><span>Blog:</span> <a href="<%=basicinfo.getBlog()%>" target="_blank"><%=basicinfo.getBlog()%></a></dd>
                <dd><span>GitHub:</span> <a href="<%=basicinfo.getGithub()%>" target="_blank"><%=basicinfo.getGithub()%></a></dd>
                <!-- <dd><span>GitHub:</span> <a href="https://github.com/zwq-qianyu" target="_blank">github.com/zwq-qianyu</a> <iframe src="https://ghbtns.com/github-btn.html?user=zwq-qianyu&type=follow&count=true" frameborder="0" scrolling="0" width="170px" height="20px"></iframe></dd> -->
            </li>

            <!-- Experience. 项目与工作经验 -->
            <li>
                <dt><i class="fa fa-bookmark"></i> Experience. 项目与工作经验</dt>
                <!-- 字节跳动实习 -->
                <h3 class="company"><img src="./img/bytedance.jpg"><span>北京字节跳动科技有限公司（2019.1 - 至今）</span></h3>
                <ul class="exp"  style="border-left: none;">
                    <li>
                        <h4>
                            实习中～
                        </h4>
                    </li>
                </ul>

                <!-- 景观云实习 -->
                <h3 class="company"><img src="./img/landscloud.jpg"><span>湖南景观云信息科技有限公司（2018.7 - 2018.8）</span></h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <h4>
                            CRM系统
                        </h4>
                        <p>负责景观云内部CRM系统市场部模块的前端开发，并完成该部分各个子模块的测试。CRM 系统是使用 原生JS 与 Jquery 开发的一套企业内部绩效考核系统，有积分考核管理、客户管理、楼盘管理、评分等功能，满足公司考核员工每个月度工作的需求。</p>
                        <img src="./img/landscloud/main_page.png">
                        <img src="./img/landscloud/evaluate.png">
                    </li>
                </ul>

                <!-- 个人项目 -->
                <h3>个人项目</h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <h4>
                            Uchat：基于兴趣分群的匿名聊天应用（开发中）
                            <a href="#" target="_blank"><i class="icon-link"></i>源代码</a>
                            <a href="#" target="_blank"><i class="icon-link"></i>服务端源码</a>
                        </h4>
                        <p>基于 React Native + Redux + react-router + express 构建的匿名聊天 APP。</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>
                            算室：算法实验室（2017.9）
                            <a href="#" target="_blank"><i class="icon-link"></i>源代码</a>
                            <a href="#" target="_blank"><i class="icon-link"></i>地址</a>
                        </h4>
                        <p>基于 Typescript + express 构建的可视化算法实验室。</p>
                        <img src="http://airing.ursb.me/image/cover/lib-sreenshots.png" data-action="zoom">
                    </li>
                </ul>
            </li>

            <!-- Skill. 技能清单 -->
            <li>
                <dt><i class="fa fa-circle-o"></i> Skill. 技能清单</dt>
                <h3>Web 前端</h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <h4>HTML / CSS</h4>
                        <p>能够编写语义化的 HTML，模块化的 CSS，完成较复杂的布局</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>JavaScript</h4>
                        <p>熟悉原生 Javascript，能脱离 jQuery 等类库编码，懂得 ES6 规范</p>
                        <p>能运用模块化、面向对象的方式编程</p>
                        <p>会使用 Gulp、Webpack 等前端构建工具</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>React</h4>
                        <p>能够使用 react + redux + react-router 构建前端项目。</p>
                    </li>
                </ul>
                <h3>移动开发</h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <h4>React Native</h4>
                        <p>能熟练运用 React Native 开发 Android 与 iOS 应用。</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>Swift</h4>
                        <p>能够使用 Swift 语言进行 iOS 开发。能实现基本的动画与业务需求。</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>微信开发</h4>
                        <p>了解微信小程序开发，以及微信接口设计、开发和调试工作。</p>
                    </li>
                </ul>
                <h3>网络开发</h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <h4>Linux</h4>
                        <p>熟悉 Linux 开发环境、 Linux 服务器环境搭建部署</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>Nodejs</h4>
                        <p>熟练使用 Express、Koa 等框架构建后端项目。</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>Java</h4>
                        <p>了解 Struts、Hibernate、Spring 框架的原理与使用。</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>Python</h4>
                        <p>了解 Flask 与 Django 框架，能使用 Django 自主建站。</p>
                        <p>熟悉 requests 与 Scrapy，能够熟练实现网络请求与制作网络爬虫。</p>
                    </li>
                </ul>
                <h3>数据分析</h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <h4>Python</h4>
                        <p>了解 pandas 与 numpy 的使用</p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <h4>统计学</h4>
                        <p>了解统计学的相关内容，会使用一定的统计方法</p>
                    </li>
                </ul>
            </li>

            <!-- Prize. 获得奖项 -->
            <li>
                <dt><i class="fa fa-bookmark"></i> Prize. 获得奖项</dt>
                <h3>共获奖项：6次，其中国际级1次，国家级2次，校级3次。</h3>
                <ul class="exp">
                    <li>
                        <div class="circle"></div>
                        <p>2018.05 全国大学生创新创业“优秀项目” </p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <p>2017.12 亚太地区大学生数学建模竞赛三等奖 </p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <p>2017.12 2017年度屈原优秀学生奖学金 </p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <p>2017.12 中南大学2016-2017学年优秀学生 </p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <p>2017.11 中南大学2016-2017学年奖学金 二等奖 </p>
                    </li>
                    <li>
                        <div class="circle"></div>
                        <p>2017.04 全国大学生环保知识竞赛 优秀奖 </p>
                    </li>
                </ul>
            </li>
        </ul>
    </section>
</section>

<footer>
    <!-- <p>Theme by <a href="https://github.com/DIYgod/Resume" target="_blank">DIYgod</a>. Made with <i class="fa fa-heart" aria-hidden="true" style="color: #d43f57;"></i> by Eric. 最后更新于2019年1月8日</p> -->
    <p>Made with <i class="fa fa-heart" aria-hidden="true" style="color: #d43f57;"></i> by Eric. 最后更新于2019年1月12日</p>
</footer>
<script type="text/javascript" src="./js/index.js"></script>
<script type="text/javascript" src="./js/jquery.js"></script>
</body>
</html>

