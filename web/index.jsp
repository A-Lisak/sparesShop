<div class="slogan-wrapper">
    <div class="slogan">

        <h1>Kitchen appliance<br>spares and parts</h1>
        The experienced and professional team is the key asset of our company.<br>
        We are the UK's local spare parts retailer. We're here to help<br>
        you find spare parts, accessories and consumables for all the <br>
        electrical appliances in your home and garden.<br>

    </div><!-- slogan -->
</div>

<div class="huy">
    welcome to KASP
    <p>Please select your appliance type</p>
</div>

<ul class="features">
    <c:forEach var="category" items="${categories}">
        <li>  <a href="category?${category.id}">${category.name}</a></li>
        </c:forEach>
</ul>
