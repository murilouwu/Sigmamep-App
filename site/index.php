<?php
    include('conect.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/cssLogin.css">
		<link rel="shortcut icon" href="imgs/logo.png">
		<title>Login</title>
	</head>
	<body>
		<div class="page">
			<div class="login">
				<div class="logo"></div>
				<form class="form" method="post">
					<i class="fa-solid fa-envelope LogIconA"></i>
					<input type="email" name="email" class="input" placeholder="email" id="email">
					<i class="fa-solid fa-lock LogIconB"></i>
					<input type="password" name="senha" class="input" placeholder="senha" id="senha"maxlength="25">
					<input type="submit" name="logar" class="Enviar" value="LOGAR">
				</form>
				<button class="link" onclick="mostrar(['#cadFormAb','#blur'], 0)">Esqueceu a Senha?</button>
			</div>
		</div>
		<div class="blur" id="blur"></div>
		<div class="sing-in" id="cadFormAb">
			<button class="X"><i class="fa-solid fa-circle-xmark" onclick="mostrar(['#cadFormAb','#blur'], 2)"></i></button>
			<div class="Sg-header">
				<div class="Sg-logo"></div>
				<h1 class="Sg-title">Esqueceu a senha</h1>
			</div>
			<div class="body">
				<form class="cadForm" method="post">
					<!--EMAIL-->
					<div class="Cdinput">
						<i class="fa-solid fa-envelope CdIcon"></i>
						<input type="email" name="email" placeholder="coloque o email aqui e receba sua senha" class="CdInInput">
					</div>
					<input type="submit" name="logar" value="Enviar" class="CadEnv">
				</form>
			</div>
		</div>
	 	<script src="https://kit.fontawesome.com/39cab4bf95.js" crossorigin="anonymous"></script>
	 	<script src="java/java.js">
	 	</script>
	</body>
</html>
<?php
    if(isset($_POST['logar'])){
		$email = $_POST['email'];
		$senha = $_POST['senha'];
		$retorno = array(
			'erro'=> false,
			'dados' => array()
		);
		$_SESSION['user'] = Login($email, $senha, $retorno);
		if ($_SESSION['user']['erro'] === false){
			$dec = $_SESSION['user']['dados']->status;
			if($dec != 'adm'){
			    echo "<script>alert('Usuario não é um adm');</script>";
			    $_SESSION['user']['dados']->status = null;
			}
			else{
				mover('adm.php');
			}
		}else{
			echo "<script>alert('Usuario inesitente ou dados da conta escritas erradas');</script>";
		}
	}
?>