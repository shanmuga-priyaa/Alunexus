<?php 
include 'admin/db_connect.php'; 
// Fetch all events
$all_events = $conn->query("SELECT title, schedule, banner FROM events ORDER BY schedule DESC");
// Fetch past events
$past_events = $conn->query("SELECT title, schedule, banner FROM events WHERE DATE(schedule) < '2024-01-01' ORDER BY schedule DESC");

// Fetch upcoming events
$upcoming_events = $conn->query("SELECT title, schedule, banner FROM events WHERE (schedule) >= '2024-01-01' ORDER BY schedule ASC");
?>
<html>
<head>
    <title>Events</title>
    <style>
  .pink-text {
    color: blue;
    background-color: #fff;
    text-align: justify;
    width: 80%;
    font-size: 16px;
    line-height: 1.6;
    border-radius: 8px;
    margin: 0 auto;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
        </style>
</head>
<body><br><br><br><br><br><br>
<div style="text-align:center;">
<a href="#allEventsSection" class="text-white">All Events &nbsp;&nbsp; |&nbsp; &nbsp;</a> 
<a href="#pastEventsSection" class="text-white">Past Events &nbsp;&nbsp; |&nbsp; &nbsp;</a> 
<a href="#upcomingEventsSection" class="text-white">&nbsp;Upcoming Events&nbsp;</a> <br><br><br>
</div>


<div style="text-align: center;">
    <img src="assets/img/event1.jpg" alt="" width="900px" height="400px">
</div>


<!--<img src="assets/img/event1.jpg" alt="" width=500px height=300px>-->

<!--All Event-->
    <div id="allEventsSection" class="container mt-3 pt-2">
        <hr class="divider">
        <table class="table" border="2" bgcolor="#7d7e80">
            <thead>
            <tr style="color: white;">
                <th colspan="3" style="text-align: center; color:yellow;">Table Of All Events</th>
                </tr>
                <tr style="color: white;">
                    <th>Title</th>
                    <th>Schedule</th>
                    <th>Banner</th>
                </tr>
            </thead>
            <tbody id="allEventsTableBody" style="color:white;">
                <?php while($row = $all_events->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $row['title']; ?></td>
                        <td><?php echo $row['schedule']; ?></td>
                        <td><img src="<?php echo $row['banner']; ?>" alt="Event Banner" style="max-width: 100px;"></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
<!--Past Event-->
    <div id="pastEventsSection" class="container mt-3 pt-2">
    
        <hr class="divider">
        <table class="table" border="2" bgcolor="#7d7e80">
            <thead>
            <tr style="color: white;">
                <th colspan="3" style="text-align: center; color:yellow;">Table Of Past Events</th>
                </tr>
                <tr style="color: white;">
                    <th>Title</th>
                    <th>Schedule</th>
                    <th>Banner</th>
                </tr>
            </thead>
            <tbody id="pastEventsTableBody" style="color:white;">
                <?php while($row = $past_events->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $row['title']; ?></td>
                        <td><?php echo $row['schedule']; ?></td>
                        <td><img src="<?php echo $row['banner']; ?>" alt="Event Banner" style="max-width: 100px;"></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
<!--UpComing Event-->
    <div id="upcomingEventsSection" class="container mt-3 pt-2">
    
        <hr class="divider">
        <table class="table" border="2" bgcolor="#7d7e80">
            <thead>
                <tr style="color: white;">
                <th colspan="3" style="text-align: center;color:yellow;">Table Of Upcoming Events</th>
                </tr>
                <tr style="color: white;">
                    <th>Title</th>
                    <th>Schedule</th>
                    <th>Banner</th>
                </tr>
            </thead>
            <tbody id="upcomingEventsTableBody" style="color:white;">
                <?php while($row = $upcoming_events->fetch_assoc()): ?>
                    <tr>
                        <td><?php echo $row['title']; ?></td>
                        <td><?php echo $row['schedule']; ?></td>
                        <td><img src="<?php echo $row['banner']; ?>" alt="Event Banner" style="max-width: 100px;"></td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
    <br><br><br><br><br><br>
    
</body>
</html>
<script>
    
    $('.book-alumni').click(function(){
        uni_modal("Submit Booking Request","booking.php?alumni_id="+$(this).attr('data-id'))
    })
    $('.alumni-img img').click(function(){
        viewer_modal($(this).attr('src'))
    })
     $('#filter').keypress(function(e){
    if(e.which == 13)
        $('#search').trigger('click')
   })
    $('#search').click(function(){
        var txt = $('#filter').val()
        start_load()
        if(txt == ''){
        $('.item').show()
        end_load()
        return false;
        }
        $('.item').each(function(){
            var content = "";
            $(this).find(".filter-txt").each(function(){
                content += ' '+$(this).text()
            })
            if((content.toLowerCase()).includes(txt.toLowerCase()) == true){
                $(this).toggle(true)
            }else{
                $(this).toggle(false)
            }
        })
        end_load()
    })

</script>

