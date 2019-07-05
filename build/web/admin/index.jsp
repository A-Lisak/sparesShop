
<div class="huy5">
    <a href="../index.jsp">home | </a>
    <a href="viewCustomers">customers | </a>

    <a href="viewOrders">orders | </a>

    <a href="logout">log out</a>
</div>
<div class="huy4">
<%-- customerList is requested --%>
<c:if test="${!empty customerList}">

    <table style="width: 500px; text-align: left">

     

        <tr class="tableHeading">
            <td>customer id</td>
            <td>name</td>
            <td>email</td>
            <td>phone</td>
        </tr>

        <c:forEach var="customer" items="${customerList}" varStatus="iter">

            <tr class="${((iter.index % 2) == 1) ? 'lightBlue' : 'white'} tableRow"
                onclick="document.location.href='customerRecord?${customer.id}'">

              <%-- Below anchor tags are provided in case JavaScript is disabled --%>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.phone}</td>
            </tr>

        </c:forEach>

    </table>

</c:if>

<%-- orderList is requested --%>
<c:if test="${!empty orderList}">

    <table style="width: 500px; text-align: left">

     
        <tr class="tableHeading">
            <td>order id</td>
            <td>confirmation number</td>
            <td>amount</td>
            <td>date created</td>
        </tr>

        <c:forEach var="order" items="${orderList}" varStatus="iter">

            <tr class="${((iter.index % 2) == 1) ? 'lightBlue' : 'white'} tableRow"
                onclick="document.location.href='orderRecord?${order.id}'">

              <%-- Below anchor tags are provided in case JavaScript is disabled --%>
                <td>${order.id}</td>
                <td>${order.confirmationNumber}</td>
                <td>${order.amount}</td>

                <td>${order.dateCreated}</td>
            </tr>

        </c:forEach>

    </table>

</c:if>
</div>