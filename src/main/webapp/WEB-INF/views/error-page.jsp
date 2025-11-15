<!DOCTYPE html>
<html>
<head>
    <title>Error</title>

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
            width: 420px;
            padding: 30px;
            border-radius: 16px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
            text-align: center;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        h2 {
            color: #d9534f;
            margin-bottom: 15px;
        }

        p {
            color: #444;
            font-size: 15px;
            margin-bottom: 20px;
        }

        a {
            background: #007bff;
            padding: 10px 18px;
            border-radius: 8px;
            color: #fff;
            text-decoration: none;
            transition: 0.3s;
        }

        a:hover {
            background: #0056b3;
        }
    </style>
</head>

<body>
<div class="card">
    <h2>Error</h2>

    <p>${message}</p>

    <a href="${pageContext.request.contextPath}/students">Back to Home</a>
</div>
</body>
</html>
