<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class EmployeeModel extends CI_Model
{
  function __construct()
  {
    parent::__construct();
  }
  function get_all(){
		$this->db->where('status', 'valid');
    $query = $this->db->get('employees');
    if ($query->num_rows() > 0) 
    {
      $data = $query->result();
      return $data;
    }
    else
      return array();
	}
	function get_by_id($id){				
  	$this->db->where('id', $id);
    $query = $this->db->get('employees');
    if ($query->num_rows() > 0) 
    {
    	$data = $query->result();
      return $data;
    }
    else
    	return array();
  }
  function get_like($val){				
  	$this->db->like('first_name', $val);
    $query = $this->db->get('employees');
    if ($query->num_rows() > 0) 
    {
    	$data = $query->result();
      return $data;
    }
    else
    	return array();

  }
  
}