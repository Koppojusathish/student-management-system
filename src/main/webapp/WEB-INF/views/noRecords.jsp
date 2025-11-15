<!DOCTYPE html>
<html>
<head>
    <title>No Records Found</title>

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
            width: 380px;
            padding: 30px 35px;
            border-radius: 16px;
            text-align: center;
            box-shadow: 0 12px 25px rgba(0,0,0,0.2);
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to   { opacity: 1; transform: scale(1); }
        }

        h2 {
            color: #d9534f;
            margin-bottom: 20px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            background: #007bff;
            color: #fff;
            padding: 10px 20px;
            font-size: 15px;
            border-radius: 8px;
            transition: 0.3s;
        }

        a:hover {
            background: #0056b3;
        }
    </style>
</head>

<body>
<div class="card">
    <h2>No Records Found</h2>
    <a href="${pageContext.request.contextPath}/students">Back to Home</a>
</div>
</body>
</html>
