<?php
    $server = 'localhost:3306';
    $user = 'leizveoc_user';
    $pass = 'senha@forte';
    $bd = 'leizveoc_Sigmamep';
    $con =  new Mysqli($server, $user, $pass, $bd);
    if(!$con){
		echo "<script>alert('Erro na conexão');</script>".$con->error;
	}
?>
