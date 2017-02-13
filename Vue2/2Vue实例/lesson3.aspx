<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson3.aspx.cs" Inherits="Vue2.lesson3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
<script>
    //每个 Vue.js 应用都是通过构造函数 Vue 创建一个 Vue 的根实例 启动的：
    var vm = new Vue({
        // 选项
    });

    //扩展 Vue 构造器，从而用预定义选项创建可复用的组件构造器：
    var MyComponent = Vue.extend({
        // 扩展选项
    })
    // 所有的 `MyComponent` 实例都将以预定义的扩展选项被创建
    var myComponentInstance = new MyComponent()

    //不过在多数情况下建议将组件构造器注册为一个自定义元素，然后声明式地用在模板中
    //现在只需知道所有的 Vue.js 组件其实都是被扩展的 Vue 实例
</script>
</html>