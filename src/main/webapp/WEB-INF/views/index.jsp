<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Student Management</title>

    <style>
        body {
            margin: 0;
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #4a90e2, #007bff);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 40px 0;
        }

        .container {
            background: #fff;
            width: 90%;
            max-width: 1100px;
            padding: 35px 40px;
            border-radius: 16px;
            box-shadow: 0 12px 30px rgba(0,0,0,0.2);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            text-align: center;
            margin-top: 0;
            margin-bottom: 25px;
            color: #333;
            font-size: 32px;
            letter-spacing: 1px;
        }

        /* Add button */
        .btn {
            display: inline-block;
            background: #28a745;
            color: white;
            padding: 10px 18px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 15px;
            transition: 0.3s;
            margin-bottom: 20px;
        }

        .btn:hover {
            background: #1f7a34;
        }

        /* Search area */
        form {
            display: flex;
            gap: 10px;
            margin-bottom: 22px;
        }

        input[type="text"] {
            flex: 1;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        input[type="text"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 6px rgba(0,123,255,0.4);
        }

        button {
            padding: 12px 20px;
            background: #007bff;
            border: none;
            color: #fff;
            font-size: 15px;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        button:hover {
            background: #0056b3;
        }

        form a {
            padding: 12px 20px;
            background: #6c757d;
            color: white;
            border-radius: 8px;
            text-decoration: none;
        }

        form a:hover {
            background: #565e64;
        }

        /* Table */
        table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 12px;
            overflow: hidden;
        }

        th {
            background: #007bff;
            color: white;
            padding: 14px;
            font-size: 15px;
        }

        td {
            padding: 12px 14px;
            border-bottom: 1px solid #eee;
            color: #444;
        }

        tbody tr {
            transition: 0.3s;
        }

        tbody tr:hover {
            background-color: rgba(0, 123, 255, 0.08);
        }

        td a {
            text-decoration: none;
            color: #007bff;
            font-weight: 600;
        }

        td a:hover {
            color: #0056b3;
        }

        @media (max-width: 768px) {
            form {
                flex-direction: column;
            }
            form button, form a {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>

<body>
<div class="container">
    <h1>Student Management</h1>

    <a href="${pageContext.request.contextPath}/students/new" class="btn">+ Add Student</a>

    <form action="${pageContext.request.contextPath}/students/search" method="get">
        <input type="text" name="keyword"
               placeholder="Search by Roll Number, Name or Course"
               value="${keyword}">
        <button type="submit">Search</button>
        <a href="${pageContext.request.contextPath}/students">Reset</a>
    </form>

    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Roll No</th>
            <th>Email</th>
            <th>Course</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${students}" var="s">
            <tr>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.rollNo}</td>
                <td>${s.email}</td>
                <td>${s.course}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/students/edit/${s.id}">Edit</a> |
                    <a href="${pageContext.request.contextPath}/students/delete/${s.id}"
                       onclick="return confirm('Are you sure you want to delete this student?')">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
</div>
</body>
</html>
