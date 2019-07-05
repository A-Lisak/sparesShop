

<div class="huy2">
<!--You have many items in your cart or 0-->
    <c:choose>
        <c:when test="${cart.numberOfItems > 1}">
            You have ${cart.numberOfItems} items in your cart<br>
        </c:when>
            
        <c:when test="${cart.numberOfItems == 1}">
            You have ${cart.numberOfItems} item in your cart<br>
        </c:when>
        <c:otherwise>
            Your cart is empty<br>
        </c:otherwise>
    </c:choose>
        <!--list of categories-->    
    <div class="huy3">
        <c:forEach var="category" items="${categories}">
            <c:choose>
                <c:when test="${category.name == selectedCategory.name}">        
                    ${category.name}&nbsp;
                </c:when>
                <c:otherwise>
                    <a href="category?${category.id}">                 
                        ${category.name}&nbsp;
                    </a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </div>
</div>
<div class="huy4">

    <!--list of products-->
        <table style="width: 500px; text-align: left">

            <c:forEach var="product" items="${categoryProducts}" varStatus="iter">
                <tr>
                    <td>${product.name}</td>
                    <td>&pound; ${product.price}</td>
                    <td>
                        <form action="addToCart" method="post">
                            <input type="hidden"
                                   name="productId"
                                   value="${product.id}">
                            <input type="submit"
                                   name="submit"
                                   value="Add to cart">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>  
  
</div>


