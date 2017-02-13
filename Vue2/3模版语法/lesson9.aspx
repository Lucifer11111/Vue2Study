<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson9.aspx.cs" Inherits="Vue2.lesson9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>缩写</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!-- v-bind缩写-->
        <!-- 完整语法 -->
        <a v-bind:href="url"></a>
        <!-- 缩写 -->
        <a :href="url"></a>

        <!-- v-on缩写-->
        <!-- 完整语法 -->
        <a v-on:click="doSomething"></a>
        <!-- 缩写 -->
        <a @click="doSomething"></a>
    </div>
    </form>
</body>
</html>