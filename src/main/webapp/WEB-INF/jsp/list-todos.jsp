<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
    <h1>Your todos</h1>
    <table class="table table-striped">
        <caption> Your todos are</caption>
        <thread>
            <tr>
                <th>Description</th>
                <th>Date</th>
                <th>Is it done?</th>
                <th></th>
            </tr>
        </thread>
        <tbody>
        <c:forEach items="${todos}" var = "todo">
            <tr>
                <td>${todo.description}</td>
                <td><fmt:formatDate value="${todo.targetDate}" /></td>
                <td>${todo.done}</td>
                <td><a type="button" class="btn btn-success" href="/update-todo?id=${todo.id}">Update</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <br/>
</div>

<%@ include file="common/footer.jspf"%>
