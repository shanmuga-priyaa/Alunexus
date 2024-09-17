<?php
session_start();
ini_set('display_errors', 1);
Class Action {
	private $db;

	public function __construct() {
		ob_start();
   	include 'db_connect.php';
    
    $this->db = $conn;
	}
	function __destruct() {
	    $this->db->close();
	    ob_end_flush();
	}

	function login(){
		
		extract($_POST);		
		$qry = $this->db->query("SELECT * FROM users where username = '".$username."' and password = '".md5($password)."' ");
		if($qry->num_rows > 0){
			foreach ($qry->fetch_array() as $key => $value) {
				if($key != 'passwors' && !is_numeric($key))
					$_SESSION['login_'.$key] = $value;
			}
			if($_SESSION['login_type'] != 1){
				foreach ($_SESSION as $key => $value) {
					unset($_SESSION[$key]);
				}
				return 2 ;
				exit;
			}
				return 1;
		}else{
			return 3;
		}
}
function login2(){
    extract($_POST);
    if(isset($email))
        $username = $email;
    $qry = $this->db->query("SELECT u.*, us.* FROM user u INNER JOIN users us ON u.email = us.username WHERE u.email = '".$username."' AND u.password = '".md5($password)."' ");
    if($qry->num_rows > 0){
        $result = $qry->fetch_array();
        foreach ($result as $key => $value) {
            if($key != 'password' && !is_numeric($key))
                $_SESSION['login_'.$key] = $value;
        }
        if($_SESSION['login_alumnus_id'] > 0){
            $bio = $this->db->query("SELECT * FROM alumnus_bio WHERE id = ".$_SESSION['login_alumnus_id']);
            if($bio->num_rows > 0){
                foreach ($bio->fetch_array() as $key => $value) {
                    if($key != 'password' && !is_numeric($key))
                        $_SESSION['bio'][$key] = $value;
                }
            }
        }
        if($_SESSION['bio']['status'] != 1){
            foreach ($_SESSION as $key => $value) {
                unset($_SESSION[$key]);
            }
            return 2 ;
            exit;
        }
        return 1;
    }else{
        return 3;
    }
}

	function logout(){
		session_destroy();
		foreach ($_SESSION as $key => $value) {
			unset($_SESSION[$key]);
		}
		header("location:login.php");
	}
	function logout2(){
		session_destroy();
		foreach ($_SESSION as $key => $value) {
			unset($_SESSION[$key]);
		}
		header("location:../index.php");
	}

	function save_user(){
		extract($_POST);
		
		// Insert data into alumnus_bio table
		$data_bio = " firstname = '$firstname' ";
		$data_bio .= ", middlename = '$middlename' ";
		$data_bio .= ", lastname = '$lastname' ";
		$data_bio .= ", email = '$email' ";
		$data_bio .= ", password = '".md5($password)."' ";
		$data_bio .= ", gender = '$gender' ";
		$data_bio .= ", role = '$role' ";
		$data_bio .= ", batch = '$batch' ";
		$data_bio .= ", course_id = '$course_id' ";
		$data_bio .= ", connected_to = '$connected_to' ";
		$data_bio .= ", avatar = '$avatar' ";
		
		$save_bio = $this->db->query("INSERT INTO alumnus_bio SET ".$data_bio);
		if(!$save_bio){
			return 0; // Error saving alumnus_bio data
		}
		
		$alumnus_id = $this->db->insert_id;
	
		// Insert data into users table
		$data_user = " name = '$firstname $middlename $lastname' ";
		$data_user .= ", username = '$email' ";
		$data_user .= ", password = '".md5($password)."' ";
		$data_user .= ", type = 3 ";
		$data_user .= ", auto_generated_pass = '$password' ";
		$data_user .= ", alumnus_id = '$alumnus_id' ";
		
		$save_user = $this->db->query("INSERT INTO users SET ".$data_user);
		if(!$save_user){
			// Rollback alumnus_bio insertion
			$this->db->query("DELETE FROM alumnus_bio WHERE id = '$alumnus_id'");
			return 0; // Error saving user data
		}
	
		// Insert data into messaging_bd.user table
		$data_messaging_user = " alumnus_id = '$alumnus_id' ";
		$data_messaging_user .= ", firstname = '$firstname' ";
		$data_messaging_user .= ", middlename = '$middlename' ";
		$data_messaging_user .= ", lastname = '$lastname' ";
		$data_messaging_user .= ", email = '$email' ";
		$data_messaging_user .= ", password = '".md5($password)."' ";
	
		$save_messaging_user = $this->db->query("INSERT INTO messaging_bd.user SET ".$data_messaging_user);
		if(!$save_messaging_user){
			// Rollback alumnus_bio and users insertions
			$this->db->query("DELETE FROM alumnus_bio WHERE id = '$alumnus_id'");
			$this->db->query("DELETE FROM users WHERE alumnus_id = '$alumnus_id'");
			return 0; // Error saving messaging_bd.user data
		}
	
		return 1; // User saved successfully
	}
	
	
	
	function delete_user(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM users where id = ".$id);
		if($delete)
			return 1;
	}
	function signup(){
		extract($_POST);
	
		// Check if email already exists
		$chk_user = $this->db->query("SELECT * FROM users where username = '$email' ")->num_rows;
		if($chk_user > 0){
			return 2; // Email already exists
		}
		
		// Insert data into alumnus_bio table
		$data_bio = " firstname = '$firstname' ";
		$data_bio .= ", middlename = '$middlename' ";
		$data_bio .= ", lastname = '$lastname' ";
		$data_bio .= ", email = '$email' ";
		$data_bio .= ", password = '".md5($password)."' ";
		$data_bio .= ", gender = '$gender' ";
		$data_bio .= ", role = '$role' ";
		$data_bio .= ", batch = '$batch' ";
		$data_bio .= ", course_id = '$course_id' ";
		$data_bio .= ", connected_to = '$connected_to' ";
		$data_bio .= ", avatar = '$avatar' ";
	
		$save_bio = $this->db->query("INSERT INTO alumnus_bio SET ".$data_bio);
		if(!$save_bio){
			return 0; // Error saving alumnus_bio data
		}
		
		$alumnus_id = $this->db->insert_id;
		
		// Insert data into users table
		$data_user = " name = '$firstname $middlename $lastname' ";
		$data_user .= ", username = '$email' ";
		$data_user .= ", password = '".md5($password)."' ";
		$data_user .= ", type = '3' ";
	
		$save_user = $this->db->query("INSERT INTO users set ".$data_user);
		if(!$save_user){
			return 0; // Error saving user data
		}
		
		$uid = $this->db->insert_id;
		
		// Insert data into user table
		$data_alumnus = " firstname = '$firstname' ";
		$data_alumnus .= ", middlename = '$middlename' ";
		$data_alumnus .= ", lastname = '$lastname' ";
		$data_alumnus .= ", gender = '$gender' ";
		$data_alumnus .= ", email = '$email' ";
		$data_alumnus .= ", password = '".md5($password)."' ";
		$data_alumnus .= ", alumnus_id = '$uid' ";
		
		$save_alumnus = $this->db->query("INSERT INTO user set ".$data_alumnus);
		if(!$save_alumnus){
			return 0; // Error saving alumnus data
		}
	
		return 1; // Success
	}
	
	
	
	
	function update_account(){
		extract($_POST);
		$data_user = " name = '$firstname $middlename $lastname' ";
		$data_user .= ", username = '$email' ";
		if(!empty($password))
			$data_user .= ", password = '".md5($password)."' ";
		$chk_user = $this->db->query("SELECT * FROM users where username = '$email' and id != '{$_SESSION['login_id']}' ")->num_rows;
		if($chk_user > 0){
			return 2;
			exit;
		}
		$save_user = $this->db->query("UPDATE users set $data_user where id = '{$_SESSION['login_id']}' ");
		if($save_user){
			$data_user = '';
			foreach($_POST as $k => $v){
				if($k =='password')
					continue;
				if(empty($data_user) && !is_numeric($k) )
					$data_user = " $k = '$v' ";
				else
					$data_user .= ", $k = '$v' ";
			}
			if($_FILES['img']['tmp_name'] != ''){
				$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
				$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/'. $fname);
				$data_user .= ", avatar = '$fname' ";
			}
			$save_alumnus = $this->db->query("UPDATE user set $data_user where alumnus_id = '{$_SESSION['login_id']}' ");
			if($save_alumnus){
				foreach ($_SESSION as $key => $value) {
					unset($_SESSION[$key]);
				}
				$login = $this->login2();
				if($login)
					return 1;
			}
		}
	}

	function save_settings(){
		extract($_POST);
		$data = " name = '".str_replace("'","&#x2019;",$name)."' ";
		$data .= ", email = '$email' ";
		$data .= ", contact = '$contact' ";
		$data .= ", about_content = '".htmlentities(str_replace("'","&#x2019;",$about))."' ";
		if($_FILES['img']['tmp_name'] != ''){
						$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['img']['name'];
						$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/'. $fname);
					$data .= ", cover_img = '$fname' ";

		}
		
		// echo "INSERT INTO system_settings set ".$data;
		$chk = $this->db->query("SELECT * FROM system_settings");
		if($chk->num_rows > 0){
			$save = $this->db->query("UPDATE system_settings set ".$data);
		}else{
			$save = $this->db->query("INSERT INTO system_settings set ".$data);
		}
		if($save){
		$query = $this->db->query("SELECT * FROM system_settings limit 1")->fetch_array();
		foreach ($query as $key => $value) {
			if(!is_numeric($key))
				$_SESSION['settings'][$key] = $value;
		}

			return 1;
				}
	}

	function save_course(){
		extract($_POST);
		$data = " course = '$course' ";
			if(empty($id)){
				$save = $this->db->query("INSERT INTO courses set $data");
			}else{
				$save = $this->db->query("UPDATE courses set $data where id = $id");
			}
		if($save)
			return 1;
	}
	function delete_course(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM courses where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function update_alumni_acc(){
		extract($_POST);
		$update = $this->db->query("UPDATE alumnus_bio set status = $status where id = $id");
		if($update)
			return 1;
	}
	function save_gallery(){
		extract($_POST);
		$img = array();
  		$fpath = 'assets/uploads/gallery';
		$files= is_dir($fpath) ? scandir($fpath) : array();
		foreach($files as $val){
			if(!in_array($val, array('.','..'))){
				$n = explode('_',$val);
				$img[$n[0]] = $val;
			}
		}
		if(empty($id)){
			$save = $this->db->query("INSERT INTO gallery set about = '$about' ");
			if($save){
				$id = $this->db->insert_id;
				$folder = "assets/uploads/gallery/";
				$file = explode('.',$_FILES['img']['name']);
				$file = end($file);
				if(is_file($folder.$id.'/_img'.'.'.$file))
					unlink($folder.$id.'/_img'.'.'.$file);
				if(isset($img[$id]))
						unlink($folder.$img[$id]);
				if($_FILES['img']['tmp_name'] != ''){
					$fname = $id.'_img'.'.'.$file;
					$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/gallery/'. $fname);
				}
			}
		}else{
			$save = $this->db->query("UPDATE gallery set about = '$about' where id=".$id);
			if($save){
				if($_FILES['img']['tmp_name'] != ''){
					$folder = "assets/uploads/gallery/";
					$file = explode('.',$_FILES['img']['name']);
					$file = end($file);
					if(is_file($folder.$id.'/_img'.'.'.$file))
						unlink($folder.$id.'/_img'.'.'.$file);
					if(isset($img[$id]))
						unlink($folder.$img[$id]);
					$fname = $id.'_img'.'.'.$file;
					$move = move_uploaded_file($_FILES['img']['tmp_name'],'assets/uploads/gallery/'. $fname);
				}
			}
		}
		if($save)
			return 1;
	}
	function delete_gallery(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM gallery where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_career(){
		extract($_POST);
		$data = " company = '$company' ";
		$data .= ", job_title = '$title' ";
		$data .= ", location = '$location' ";
		$data .= ", description = '".htmlentities(str_replace("'","&#x2019;",$description))."' ";

		if(empty($id)){
			// echo "INSERT INTO careers set ".$data;
		$data .= ", user_id = '{$_SESSION['login_id']}' ";
			$save = $this->db->query("INSERT INTO careers set ".$data);
		}else{
			$save = $this->db->query("UPDATE careers set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_career(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM careers where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_forum(){
		extract($_POST);
		$data = " title = '$title' ";
		$data .= ", description = '".htmlentities(str_replace("'","&#x2019;",$description))."' ";

		if(empty($id)){
		$data .= ", user_id = '{$_SESSION['login_id']}' ";
			$save = $this->db->query("INSERT INTO forum_topics set ".$data);
		}else{
			$save = $this->db->query("UPDATE forum_topics set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_forum(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM forum_topics where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_comment(){
		extract($_POST);
		$data = " comment = '".htmlentities(str_replace("'","&#x2019;",$comment))."' ";

		if(empty($id)){
			$data .= ", topic_id = '$topic_id' ";
			$data .= ", user_id = '{$_SESSION['login_id']}' ";
			$save = $this->db->query("INSERT INTO forum_comments set ".$data);
		}else{
			$save = $this->db->query("UPDATE forum_comments set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_comment(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM forum_comments where id = ".$id);
		if($delete){
			return 1;
		}
	}
	function save_event(){
		extract($_POST);
		$data = " title = '$title' ";
		$data .= ", schedule = '$schedule' ";
		$data .= ", content = '".htmlentities(str_replace("'","&#x2019;",$content))."' ";
		if($_FILES['banner']['tmp_name'] != ''){
						$_FILES['banner']['name'] = str_replace(array("(",")"," "), '', $_FILES['banner']['name']);
						$fname = strtotime(date('y-m-d H:i')).'_'.$_FILES['banner']['name'];
						$move = move_uploaded_file($_FILES['banner']['tmp_name'],'assets/uploads/'. $fname);
					$data .= ", banner = '$fname' ";

		}
		if(empty($id)){

			$save = $this->db->query("INSERT INTO events set ".$data);
		}else{
			$save = $this->db->query("UPDATE events set ".$data." where id=".$id);
		}
		if($save)
			return 1;
	}
	function delete_event(){
		extract($_POST);
		$delete = $this->db->query("DELETE FROM events where id = ".$id);
		if($delete){
			return 1;
		}
	}
	
	function participate(){
		extract($_POST);
		$data = " event_id = '$event_id' ";
		$data .= ", user_id = '{$_SESSION['login_id']}' ";
		$commit = $this->db->query("INSERT INTO event_commits set $data ");
		if($commit)
			return 1;

	}
}