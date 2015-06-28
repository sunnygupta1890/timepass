
<html>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<body>
<script type="text/javascript">
function submit1(){
	var xyz = document.getElementById("product").options.length;
	//alert(xyz);
	if(xyz < 2){
		document.forms[0].submit();
	}
	
}
</script>
	<h2>Hello World!</h2>
	<form name="kamla" action="/hello">
		<table>
			<tr>
				<td><select id="product" name="product1" class="width400 select" onclick="javascript:submit1()" onchange="javascript:submit1()">
						<option>select any optio</option>
						<c:forEach items="${sch}" var="obj">
							<option value="${obj}">${obj}</option>
							</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td><input type="text" name="name"/></td>
			</tr>
		</table>
	</form>
</body>


</html>
