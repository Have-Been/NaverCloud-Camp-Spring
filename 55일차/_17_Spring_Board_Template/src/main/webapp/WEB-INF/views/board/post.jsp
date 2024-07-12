<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 24. 7. 12.
  Time: 오후 5:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
    <div>
        <jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>

        <main>
            <div class="container w-50 mt-5 mb-5">
                <h4>글 등록</h4>
            </div>
            <div class="container mt-3 w-50">
                <form id="insertForm" action="#">
                    <div class="form-group">
                        <label for="boardCategory">카테고리</label>
                        <select class="form-select" name="boardCategory" id="boardCategory">
                            <option value="free" selected>자유게시판</option>
                            <option value="notice">공지사항</option>
                        </select>
                    </div>
                    <div class="form-group mt-3">
                        <label for="title">제목</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="writer">작성자</label>
                        <input type="text" class="form-control" id="writer" name="writer" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="content">내용</label>
                        <textarea class="form-control" id="content" name="content" rows="10" required></textarea>
                    </div>
                    <div class="form-group mt-3">
                        <label for="uploadFiles">파일첨부</label>
                        <input class="form-control" type="file" name="uploadFiles" id="uploadFiles" multiple>
                        <div id="preview" class="mt-3 text-center"
                             data-placeholder="파일을 첨부하려면 파일선택 버튼을 누르세요.">
                        </div>
                    </div>
                    <div class="container mt-3 mb-5 w-50 d-flex justify-content-center">
                        <button type="submit" class="btn btn-outline-secondary">등록</button>
                    </div>
                </form>
            </div>
        </main>

        <jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>
    </div>
</body>
</html>
