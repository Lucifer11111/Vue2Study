<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson5.aspx.cs" Inherits="Vue2.lesson5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>生命周期</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            每个 Vue 实例在被创建之前都要经过一系列的初始化过程。
            例如，实例需要配置数据观测(data observer)、编译模版、挂载实例到 DOM ，然后在数据变化时更新 DOM 。
            在这个过程中，实例也会调用一些 生命周期钩子 ，这就给我们提供了执行自定义逻辑的机会
        </div>
    </form>
</body>
<script>
    var vm = new Vue({
        data: {
            a: 1
        },
        created: function () {
            // `this` 指向 vm 实例
            console.log('a is: ' + this.a)
        }
    })
    // -> "a is: 1"
</script>
</html>