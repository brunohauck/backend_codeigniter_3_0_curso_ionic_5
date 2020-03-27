<?php
header('Access-Control-Allow-Origin: *');
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct()
  {
        parent::__construct();
        $this->load->model('ModeloAdmin', 'banco', TRUE);
				$this->load->helper('url');
  }
	public function login_old(){
		echo "tudo bem";
	}
  public function login(){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    	$request = json_decode($json, true);
    	$email = "";
			$password = "";
    	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
					  if($key == "email"){
		        	$email = $val;
		        }else
		        if($key == "password"){
		        	$password = $val;
							$password2 = password_hash($val, PASSWORD_DEFAULT);
		        }else{
							$msg = "valor enviado invalido";
						}		        
		    }
				$retornoLogin = $this->banco->validate_login($email);
				if($retornoLogin){
					
					foreach($retornoLogin as $ret){
						$key = md5(uniqid(rand(), TRUE));
						
						if(password_verify($password,$ret->password)){
							$data = array(
								'tk' => $key
							);
							$user_id = $ret->id;
							$this->db->where('id', $user_id);
							$this->db->update('empresa', $data);	
							$restaurante = $this->banco->get_restaurante_by_id($ret->id);
							foreach($restaurante as $res){
								$res_id = $res->id;
							}
							$msg = $user_id."|sucesso|1|".$key."|".$res_id."|".$password2;
						}else{
							$msg = "Email ou senha inválidos";
						}	
					}	
				}else{
					$msg = "Email ou senha inválidos";
				}			
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
	}
	
	public function cadastrar_cardapio($token){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    	$request = json_decode($json, true);
    	$nome = "";
    	$ingredientes = "";
			$preco = "";
			$empresa_id = "";
			$restaurante_id = "";
		  $flag_update = "";
			$id = "";
			var_dump($request);
     	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
					if($key == "id"){
		        	$id = $val;
		        }else
		        if($key == "nome"){
		        	$nome = $val;
		        }else
					  if($key == "ingredientes"){
		        	$ingredientes = $val;
		        }else
		        if($key == "preco"){
		        	$preco = $val;
		        }else
		        if($key == "empresa_id"){
		        	$empresa_id = $val;
		        }else
		        if($key == "restaurante_id"){
		        	$restaurante_id = $val;
						}else
		        if($key == "flag_update"){
		        	$flag_update = $val;
		        }	
		        else{
							$msg = "valor enviado invalido";
						}	//flag_update	        
		    }
				// Verificando a permissao com token
				$this->db->where('tk', $token);  
				$this->db->where('id', $empresa_id);  
				$query = $this->db->get('empresa');
				//$msg .= "tk-> ".$token." - ".$empresa_id;
				if($query->num_rows() > 0){
						
					$dados = array(
							'restaurante_id' => $restaurante_id,
							'nome' => $nome,
							'ingredientes' => $ingredientes,
							'preco' => $preco
					);
					//$msg .= " ".$flag_update;
					if($flag_update){
						$this->db->where('id', $id);
						$this->db->update('cardapio', $dados);
						$msg = $id."|sucesso";
					}else{
						if($this->db->insert('cardapio', $dados)){
							$insert_id = $this->db->insert_id();
							$msg = $insert_id."|sucesso";
						}else{
							$msg = "Ocorreu algum erro";
						}	
						
					}
				
				}else{
						$msg .= " Token inválido";
				}
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
		//echo json_encode($response);
	}
	
	public function alterar_status($token){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    	$request = json_decode($json, true);
    	$id = "";
    	$status = "";
		  $empresa_id = "";
		  

			//var_dump($request);
     	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
				
					 if($key == "id"){
		        	$id = $val;
		        }else
		        if($key == "status"){
		        	$status = $val;
		        }else
		        if($key == "empresa_id"){
		        	$empresa_id = $val;
		        }
		        else{
							$msg = "valor enviado invalido";
						}	//flag_update	        
		    }
				// Verificando a permissao com token
				$this->db->where('tk', $token);  
				$this->db->where('id', $empresa_id);  
				$query = $this->db->get('empresa');
				//$msg .= "tk-> ".$token." - ".$empresa_id;
				if($query->num_rows() > 0){
						
					$dados = array(
							'status' => $status
					);
					$this->db->where('id', $id);
					$this->db->update('pedidos', $dados);
					$msg = "sucesso";
					
				
				}else{
						$msg .= "Token inválido";
				}
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
		//echo json_encode($response);
	}
	
	public function cadastrar_taxa_entrega($token){
		$msg = "";
		$request = array();
		$json = file_get_contents('php://input');
    	$request = json_decode($json, true);
    	$cidade = "";
    	$bairro = "";
			$preco = "";
			$empresa_id = "";
			$restaurante_id = "";
		  $flag_update = "";
			$id = "";
			$status = 0;
			var_dump($request);
     	if(!empty($request))
    	{
    		foreach ($request as $key => $val) 
    		{
				
					 if($key == "id"){
		        	$id = $val;
		        }else
		        if($key == "cidade"){
		        	$cidade = $val;
		        }else
					  if($key == "bairro"){
		        	$ingredientes = $val;
		        }else
		        if($key == "preco"){
		        	$preco = $val;
		        }else
		        if($key == "status"){
		        	$status = $val;
		        }else
		        if($key == "empresa_id"){
		        	$empresa_id = $val;
		        }else
		        if($key == "restaurante_id"){
		        	$restaurante_id = $val;
						}else
		        if($key == "flag_update"){
		        	$flag_update = $val;
		        }	
		        else{
							$msg = "valor enviado invalido";
						}	//flag_update	        
		    }
				// Verificando a permissao com token
				$this->db->where('tk', $token);  
				$this->db->where('id', $empresa_id);  
				$query = $this->db->get('empresa');
				//$msg .= "tk-> ".$token." - ".$empresa_id;
				if($query->num_rows() > 0){
						
					$dados = array(
							'restaurante_id' => $restaurante_id,
							'cidade' => $cidade,
							'bairro' => $ingredientes,
							'valor' => $preco,
						  'status' => $status
					);
					//$msg .= " ".$flag_update;
					if($flag_update){
						$this->db->where('id', $id);
						$this->db->update('taxa_entrega', $dados);
						$msg = $id."|sucesso";
					}else{
						if($this->db->insert('taxa_entrega', $dados)){
							$insert_id = $this->db->insert_id();
							$msg = $insert_id."|sucesso";
						}else{
							$msg = "Ocorreu algum erro";
						}	
						
					}
				
				}else{
						$msg .= " Token inválido";
				}
		}
		else
		{
		    $msg = "Erro ao enviar os dados";
		}
		echo $msg;
		//echo json_encode($response);
	}
	
	public function get_ionic_cart_json($empresa_id,$restaurante_id,$token){
		// Verificando a permissao com token
		$this->db->where('tk', $token);  
		$this->db->where('id', $empresa_id);  
		$query = $this->db->get('empresa');
				//$msg .= "tk-> ".$token." - ".$empresa_id;
		if($query->num_rows() > 0){
		
			$pedidos_db = $this->banco->get_pedidos($restaurante_id);
			$response = array();
			//var_dump($pedidos_db);
			//echo "<br />";
			
			foreach($pedidos_db as $res){
				$pedidos = array();
				$pedido = array();
				$cart = array();
				$cart["id"] = $res->id;

				//echo "<br />pedido_id".$res->id;
				$cart_pedidos = $this->banco->get_cart_pedidos($res->id);
					//cardapios_pedido
				foreach($cart_pedidos as $ped){	
					//echo "<br />".$ped->cardapio_id;
					$cardapios = $this->banco->get_cardapio_by_id($ped->cardapio_id);
					$cardapio = array();
					foreach($cardapios as $car){
						$cardapio["id"] = $car->id;
						$cardapio["nome"] = $car->nome;
						$cardapio["tipo"] = $car->tipo;
						$cardapio["ingredientes"] = $car->ingredientes;						
					}
					$pedido["cardapio"] = $cardapio;
					$pedido["quantidade"] = $ped->quantidade;
					array_push($pedidos, $pedido);
				}	
				$cart["pedidos"] = $pedidos;
				$cart["usuario"] = $res->usurarios_id;
				$cart["valor"] = $res->valor;
				$cart["taxa_entrega"] = "15";
				$cart["email"] = $res->email;
				$cart["status"] = $res->status;
				array_push($response, $cart);
			}
			//echo "<br />";
			echo json_encode($response);
		}else{
			echo "token inválido";
		}	
	}			
	
	public function get_ionic_cart_json_todos($empresa_id,$restaurante_id,$token){
		// Verificando a permissao com token
		$this->db->where('tk', $token);  
		$this->db->where('id', $empresa_id);  
		$query = $this->db->get('empresa');
				//$msg .= "tk-> ".$token." - ".$empresa_id;
		if($query->num_rows() > 0){
		
			$pedidos_db = $this->banco->get_cart_pedidos_todos($restaurante_id);
			$response = array();
			//var_dump($pedidos_db);
			//echo "<br />";
			
			foreach($pedidos_db as $res){
				$pedidos = array();
				$pedido = array();
				$cart = array();
				$cart["id"] = $res->id;

				//echo "<br />pedido_id".$res->id;
				$cart_pedidos = $this->banco->get_cart_pedidos($res->id);
					//cardapios_pedido
				foreach($cart_pedidos as $ped){	
					//echo "<br />".$ped->cardapio_id;
					$cardapios = $this->banco->get_cardapio_by_id($ped->cardapio_id);
					$cardapio = array();
					foreach($cardapios as $car){
						$cardapio["id"] = $car->id;
						$cardapio["nome"] = $car->nome;
						$cardapio["tipo"] = $car->tipo;
						$cardapio["ingredientes"] = $car->ingredientes;						
					}
					$pedido["cardapio"] = $cardapio;
					$pedido["quantidade"] = $ped->quantidade;
					array_push($pedidos, $pedido);
				}	
				$cart["pedidos"] = $pedidos;
				$cart["usuario"] = $res->usurarios_id;
				$cart["valor"] = $res->valor;
				$cart["taxa_entrega"] = "15";
				$cart["email"] = $res->email;
				$cart["status"] = $res->status;
				array_push($response, $cart);
			}
			//echo "<br />";
			echo json_encode($response);
		}else{
			echo "token inválido";
		}	
	}			
	
}  