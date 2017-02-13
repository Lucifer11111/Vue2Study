<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson1.aspx.cs" Inherits="Vue2.vue20170213" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%-- 例子1 ：数据和 DOM 已经被绑定在一起，所有的元素都是响应式的。 --%>
        <div id="app">
            {{ message }}
        </div>
        <%-- 例子2 ：v-bind 属性被称为指令。指令带有前缀 v-，以表示它们是 Vue.js 提供的特殊属性。可能你已经猜到了，它们会在渲染过的 DOM 上应用特殊的响应式行为。这个指令的简单含义是说：将这个元素节点的 title 属性和 Vue 实例的 message 属性绑定到一起。  --%>
        <div id="app-2">
            <span v-bind:title="message">Hover your mouse over me for a few seconds to see my dynamically bound title!
            </span>
        </div>
        <%-- 条件与循环 --%>
        <%-- 例子3 ：显示或者隐藏--%>
        <div id="app-3">
            <p v-if="seen">Now you see me</p>
        </div>
        <%-- 例子4：循环 --%>
        <div id="app-4">
            <ol>
                <li v-for="todo in todos">{{ todo.text }}
                </li>
            </ol>
        </div>
        <%-- 例子5：处理用户输入 --%>
        <div id="app-5">
            <p>{{ message }}</p>
            <%-- 在 reverseMessage 方法中，我们在没有接触 DOM 的情况下更新了应用的状态 - 所有的 DOM 操作都由 Vue 来处理，你写的代码只需要关注基本逻辑。 --%>
            <button v-on:click="reverseMessage">Reverse Message</button>
        </div>
        <%--例子6：Vue 也提供了 v-model 指令，它使得在表单输入和应用状态中做双向数据绑定变得非常轻巧。  --%>
        <div id="app-6">
            <p>{{ message }}</p>
            <input v-model="message">
        </div>
    </form>
</body>
<script>
    var app = new Vue({
        el: '#app',
        data: {
            message: 'Hello Vue!'
        }
    });

    var app2 = new Vue({
        el: '#app-2',
        data: {
            message: 'You loaded this page on ' + new Date()
        }
    });

    var app3 = new Vue({
        el: '#app-3',
        data: {
            seen: true
        }
    });

    var app4 = new Vue({
        el: '#app-4',
        data: {
            todos: [
              { text: 'Learn JavaScript' },
              { text: 'Learn Vue' },
              { text: 'Build something awesome' }
            ]
        }
    });

    var app5 = new Vue({
        el: '#app-5',
        data: {
            message: 'Hello Vue.js!'
        },
        methods: {
            reverseMessage: function () {
                this.message = this.message.split('').reverse().join('')
            }
        }
    });

    var app6 = new Vue({
        el: '#app-6',
        data: {
            message: 'Hello Vue!'
        }
    });
</script>
</html>