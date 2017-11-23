<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table border="1">
	<thead>
		<tr><td>UUID</td></tr>
	</thead>
	<tbody>
		<c:forEach items="${rows1}" var="row">
			<tr>
				<td>${row.name}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>



