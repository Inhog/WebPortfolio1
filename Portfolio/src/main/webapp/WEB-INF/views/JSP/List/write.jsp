   		<div class="col-sm-8 text-left">
			<div class="container" style="width:100%">
				<table class="table table-bordered">
				   <thead>
				   <caption> 글쓰기 </caption>
				   </thead>
				   <tbody>
				       <form action="write_ok.jsp" method="post" encType="multiplart/form-data">
				           <tr>
				               <th>제목: </th>
				               <td><input type="text" placeholder="제목을 입력하세요. " name="subject" class="form-control"/></td>
				           </tr>
				           <tr>
				               <th>내용: </th>
				               <td><textarea cols="10" placeholder="내용을 입력하세요. " name="content" class="form-control" style="height:90px"></textarea></td>
				           </tr>
				           <tr>
				               <th>첨부파일: </th>
				               <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>
				           </tr>
				           <tr>
				               <th>비밀번호: </th>
				               <td><input type="password" placeholder="비밀번호를 입력하세요" class="form-control"/></td>
				           </tr>
				           <tr>
				               <td colspan="2">
				                   <input type="button" value="등록" onclick="sendData()" class="btn btn-default pull-right"/>
				                   <input type="button" value="reset" class="btn btn-default pull-left"/>
				                   <a class="btn btn-default pull-right" href="./index.html">글 목록</a>
				               </td>
				           </tr>
				       </form>
				   </tbody>
				</table>
				</div>
			</div>