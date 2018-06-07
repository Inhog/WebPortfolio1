<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="col-sm-8 text-left">
	<table class ="table  table-bordered">
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>165</td>
		<td>봐라</td>
		<td>임인호</td>
		<td>2018.01.01</td>
		<td>5</td>
	</tr>
	</tbody>
	</table>
	<hr/>
<a class="btn btn-default pull-right" href ="<c:url value='/List/write'/>">글쓰기</a>
<div class ="text-center">
	<ul class="pagination">
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
	</ul>
	</div>
</div>
