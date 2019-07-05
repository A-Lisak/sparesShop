<div class="huy2">Checkout</div>

<c:if test="${!empty orderFailureFlag}">
    <p>order Failure Error</p>
</c:if>
<div class="huy4">
    <form  action="purchase" method="post">
        <table style="width: 500px; text-align: left">
            <c:if test="${!empty validationErrorFlag}">
                <tr>
                    <td >
                        <c:if test="${!empty nameError}">name Error </c:if>                                         
                        <c:if test="${!empty emailError}">email Error</c:if>
                        <c:if test="${!empty phoneError}">phone Error</c:if>                                          
                        <c:if test="${!empty addressError}">address Error</c:if>
                        <c:if test="${!empty cityRegionError}">city RegionError</c:if>
                        <c:if test="${!empty ccNumberError}">ccNumber Error</c:if>
                        </td>
                    </tr>
            </c:if>
            <tr>
                <td>name</td>
                <td >
                    <input type="text"
                           size="31"
                           maxlength="45"
                           id="name"
                           name="name"
                           value="${param.name}">
                </td>
            </tr>
            <tr>
                <td>email</td>
                <td >
                    <input type="text"
                           size="31"
                           maxlength="45"
                           id="email"
                           name="email"
                           value="${param.email}">
                </td>
            </tr>
            <tr>
                <td>phone</td>
                <td>
                    <input type="text"
                           size="31"
                           maxlength="16"
                           id="phone"
                           name="phone"
                           value="${param.phone}">
                </td>
            </tr>
            <tr>
                <td>address</td>
                <td>
                    <input type="text"
                           size="31"
                           maxlength="16"
                           id="address"
                           name="address"
                           value="${param.address}">
                </td>
            </tr>
            <tr>
                <td>cityRegion</td>
                <td>
                    <input type="text"
                           size="31"
                           maxlength="16"
                           id="cityRegion"
                           name="cityRegion"
                           value="${param.cityRegion}">
                </td>
            </tr>
            <tr>
                <td>creditcard</td>
                <td class="inputField">
                    <input type="text"
                           size="31"
                           maxlength="19"
                           id="creditcard"
                           name="creditcard"
                           class="creditcard"
                           value="${param.creditcard}">
                </td>
            </tr>

            <tr>
                <td colspan="2"><br>
                    <input type="submit" value="submit">
                </td>
            </tr>
        </table>
    </form>





    <table style="text-align: left">
          <tr  >
              <td  >&nbsp;</td>
            <td ></td>
        </tr>
        <tr>
            <td>next Day Guarantee </td>
            <td >&pound; ${initParam.deliverySurcharge}</td>
        </tr>
        <tr>
            <td>subtotal</td>
            <td >&pound; <fmt:formatNumber type="number" maxFractionDigits="2" value="${cart.subtotal}"/> </td>

        </tr>
        <tr>
            <td>surcharge</td>
            <td >${initParam.deliverySurcharge}</td>
        </tr>
        <tr>
            <td>total</td>
            <td>&pound; <fmt:formatNumber type="number" maxFractionDigits="2" value="${cart.total}"/>  </tr>
    </table>
</div>