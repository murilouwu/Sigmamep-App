<?php
    session_start();
    $server = 'localhost:3306';
    $user = 'leizveoc_user';
    $pass = 'senha@forte';
    $bd = 'leizveoc_Sigmamep';
    $con =  new Mysqli($server, $user, $pass, $bd);
    if(!$con){
		echo "<script>alert('Erro na conect');</script>".$con->error;
	}
	    function mover($page)
	    {

	    	echo '<script> window.location = "'.$page.'" </script>';
	    }
	    function Login($email, $senha, $retorno){
	    	$sql = 'SELECT * FROM user WHERE email = "'.$email.'" AND senha="'.$senha.'"';
	    	$res = $GLOBALS['con']->query($sql);
	    	if($res->num_rows > 0){
	    		$retorno['erro'] = false;
	    		$retorno['dados'] = $res->fetch_object();
	    	}else{
	    		$retorno['erro'] = true;
	    	}
	    	return $retorno;
	    }
?>
