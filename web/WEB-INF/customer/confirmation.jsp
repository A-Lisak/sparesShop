<div class="huy2">
    <h2>Order Summary </h2>
</div>
<div class="huy5">
    Confirmation number ${orderRecord.confirmationNumber}  
</div>
<div class="huy4">
    <table style="width: 500px; text-align: left">


        <tr style="font-weight: bold">
            <td>product</td>
            <td>quantity</td>
            <td>price</td>
        </tr>

        <c:forEach var="orderedProduct" items="${orderedProducts}" varStatus="iter">

            <tr>
                <td>
                    ${products[iter.index].name}
                </td>
                <td>
                    ${orderedProduct.quantity}
                </td>



                <td>&pound; <fmt:formatNumber type="number" maxFractionDigits="2" value="${products[iter.index].price * orderedProduct.quantity}"/>  </td>
            </tr>

        </c:forEach>



        <tr>
            <td>surcharge</td>
            <td>${initParam.deliverySurcharge}</td>
            <td></td>
        </tr>

        <tr style="font-weight: bold">
            <td>total</td>

            <td>&pound; <fmt:formatNumber type="number" maxFractionDigits="2" value="${orderRecord.amount}"/>  </td>
            <td></td>
        </tr>


        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>


        </tr>
        <tr>
            <td>dateProcessed</td>
            <td>${orderRecord.dateCreated}</td>
            <td>&nbsp;</td>
        </tr>
    </table>


    <table style="width: 500px; text-align: left">
        <tr>
            <th colspan="3">Delivery address</th>
        </tr>

        <tr>
            <td colspan="3">
                ${customer.name}
                <br>
                ${customer.address}
                <br>
                ${customer.cityRegion}
                <br>
                <hr><br>
                Contact details<br>
                ${customer.email}
                <br>
                ${customer.phone}
            </td>
        </tr>
    </table>
</div>
