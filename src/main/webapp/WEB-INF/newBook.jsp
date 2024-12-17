<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <div class="form-container">
        <div class="form-content">
            <h2>New Book (Old method)</h2>
            <form action="/books/new/create" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label">Title</label>
                    <input name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="description" class="form-label">Description</label>
                    <input name="description" type="text" class="form-control" id="description">
                </div>
                <div class="mb-3">
                    <label for="language" class="form-label">Language</label>
                    <input name="language" type="text" class="form-control" id="language">
                </div>
                <div class="mb-3">
                    <label for="pages" class="form-label">Number of Pages</label>
                    <input name="pages" type="text" class="form-control" id="pages">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <div class="form-content">
            <h2>New Book (New method)</h2>
            <form:form action="/books" method="post" modelAttribute="book">
                <div class="mb-3">
                    <form:label path="title" class="form-label" for="title">Title</form:label>
                    <form:errors path="title" cssClass="error" />
                    <form:input path="title" class="form-control" id="title" />
                </div>
                <div class="mb-3">
                    <form:label path="description" class="form-label" for="description">Description</form:label>
                    <form:errors path="description" cssClass="error" />
                    <form:input path="description" class="form-control" id="description" />
                </div>
                <div class="mb-3">
                    <form:label path="language" class="form-label" for="language">Language</form:label>
                    <form:errors path="language" cssClass="error" />
                    <form:input path="language" class="form-control" id="language" />
                </div>
                <div class="mb-3">
                    <form:label path="numberOfPages" class="form-label" for="numberOfPages">Number of Pages</form:label>
                    <form:errors path="numberOfPages" cssClass="error" />
                    <form:input path="numberOfPages" class="form-control" id="numberOfPages" />
                </div>
                <input type="submit" class="btn btn-primary" value="Submit">
            </form:form>
        </div>
        <a href="/books" class="btn btn-secondary">Go Back</a>
    </div>

    <script src="/webjars/bootstrap/js/bootstrap.js"></script>
    <script src="/js/script.js"></script>
</body>
</html>