<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson4.aspx.cs" Inherits="Vue2.lesson4" %>

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
    //每个 Vue 实例都会代理其 data 对象里所有的属性：
    var data = { a: 1 }
    var vm = new Vue({
        data: data
    })
    vm.a === data.a // -> true
    // 设置属性也会影响到原始数据
    vm.a = 2
    data.a // -> 2
    // ... 反之亦然
    data.a = 3
    vm.a // -> 3

    //注意只有这些被代理的属性是响应的。如果在实例创建之后添加新的属性到实例上，它不会触发视图更新。我们将在后面详细讨论响应系统。

    var data = { a: 1 }
    var vm = new Vue({
        el: '#example',
        data: data
    })
    vm.$data === data // -> true
    vm.$el === document.getElementById('example') // -> true
    // $watch 是一个实例方法
    vm.$watch('a', function (newVal, oldVal) {
        // 这个回调将在 `vm.a`  改变后调用
    })
    //注意，不要在实例属性或者回调函数中（如 vm.$watch('a', newVal => this.myMethod())）使用箭头函数。因为箭头函数绑定父上下文，所以 this 不会像预想的一样是 Vue 实例，而是 this.myMethod 未被定义。
</script>
</html>