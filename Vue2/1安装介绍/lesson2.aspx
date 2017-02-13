<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson2.aspx.cs" Inherits="Vue2.lesson2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <%-- 用组件来构建应用 --%>
        <div id="app-7">
            <ol>
                <!-- 现在我们提供每一个TODO项目与计划目标    -->
                <!-- 它的代表，使其内容可以是动态的 -->
                <todo-item v-for="item in groceryList" v-bind:todo="item"></todo-item>
            </ol>
        </div>

        <div id="app-7-1">
            <ol>                
                <todo-item v-for="item in groceryList" v-bind:todo="item"></todo-item>
            </ol>
        </div>
    </form>
</body>
<script>
    Vue.component('todo-item', {
        props: ['todo'],
        template: '<li>{{ todo.text }}</li>'
    })
    var app7 = new Vue({
        el: '#app-7',
        data: {
            groceryList: [
              { text: 'Vegetables' },
              { text: 'Cheese' },
              { text: 'Whatever else humans are supposed to eat' }
            ]
        }
    });

    var app71 = new Vue({
        el: '#app-7-1',
        data: {
            groceryList: [
              { text: '1' },
              { text: '2' },
              { text: '3 else humans are supposed to eat' }
            ]
        }
    });
</script>
</html>