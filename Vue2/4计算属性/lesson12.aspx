<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lesson12.aspx.cs" Inherits="Vue2.lesson12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>观察Watchers</title>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        在这个示例中，使用 watch 选项允许我们执行异步操作（访问一个 API），限制我们执行该操作的频率，并在我们得到最终结果前，设置中间状态。这是计算属性无法做到的。<br /><br />
        <div id="watch-example">
            <p>
                Ask a yes/no question:
        <input v-model="question">
            </p>
            <p>{{ answer }}</p>
        </div>
    </form>
</body>
<!-- Since there is already a rich ecosystem of ajax libraries    -->
<!-- and collections of general-purpose utility methods, Vue core -->
<!-- is able to remain small by not reinventing them. This also   -->
<!-- gives you the freedom to just use what you're familiar with. -->
<script src="https://unpkg.com/axios@0.12.0/dist/axios.min.js"></script>
<script src="https://unpkg.com/lodash@4.13.1/lodash.min.js"></script>
<script>
    var watchExampleVM = new Vue({
        el: '#watch-example',
        data: {
            question: '',
            answer: 'I cannot give you an answer until you ask a question!'
        },
        watch: {
            // 如果 question 发生改变，这个函数就会运行
            question: function (newQuestion) {
                this.answer = 'Waiting for you to stop typing...'
                this.getAnswer()
            }
        },
        methods: {
            // _.debounce 是一个通过 lodash 限制操作频率的函数。
            // 在这个例子中，我们希望限制访问yesno.wtf/api的频率
            // ajax请求直到用户输入完毕才会发出
            // 学习更多关于 _.debounce function (and its cousin
            // _.throttle), 参考: https://lodash.com/docs#debounce
            getAnswer: _.debounce(
              function () {
                  var vm = this
                  if (this.question.indexOf('?') === -1) {
                      vm.answer = 'Questions usually contain a question mark. ;-)'
                      return
                  }
                  vm.answer = 'Thinking...'
                  axios.get('https://yesno.wtf/api')
                    .then(function (response) {
                        vm.answer = _.capitalize(response.data.answer)
                    })
                    .catch(function (error) {
                        vm.answer = 'Error! Could not reach the API. ' + error
                    })
              },
              // 这是我们为用户停止输入等待的毫秒数
              500
            )
        }
    })
</script>
</html>