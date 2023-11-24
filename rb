<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resume Builder</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 20px;
            color: #333;
        }

        h1 {
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin: 20px 0 10px;
            font-weight: bold;
        }

        input, select, textarea {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #1a5276;
        }
    </style>
</head>

<body>
    <h1>Resume Builder</h1>

    <form>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" id="dob" name="dob" required>

        <label for="fatherName">Father's Name:</label>
        <input type="text" id="fatherName" name="fatherName" required>

        <label for="nationality">Nationality:</label>
        <input type="text" id="nationality" name="nationality" required>

        <label for="maritalStatus">Marital Status:</label>
        <select id="maritalStatus" name="maritalStatus" required>
            <option value="single">Single</option>
            <option value="married">Married</option>
            <option value="divorced">Divorced</option>
            <option value="widowed">Widowed</option>
        </select>

        <label for="hobbies">Hobbies:</label>
        <textarea id="hobbies" name="hobbies" rows="4" required></textarea>

        <label for="languages">Languages Known:</label>
        <input type="text" id="languages" name="languages" required>

        <label for="objective">Career Objective:</label>
        <textarea id="objective" name="objective" rows="4" required></textarea>

        <label>Education Qualifications:</label>
        <table>
            <thead>
                <tr>
                    <th>Degree</th>
                    <th>Institute</th>
                    <th>Board/University</th>
                    <th>Year of Study</th>
                    <th>Aggregate</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="text" name="degree[]" required></td>
                    <td><input type="text" name="institute[]" required></td>
                    <td><input type="text" name="university[]" required></td>
                    <td><input type="text" name="year[]" required></td>
                    <td><input type="text" name="aggregate[]" required></td>
                </tr>
                <!-- You can add more rows as needed -->
            </tbody>
        </table>

        <label for="technicalSkills">Technical Skills:</label>
        <textarea id="technicalSkills" name="technicalSkills" rows="4" required></textarea>

        <label for="strengths">Strengths:</label>
        <textarea id="strengths" name="strengths" rows="4" required></textarea>

        <label for="achievements">Academic Achievements:</label>
        <textarea id="achievements" name="achievements" rows="4" required></textarea>

        <label for="declaration">Declaration:</label>
        <textarea id="declaration" name="declaration" rows="4" required></textarea>

        <button type="button" onclick="addEducationRow()">Add Qualification</button>
        <button type="submit">Generate Resume</button>
    </form>

    <script>
        function addEducationRow() {
            var table = document.querySelector('table tbody');
            var newRow = table.insertRow(table.rows.length);
            var columns = ['degree', 'institute', 'university', 'year', 'aggregate'];

            for (var i = 0; i < columns.length; i++) {
                var cell = newRow.insertCell(i);
                var input = document.createElement('input');
                input.type = 'text';
                input.name = columns[i] + '[]';
                input.required = true;
                cell.appendChild(input);
            }
        }
    </script>
</body>

</html>
