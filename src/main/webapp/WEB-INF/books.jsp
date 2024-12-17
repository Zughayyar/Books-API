<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Rendering Books</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="/css/styles.css" />
</head>
<body>
    <h1>All Books</h1>
    <a href="/books/new" class="btn btn-secondary">Add New Book</a>
    <div class="books-table">
        <table class="table table-hover">
            <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Title</th>
                <th scope="col">Language</th>
                <th scope="col">Number of Pages</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <th scope="row"><c:out value="${book.id}" /></th>
                    <th scope="row">
                        <a href="/books/${book.id}">${book.title}</a>
                    </th>
                    <th scope="row"><c:out value="${book.language}" /></th>
                    <th scope="row"><c:out value="${book.numberOfPages}" /></th>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="/webjars/bootstrap/js/bootstrap.js"></script>
    <script src="/js/script.js"></script>
</body>
</html>