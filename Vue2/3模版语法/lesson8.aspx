<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson8.aspx.cs" Inherits="Vue2.lesson8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>过滤器</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Vue.js 允许你自定义过滤器，被用作一些常见的文本格式化。过滤器应该被添加在 mustache 插值的尾部，由“管道符”指示：-->
            <!-- in mustaches -->
            <div id="test">
                {{message | capitalize}}
            </div>
            <!-- in v-bind -->
            <div v-bind:id="rawId | formatId"></div>

            <!--过滤器可以串联：-->
            <!--{{ message | filterA | filterB }}-->
            <!--过滤器是 JavaScript 函数，因此可以接受参数：-->
            <!--{{ message | filterA('arg1', arg2) }}-->
        </div>
    </form>
</body>
<script>
    //new Vue({
    //    // ...
    //    filters: {
    //        capitalize: function (value) {
    //            if (!value) return ''
    //            value = value.toString()
    //            return value.charAt(0).toUpperCase() + value.slice(1)
    //        }
    //    }
    //})

    Vue.filter('capitalize', function (value) {
        if (!value) { return '' }
        value = value.toString()
        return value.charAt(0).toUpperCase() + value.slice(1)
    })
    var vm = new Vue({
        el: '#test',
        data: {
            message: 'test'
        }
    })
</script>
</html>