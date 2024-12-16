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

    <div class="show-book">
      <h1>${book.title}</h1>
      <h4>Description: ${book.description}</h4>
      <h4>Language: ${book.language}</h4>
      <h4>Number of Pages: ${book.numberOfPages}</h4>
    </div>

    <a href="/books" class="btn btn-secondary">Go Back</a>

    <script src="/webjars/bootstrap/js/bootstrap.js"></script>
    <script src="/js/script.js"></script>
</body>
</html>