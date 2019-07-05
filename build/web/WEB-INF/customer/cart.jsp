<div class="huy2">
    <c:choose>
        <c:when test="${cart.numberOfItems > 1}">
            You have ${cart.numberOfItems} items in your cart
        </c:when>
        <c:when test="${cart.numberOfItems == 1}">
            You have ${cart.numberOfItems} item in your cart
        </c:when>
        <c:otherwise>
            Your cart is empty
        </c:otherwise>
    </c:choose>

</div>

<div class="huy4">

    <table style="width: 500px; text-align: left">
        <tr>           
            <th>Product name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Update</th>

        </tr>

        <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">
            <c:set var="product" value="${cartItem.product}"/>
            <tr>
                <td>${product.name}</td>
                <td>&pound; ${product.price} </td>

                <td> <form action="updateCart" method="post">
                        <input type="hidden"
                               name="productId"
                               value="${product.id}">
                        <input type="text"
                               maxlength="2"
                               size="2"
                               value="${cartItem.quantity}"
                               name="quantity"
                               style="margin:5px">
                        </td>
                        <td>
                            <input type="submit"
                                   name="submit"
                                   value="update">
                        </td>
                    </form>

            </tr>
        </c:forEach>
        <tr>
            <th>Subtotal</th>
            <th>&pound; <fmt:formatNumber type="number" maxFractionDigits="2" value="${cart.subtotal}"/> </th>
            <th>${cart.numberOfItems}</th>
            <th></th>
            
        </tr>
    </table>

</div>
<div class="huy3">
    <%-- clear cart widget --%>
    <c:if test="${!empty cart && cart.numberOfItems != 0}">

        <c:url var="url" value="viewCart">
            <c:param name="clear" value="true"/>
        </c:url>

        <a href="${url}">Clear cart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
    </c:if>

    <%-- continue shopping widget --%>
    <c:set var="value">
        <c:choose>
            <%-- if 'selectedCategory' session object exists, send user to previously viewed category --%>
            <c:when test="${!empty selectedCategory}">
                category
            </c:when>
            <%-- otherwise send user to welcome page --%>
            <c:otherwise>
                index.jsp
            </c:otherwise>
        </c:choose>
    </c:set>

    <c:url var="url" value="${value}"/>
    <a href="${url}">Continue shopping&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>

    <%-- checkout widget --%>
    <c:if test="${!empty cart && cart.numberOfItems != 0}">
        <a href="checkout">Checkout</a>
    </c:if>
</div>
