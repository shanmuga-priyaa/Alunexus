<?php
include('db_connect.php');

// Send message
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['message']) && !empty($_POST['message']) && isset($_POST['sender_id'])) {
        // Sanitize input
        $message = htmlspecialchars($_POST['message']);
        $sender_id = intval($_POST['sender_id']);
        // Insert message into the database
        $sql = "INSERT INTO messages (sender_id, message) VALUES ($sender_id, '$message')";
        if ($conn->query($sql) === TRUE) {
            echo json_encode(array('status' => 'success'));
        } else {
            echo json_encode(array('error' => 'Error sending message: ' . $conn->error));
        }
    } else {
        echo json_encode(array('error' => 'Invalid message or sender'));
    }
}

// Fetch messages
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Fetch last 50 messages from the database
    $sql = "SELECT sender_id, message FROM messages ORDER BY timestamp DESC LIMIT 50";
    $result = $conn->query($sql);
    // Store messages in an array
    $messages = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            // Fetch sender's name based on sender_id
            $sender_id = $row["sender_id"];
            // Fetch sender's name from another table based on sender_id if needed
            $sender_name = "User " . $sender_id; // You may need to fetch the sender's name from another table
            $message = $row["message"];
            $messages[] = array("sender" => $sender_name, "message" => $message);
        }
    }
    echo json_encode($messages);
}
$conn->close();
?>
