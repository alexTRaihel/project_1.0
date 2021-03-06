<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:import url="parts/header.jsp" />
<section>
    <div>
        <div class="container">
            <div class="row">
                <div class="col-sm">
                    <h3 class="m-2">Cars List</h3>
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
                <button type="submit" class="btn btn-primary">Save</button>
                <div class="col-sm">
                    Одна из трёх колонок
                </div>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </div>
        <c:if test="${!empty listUsers}">
            <table class="table table-bordered m-2">
                <tr>
                    <th>Person ID</th>
                    <th>Username</th>
                    <th>Account</th>
                    <th>Enabled</th>
                    <th>Role</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <c:forEach items="${listUsers}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>
                            <a href="<c:url value='/profile/${user.username}'/>" >
                                    ${user.username}
                            </a>
                        </td>
                        <td>${user.account}</td>
                        <td>
                            <a href="#" >
                                    ${user.enabled}
                            </a>
                        </td>
                        <td>
                            <a href="#" >
                                    ${user.role.role}
                            </a>
                        </td>
                        <td><a href="<c:url value='/edit/${user.id}' />" >Edit</a></td>
                        <td><a href="<c:url value='/remove/${user.id}' />" >Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
    </div>
</section>
<c:import url="parts/footer.jsp" />