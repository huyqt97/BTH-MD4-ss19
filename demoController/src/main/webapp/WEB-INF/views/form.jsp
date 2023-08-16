<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/15/2023
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/demo/login" method="get">
  <input type="text" name="username" id="username" value="${user.username}">
  <input type="password" name="password" id="password" value="${user.password}" >
  <button type="submit">Login</button>
</form>
<script>
// function login() {
//   let username = document.querySelector("#username").value ;
//   let password = document.querySelector("#password").value;
//   let user = {username,password};
//   let url = "/demo/login";
//
//    const res =  fetch(url, {
//     method: "POST", // *GET, POST, PUT, DELETE, etc.
//     headers: {
//       "Content-Type": "application/json",
//       // 'Content-Type': 'application/x-www-form-urlencoded',
//     },
//     referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
//     body: JSON.stringify(user), // body data type must match "Content-Type" header
//   });
//   console.log(res);
// }
</script>
</body>
</html>
