<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class ModeloAdmin extends CI_Model
{
  function __construct()
  {
       parent::__construct();
  }
  function validate_login($email)
	{
		  $this->db->where('email', $email);	  
      $query = $this->db->get('empresa');
      //var_dump($query);
      //echo $this->db->last_query();
			if($query->num_rows() > 0){
				 $data = $query->result();
         return $data;	
			}else{
				return false;
			}
	}
	function get_restaurante_by_id($id){
		$this->db->where('empresa_id', $id);
    $query = $this->db->get('restaurante');
    if ($query->num_rows() > 0) 
    {
    	$data = $query->result();
      return $data;
    }
    else
    	return array();
	}
	function get_cart_pedidos_todos($id){
		$this->db->select('pedidos.id as id, pedidos.cardapio_id as cardapio_id, 
pedidos.usurarios_id  as usurarios_id, pedidos.valor as valor,pedidos.taxa_entrega as taxa_entrega,pedidos.nome as nome,
pedidos.email as email, pedidos.observacao as observacao, pedidos.status as status, pedidos.created_at as data_hora');
		$this->db->from('pedidos');
		$this->db->join('cardapio', 'pedidos.cardapio_id = cardapio.id');
		$this->db->where('cardapio.restaurante_id', $id);

		$query = $this->db->get();
		
		//$this->db->where('empresa_id', $id);
    //$query = $this->db->get('pedidos');
    if ($query->num_rows() > 0) 
    {
    	$data = $query->result();
      return $data;
    }
    else
  		return array();
	}
	function get_pedidos($id){
		$this->db->select('pedidos.id as id, pedidos.cardapio_id as cardapio_id, 
pedidos.usurarios_id  as usurarios_id, pedidos.valor as valor,pedidos.taxa_entrega as taxa_entrega,pedidos.nome as nome,
pedidos.email as email, pedidos.observacao as observacao, pedidos.status as status, pedidos.created_at as data_hora');
		$this->db->from('pedidos');
		$this->db->join('cardapio', 'pedidos.cardapio_id = cardapio.id');
		$this->db->where('cardapio.restaurante_id', $id);
		$this->db->where('pedidos.status', "aberto");

		$query = $this->db->get();
		
		//$this->db->where('empresa_id', $id);
    //$query = $this->db->get('pedidos');
    if ($query->num_rows() > 0) 
    {
    	$data = $query->result();
      return $data;
    }
    else
  		return array();
	}
	function get_cart_pedidos($id){
		$this->db->where('pedido_id', $id);
    $query = $this->db->get('cardapios_pedido');
    if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();
	}
	function get_cardapio_by_id($id){				

        $this->db->where('id', $id);
        $query = $this->db->get('cardapio');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();

   }
  
}  