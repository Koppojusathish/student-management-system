<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Student</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #4a90e2, #007bff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: #fff;
            width: 430px;
            padding: 32px 40px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.20);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
            font-size: 26px;
        }

        label {
            margin-top: 12px;
            display: block;
            color: #555;
            font-weight: 600;
        }

        input {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            margin-top: 6px;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0, 123, 255, 0.4);
        }

        .btn {
            width: 100%;
            margin-top: 20px;
            padding: 12px;
            background: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 8px;
            font-size: 16px;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }

        .cancel {
            display: block;
            margin-top: 15px;
            text-align: center;
            text-decoration: none;
            color: #444;
            font-weight: 600;
            transition: 0.3s;
        }

        .cancel:hover {
            color: #007bff;
        }
    </style>
</head>

<body>
<div class="card">
    <h1>Edit Student</h1>

    <form action="${pageContext.request.contextPath}/students/update/${student.id}" method="post">

        <label>Name</label>
        <input type="text" name="name" value="${student.name}" required/>

        <label>Roll No</label>
        <input type="text" name="rollNo" value="${student.rollNo}" required/>

        <label>Email</label>
        <input type="email" name="email" value="${student.email}" required/>

        <label>Course</label>
        <input type="text" name="course" value="${student.course}"/>

        <button type="submit" class="btn">Update</button>
        <a href="${pageContext.request.contextPath}/" class="cancel">Cancel</a>
    </form>
</div>
</body>
</html>
