<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson7.aspx.cs" Inherits="Vue2.lesson7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>指令</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- v-if 指令将根据表达式 seen 的值的真假来移除/插入 <p> 元素-->
            <p v-if="seen">Now you see me</p>

            <!--在这里 href 是参数，告知 v-bind 指令将该元素的 href 属性与表达式 url 的值绑定。 -->
            <a v-bind:href="url"></a>

            <!--在这里参数是监听的事件名。我们也会更详细地讨论事件处理。-->
            <a v-on:click="doSomething">

                <!--修饰符（Modifiers）是以半角句号 . 指明的特殊后缀，用于指出一个指定应该以特殊方式绑定。例如，.prevent 修饰符告诉 v-on 指令对于触发的事件调用 event.preventDefault()：-->
                <form v-on:submit.prevent="onSubmit"></form>
        </div>
    </form>
</body>
</html>