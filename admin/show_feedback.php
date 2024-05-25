

<?php
// Include the database.php file

include('sidebar.php');

// Retrieve feedback data from the database
$conn = connection();
$sql = "SELECT * FROM tbl_feedback";
$result = $conn->query($sql);

// Display the feedback data in an HTML table
?>

<!DOCTYPE html>
<html>
<head>
    <title>Feedback List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    
    <div class="col-10">
    <div class="content-right">
        <div class="top" style="background-color:#343a40">
    <h1 style="color:#f2f2f2; background-color:#343a40">Feedback List</h1>
        </div>
    <div class="bottom view-post">
    <table>
        <tr>
            <th>Username</th>
            <th>Email</th>
            <th>Telephone</th>
            <th>Address</th>
            <th>Message</th>
            <th>created_at</th>
        </tr>
        <?php
        if ($rs->num_rows > 0) {
            $sql = "SELECT `username`, `email`, `telephone`, `address`, `message` ,`created_at` FROM `tbl_feedback`";
            $rs  = connection()->query($sql);
            while($row = $rs->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row["username"] . "</td>";
                echo "<td>" . $row["email"] . "</td>";
                echo "<td>" . $row["telephone"] . "</td>";
                echo "<td>" . $row["address"] . "</td>";
                echo "<td>" . $row["message"] . "</td>";
                echo "<td>" . $row["created_at"] . "</td>";
               

            }
        } else {
            echo "<tr><td colspan='6'>No feedback data available.</td></tr>";
        }
        ?>
    </table>
    </div>
    </div>
    </div>
</body>
</html>