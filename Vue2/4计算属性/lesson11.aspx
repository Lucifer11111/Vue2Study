<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson11.aspx.cs" Inherits="Vue2.lesson11" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>计算属性vs Watched Property</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="demo">{{ fullName }}</div>
    </form>
</body>

<script>
    //var vm = new Vue({
    //    el: '#demo',
    //    data: {
    //        firstName: 'Foo',
    //        lastName: 'Bar',
    //        fullName: 'Foo Bar'
    //    },
    //    watch: {
    //        firstName: function (val) {
    //            this.fullName = val + ' ' + this.lastName
    //        },
    //        lastName: function (val) {
    //            this.fullName = this.firstName + ' ' + val
    //        }
    //    }
    //});
    var vm = new Vue({
        el: '#demo',
        data: {
            firstName: 'Foo',
            lastName: 'Bar'
        },
        //computed: {
        //    fullName: function () {
        //        return this.firstName + ' ' + this.lastName
        //    }
        //}
        computed: {
            fullName: {
                // getter
                get: function () {
                    return this.firstName + ' ' + this.lastName
                },
                // setter
                set: function (newValue) {
                    var names = newValue.split(' ')
                    this.firstName = names[0]
                    this.lastName = names[names.length - 1]
                }
            }
        }
    })
</script>
</html>