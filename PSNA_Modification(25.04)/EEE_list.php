<?php 
include('admin/db_connect.php'); // Adjust the path if necessary
?>
<html>
	<head>
		<title>Conversation</title>
</head>
<body><br><br><br>	
<div class="container-fluid">
	
	<div class="col-lg-12">
		<div class="row mb-4 mt-4">
			<div class="col-md-12">
				
			</div>
		</div><br><br><br>	
		<div class="row">
			<!-- FORM Panel -->

			<!-- Table Panel -->
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<b>List of Alumni</b>
						<!-- <span class="float:right"><a class="btn btn-primary btn-block btn-sm col-sm-2 float-right" href="index.php?page=manage_alumni" id="new_alumni">
					<i class="fa fa-plus"></i> New Entry
				</a></span> -->
					</div>
					<div class="card-body">
						<table class="table table-condensed table-bordered table-hover">
						
							<thead>
								<tr>
									<th class="">Name</th>
									<th class="">Course Graduated</th> 
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
					
							<?php 
								 $course = "EEE"; 
								 $batch ="2024";

								$alumni = $conn->query("SELECT a.*, c.course, CONCAT(a.lastname, ', ', a.firstname, ' ', a.middlename) AS name 
														FROM alumnus_bio a 
														INNER JOIN courses c ON c.id = a.course_id 
														WHERE c.course = '$course' AND a.batch='$batch'
														ORDER BY CONCAT(a.lastname, ', ', a.firstname, ' ', a.middlename) ASC");
								while($row = $alumni->fetch_assoc()):									
								?>
								<tr>
									<td class="">
										 <p> <b><?php echo ucwords($row['name']) ?></b></p>
									</td>
									<td class="">
										 <p> <b><?php echo $row['course'] ?></b></p>
									</td>
									<!-- <td class="text-center">
										<?php if($row['status'] == 1): ?>
											<span class="badge badge-primary">Verified</span>
										<?php else: ?>
											<span class="badge badge-secondary">Not Verified</span>
										<?php endif; ?> -->

										</td>
									<td class="text-center">
									<button class="btn btn-sm btn-outline-primary view_alumni" type="button" data-id="<?php echo $row['id'] ?>" onclick="redirectToChatbot()">Chat</button>
									</td>
								</tr>
								<?php endwhile; ?>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- Table Panel -->
		</div>
	</div>	

</div>
<style>
	
	td{
		vertical-align: middle !important;
	}
	td p{
		margin: unset
	}
	img{
		max-width:100px;
		max-height: :150px;
	}
	.avatar {
	    display: flex;
	    border-radius: 100%;
	    width: 100px;
	    height: 100px;
	    align-items: center;
	    justify-content: center;
	    border: 3px solid;
	    padding: 5px;
	}
	.avatar img {
	    max-width: calc(100%);
	    max-height: calc(100%);
	    border-radius: 100%;
	}
</style>
	<script>
	$(document).ready(function(){
		$('table').dataTable();
	});

	function redirectToChatbot() {
		window.location.href = 'chatbot/login.php'; // Update this to your desired folder path
	}

	// $('.view_alumni').click(function(){
	// 	uni_modal("Bio","view_alumni.php?id="+$(this).attr('data-id'),'mid-large')
		
	// })
	// $('.delete_alumni').click(function(){
	// 	_conf("Are you sure to delete this alumni?","delete_alumni",[$(this).attr('data-id')])
	// })
	
	// function delete_alumni($id){
	// 	start_load()
	// 	$.ajax({
	// 		url:'ajax.php?action=delete_alumni',
	// 		method:'POST',
	// 		data:{id:$id},
	// 		success:function(resp){
	// 			if(resp==1){
	// 				alert_toast("Data successfully deleted",'success')
	// 				setTimeout(function(){
	// 					location.reload()
	// 				},1500)

	// 			}
	// 		}
	// 	})
	//}
	</script>
</body>
</html>