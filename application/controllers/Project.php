<?php
header('Access-Control-Allow-Origin: *');
defined('BASEPATH') OR exit('No direct script access allowed');

class Project extends CI_Controller {
  
  function __construct()
  {
    parent::__construct();
    $this->load->model('EmployeeModel', 'employee', TRUE);
		$this->load->helper('url');
  }
 
  public function add($tk){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    $request = json_decode($json, true);
    $title = "";
		$brief_description = "";
		$description = "";
		$start_date = "";
		$end_date = "";
		$date_birth = "";
    	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
		        if($key == "title"){
		        	$title = $val;
		        }else
					  if($key == "brief_description"){
		        	$brief_description = $val;
		        }else
		        if($key == "description"){
		        	$description = $val;
		        }else
		        if($key == "start_date"){
		        	$start_date = $val;
		        }else
		        if($key == "end_date"){
		        	$end_date = $val;
		        }else{
							$msg = "valor enviado invalido";
						}		        
		    }
				$new_date_start =  implode("-",array_reverse(explode("/",$start_date)));
        $new_date_end =  implode("-",array_reverse(explode("/",$end_date)));
				$dados = array(
            'title' => $title,
						'brief_description' => $brief_description,
						'description' => $position,
						'start_date' => $start_date,
            'end_date' => $end_date,
            'date_birth' => $new_date,
						'status' => 'valid'
        );
				
				if($this->db->insert('employees', $dados)){
					$insert_id = $this->db->insert_id();
					$msg = $insert_id."|sucesso";
				}else{
					$msg = "Ocorreu algum erro";
				}				
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
	}
  
  public function addToDo(){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    $request = json_decode($json, true);
    $first_n = "";
		$surname = "";
		$position = "";
		$mobile_phone = "";
		$email = "";
		$date_birth = "";
    	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
		        if($key == "first_name"){
		        	$first_name = $val;
		        }else
					  if($key == "surname"){
		        	$surname = $val;
		        }else
		        if($key == "position"){
		        	$position = $val;
		        }else
		        if($key == "mobile_phone"){
		        	$mobile_phone = $val;
		        }else
		        if($key == "email"){
		        	$email = $val;
		        }else
		        if($key == "date_birth"){
		        	$date_birth = $val;
		        }else{
							$msg = "valor enviado invalido";
						}		        
		    }
				$new_date =  implode("-",array_reverse(explode("/",$date_birth)));
				$dados = array(
            'first_name' => $first_name,
						'surname' => $surname,
						'position' => $position,
						'mobile_phone' => $mobile_phone,
            'email' => $email,
            'date_birth' => $new_date,
						'status' => 'valid'
        );
				
				if($this->db->insert('employees', $dados)){
					$insert_id = $this->db->insert_id();
					$msg = $insert_id."|sucesso";
				}else{
					$msg = "Ocorreu algum erro";
				}				
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
	}
}