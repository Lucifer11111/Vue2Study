<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson10.aspx.cs" Inherits="Vue2.lesson10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="example">
            <p>Original message: "{{ message }}"</p>
            <p>Computed reversed message: "{{ reversedMessage }}"</p>
        </div>


        
    </form>
</body>
<script>
    var vm = new Vue({
        el: '#example',
        data: {
            message: 'Hello'
        },
        computed: {
            // a computed getter
            reversedMessage: function () {
                // 这指向VM实例
                return this.message.split('').reverse().join('');
            }
        }
    })
    //这里我们声明了一个计算属性 reversedMessage 。我们提供的函数将用作属性 vm.reversedMessage 的 getter 。
    console.log(vm.reversedMessage) // -> 'olleH'
    vm.message = 'Goodbye'
    console.log(vm.reversedMessage) // -> 'eybdooG'

    
</script>
</html>