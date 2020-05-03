<?php
    $email = $_POST['uname'];
    $passwrd = $_POST['psw'];
    include 'connection.php';
    $sql = "SELECT * FROM contact where username = '".$email."' and pswd = '".$passwrd."'";
    if($result = mysqli_query($conn, $sql)){
      $res = mysqli_num_rows($result);
      if($res  > 0 ){
        while($row = mysqli_fetch_assoc($result)){
         $employeeid = $row['employeeid'];
         echo "Employee_ID:".$employeeid."<br/>";
         echo "First_Name:".$row['fname']."<br/>";
         echo "Last_Name:".$row['lname']."<br/>";
         $sql2 = "SELECT * FROM salary WHERE employeeid =".$employeeid;
         $result2 = mysqli_query($conn, $sql2);
         $bal = mysqli_fetch_assoc($result2);
         echo "salary:".$bal['employee_salary']."<br/>";
          $sql2 = "SELECT * FROM department WHERE employeeid =".$employeeid;
         $result2 = mysqli_query($conn, $sql2);
         $dept = mysqli_fetch_assoc($result2);
         echo "Department ID:".$dept['dept_id']."<br/>";
         echo "Department Name:".$dept['dept_name']."<br/>";
         echo "Department Location:".$dept['dept_location']."<br/>";
        }
      }
      else{
         echo "Failed";
      }
    }
    $conn->close();
?>
