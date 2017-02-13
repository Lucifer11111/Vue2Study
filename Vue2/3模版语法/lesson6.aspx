<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson6.aspx.cs" Inherits="Vue2.lesson6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>插值</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--数据绑定最常见的形式就是使用 “Mustache” 语法（双大括号）的文本插值： -->
            <span>Message: {{ msg }}</span>

            <!-- Mustache 标签将会被替代为对应数据对象上 msg 属性的值。无论何时，绑定的数据对象上 msg 属性发生了改变，插值处的内容都会更新。
通过使用 v-once 指令，你也能执行一次性地插值，当数据改变时，插值处的内容不会更新。但请留心这会影响到该节点上所有的数据绑定： -->
            <span v-once>This will never change: {{ msg }}</span>

            <!-- 双大括号会将数据解释为纯文本，而非 HTML 。为了输出真正的 HTML ，你需要使用 v-html 指令：-->
            <div v-html="rawHtml"></div>
            <!-- 被插入的内容都会被当做 HTML —— 数据绑定会被忽略。注意，你不能使用 v-html 来复合局部模板，因为 Vue 不是基于字符串的模板引擎。组件更适合担任 UI 重用与复合的基本单元。-->
            <!-- 你的站点上动态渲染的任意 HTML 可能会非常危险，因为它很容易导致 XSS 攻击。请只对可信内容使用 HTML 插值，绝不要对用户提供的内容插值。-->

            <!-- Mustache 不能在 HTML 属性中使用，应使用 v-bind 指令：-->
            <div v-bind:id="dynamicId"></div>
            <!-- 这对布尔值的属性也有效 —— 如果条件被求值为 false 的话该属性会被移除：-->
            <button v-bind:disabled="someDynamicCondition">Button</button>

            <!--JavaScript 表达式-->
            {{ number + 1 }}
            {{ ok ? 'YES' : 'NO' }}
            {{ message.split('').reverse().join('') }}
            <div v-bind:id="'list-' + id"></div>

            <!-- 这些表达式会在所属 Vue 实例的数据作用域下作为 JavaScript 被解析。有个限制就是，每个绑定都只能包含单个表达式，所以下面的例子都不会生效。-->
            <!-- 这是语句，不是表达式 -->
            {{ var a = 1 }}
            <!-- 流控制也不会生效，请使用三元表达式 -->
            {{ if (ok) { return message } }}
        </div>
    </form>
</body>
</html>