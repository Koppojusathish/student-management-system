<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Student</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #4a90e2, #007bff);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background: #fff;
            padding: 30px 40px;
            width: 420px;
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
            letter-spacing: 1px;
            font-size: 26px;
        }

        label {
            display: block;
            margin: 10px 0 6px;
            color: #555;
            font-weight: 600;
        }

        input {
            width: 100%;
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 15px;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0,123,255,0.4);
        }

        .btn {
            width: 100%;
            margin-top: 20px;
            background: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: #0056b3;
        }

        .cancel {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #444;
            text-decoration: none;
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
    <h1>Add Student</h1>

    <form action="${pageContext.request.contextPath}/students" method="post">
        <label>Name</label>
        <input type="text" name="name" required/>

        <label>Roll No</label>
        <input type="text" name="rollNo" required/>

        <label>Email</label>
        <input type="email" name="email" required/>

        <label>Course</label>
        <input type="text" name="course"/>

        <button type="submit" class="btn">Save</button>
        <a href="${pageContext.request.contextPath}/" class="cancel">Cancel</a>
    </form>
</div>
</body>
</html>
