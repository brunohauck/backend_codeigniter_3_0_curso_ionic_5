<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Modelo extends CI_Model
{
    function __construct()
    {
        parent::__construct();
   }
	//-------------------------------------- IONIC ----------------------
	function validate_login($email,$password)
	{
		  $this->db->where('email', $email);
      $this->db->where('password', $password);		  
      $query = $this->db->get('usuarios_app');
			if($query->num_rows() > 0){
				 $data = $query->result();
         return $data;	
			}else{
				return false;
			}
	}
	function get_pedidos($id){
		$this->db->where('usurarios_id', $id);
    $query = $this->db->get('pedidos');
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
	//------------------------------- taxa entrega ----------------------
	
	function get_endereco($id){
		$this->db->where('usuario_id', $id);
    $query = $this->db->get('usuarios_endereco');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();
	}
	function get_taxa_entrega($bairro){
		$this->db->where('bairro', $bairro);
    $query = $this->db->get('taxa_entrega');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();
		
	}
	//-------------------------------------------------------------------
    function get_cardapio($id){				
        //$id = 1;
        $this->db->where('restaurante_id', $id);
        $query = $this->db->get('cardapio');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();

    }
	
	  function get_pratos_by_id($id){				
        //$id = 1;
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
	function get_endereco_by_id($id){
        $this->db->where('restaurante_id', $id);
        $query = $this->db->get('endereco');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();

    }
	function get_artigos(){
        $query = $this->db->get('artigos');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();

    }
	
	
	function grava_pedido(){
		$dados = array(
			'prato_id' => $_POST['prato_id'],
			'nome' => $_POST['nome'],
			'email' => $_POST['email'],
		);
		$insert = $this->db->insert('pedidos', $dados);
		$pedido_id = $this->db->insert_id();
		$retorno = array(
			'pedido_id' => $pedido_id,
			'flag_insert' => $insert,

		);
		return $retorno;
	}
	
	function get_restaurantes(){
				$this->db->select('res.id as id_restaurante, res.nome as nome, res.pedido_url as pedido_url, res.tipo as tipo, res.telefone as telefone, res.celular as celular, res.endereco as endereco, res.flag_pedido_cadastrado as flag_pedido_cadastrado, res.latitude as latitude, res.longitude as longitude, foto.img_url as img_url');
        $this->db->from('restaurante as res');
        $this->db->join('restaurante_foto as foto', 'res.id = foto.restaurante_id');
        $query = $this->db->get();
        if ($query->num_rows() > 0)
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();
		
		
	}
	
	function get_info(){

        $id = 1;
        $this->db->where('restaurante_id', $id);
        $query = $this->db->get('informacoes');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();

    }
	
	function get_refeicao_montada(){

        $id = 1;
        $this->db->where('restaurante_id', $id);
        $query = $this->db->get('refeicao_montada');
        if ($query->num_rows() > 0) 
        {
            $data = $query->result();
            return $data;
        }
        else
            return array();

    }

    
    
}

?>
