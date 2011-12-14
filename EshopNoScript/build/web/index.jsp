<%-- 
    Document   : index
    Created on : Dec 13, 2011, 1:54:02 PM
    Author     : lalazari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <jsp:useBean id="Cafe" class="my.mybean" scope="session"/> 
    <jsp:setProperty name="Cafe" property="cafeQuantity" value="${cookie.cafeQuantity.value}"/>
    
    <jsp:useBean id="Sugar" class="my.mybean" scope="session" /> 
    <jsp:setProperty name="Sugar" property="sugarQuantity" value="${cookie.sugarQuantity.value}"/>
    
    <jsp:useBean id="Water" class="my.mybean" scope="session"/> 
    <jsp:setProperty name="Water" property="waterQuantity" value="${cookie.waterQuantity.value}"/>
    
    <form name="inputform" action="cook.do" method="post" >
        
    <table border="2" cellspacing="0" cellpadding="7"> 
    <tr>
      <th>Item</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Total</th>
    </tr>
    <tr>
      <td>Cafe</td>
      <td>   
          ${initParam.CafePr}   
        </td>
      <td><input type="text" name="cafeQuantity"  size="7" value="${Cafe.cafeQuantity}" /></td>
      <td>${Cafe.cafeQuantity*initParam.CafePr}</td>
    </tr>
    <tr>
      <td>Sugar</td>
      <td>${initParam.SugarPr}
      </td>
      <td><input type="text" name="sugarQuantity" size="7" value="${Sugar.sugarQuantity}" /></td>
      <td>${Sugar.sugarQuantity*initParam.SugarPr}</td>
    </tr>
    <tr>
      <td>Water</td>
      <td>${initParam.WaterPr}
      </td>
      <td><input type="text" name="waterQuantity" size="7" value="${Water.waterQuantity}"/></td>
      <td>${Water.waterQuantity*initParam.WaterPr}</td>
    </tr>
    <tr>
      <td>Total</td>
      <td></td>
      <td></td>
      <td>${Cafe.cafeQuantity*initParam.CafePr+Sugar.sugarQuantity*initParam.SugarPr+Water.waterQuantity*initParam.WaterPr}</td>
    </tr>

    </table>

    <input type="submit"  value="CHECK" name="CHECK"  />
    </form>
    
    <a href="url"> ? </a> 
    
</html>
