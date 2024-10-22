<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body {
            background-image: url('https://media.gettyimages.com/id/2173471339/photo/2024-china-open-badminton-championships-day-5.jpg?s=2048x2048&w=gi&k=20&c=j7sa5hTGCs82O-yvLszrCwZ5iJubnI1psy7OXyhYvEY='); /* Default background */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            transition: background-image 0.5s; /* Smooth transition */
            display: flex;
            align-items: center; /* Center vertically */
            justify-content: center; /* Center horizontally */
            height: 100vh; /* Full height of the viewport */
        }
        .container {
            display: flex;
            max-width: 1000px; /* Limit max width */
            width: 100%; /* Take full width */
        }
        .image-preview {
            flex: 1; /* Take available space */
            padding: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        img {
            max-width: 100%; /* Make the image responsive */
            max-height: 300px; /* Limit the height */
            border-radius: 10px; /* Add some border radius */
        }
        form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            max-width: 500px;
            margin: auto;
        }
    </style>
    <script>
        function changeBackground(event) {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.body.style.backgroundImage = `url('${e.target.result}')`;
                    document.getElementById('imagePreview').src = e.target.result; // Update the image preview
                }
                reader.readAsDataURL(file); // Read the file as a data URL
            }
        }
    </script>
</head>
<body>
    <h2>Student Registration</h2>
    <div class="container">
        <div class="image-preview">
            <img id="imagePreview" src="" alt="Uploaded Image Preview" style="display: none;"> <!-- Initially hidden -->
        </div>
        <form action = "thanks.jsp" method="post">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName"><br><br>

            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName"><br><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email"><br><br>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone"><br><br>

            <label for="city">City:</label>
            <input type="text" id="city" name="city"><br><br>

            <label>Gender:</label><br>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label><br>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label><br><br>

            <label>Hobbies:</label><br>
            <input type="checkbox" id="cricket" name="hobbies" value="cricket">
            <label for="cricket">Cricket</label><br>
            <input type="checkbox" id="badminton" name="hobbies" value="badminton">
            <label for="badminton">Badminton</label><br>
            <input type="checkbox" id="chess" name="hobbies" value="chess">
            <label for="chess">Chess</label><br><br>

            <label for="backgroundUpload">Upload Background Image:</label>
            <input type="file" id="backgroundUpload" accept="image/*" onchange="changeBackground(event)">
            <br><br>

            <input type="submit" value="Register">
        </form>
    </div>
    <p>Click <a href="https://example.com/image.jpg" target="_blank">here</a> to view the image.</p>
</body>
</html>
