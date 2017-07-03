<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
  <style>
    div.container {
      width: 100%;
      border: 2px solid gray;
    }

    header,
    footer {
      padding: 1em;
      color: black;
      background-color: gray;
      clear: left;
      text-align: center;
    }

    nav {
      float: top;
      max-width: width;
      margin: 3em;
      padding: 1em;
      text-align: center;
    }

    nav ul {
      list-style-type: none;
      padding: 0;
    }

    nav ul a {
      text-decoration: none;
    }

    article {
      margin-left: 170px;
      border-left: 1px solid gray;
      padding: 1em;
      overflow: hidden;
    }
  </style>
  <title>Main</title>
</head>

<body>

  <div class="container">

    <header>


      <h1>Image Searching</h1>
      <p style="text-align: center;">
        <p style="text-align: left;">
          <a href="Main.html"><img
					src="http://www.hjmt.com/blog/wp-content/uploads/2012/08/Logo_TV_2015.png"
					alt="logo" style="width: 200px; height: 200px;" /></a>
        </p>

        <p style="text-align: right;">
          <a href="#"><input type="submit" name="Profile" value="Profile"></a>
          <a href="LoginForm_adjust_CSS.html"><input type="submit" name="LOGIN" value="LOGIN"></a>



        </p>

    </header>

    <nav>

      <div>

<a href="#"><input type="submit" name="category1" value="category1"></a>
<a href="#"><input type="submit" name="category2" value="category2"></a>
<a href="#"><input type="submit" name="category3" value="category3"></a>
<a href="#"><input type="submit" name="category4" value="category4"></a>
<a href="#"><input type="submit" name="category5" value="category5"></a>

      </div>

    </nav>

    <article>
      <h1>검색이미지를 던지든 키워드를 입력하든</h1>


      <form>
        Searching : <input type="text" name="">

        <button type="submit" name="">search</button>

      </form>


    </article>

    <footer>Footer</footer>

  </div>

</body>

</html>
