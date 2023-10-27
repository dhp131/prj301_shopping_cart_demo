<%-- 
    Document   : shopping
    Created on : Oct 6, 2023, 10:48:49 AM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>The Hieu's Shop</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>The way to luxury</div>
        <form action="MainController" method="POST">
            <select name="cmbClothes">
                <option value="C001-T shirt-250">T-Shirt - 250$</option>
                <option value="C002-Autumn Jacket-300">Autumn Jacket - 300$</option>
                <option value="C003-Short Jeans-400">Short Jeans - 400$</option>
                <option value="C004-Halloween Dress-550">Halloween Dress - 550$</option>
            </select>
            <select name="cmbQuantity">
                <option value="1">1 Item</option>
                <option value="2">2 Items</option>
                <option value="3">3 Items</option>
                <option value="4">4 Items</option>
                <option value="5">5 Items</option>
                <option value="10">10 Items</option>
            </select>
            <input type="submit" name="action" value="Add"/>
        </form>
        ${requestScope.MESSAGE}
        <br><a href="MainController?action=View_Page">View Cart</a>
    </body>
</html>
