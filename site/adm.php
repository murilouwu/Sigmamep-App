<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/cssADM.css">
		<link rel="shortcut icon" href="imgs/logo.png">
		<title>ADM-Painel</title>
	</head>
	<body>
	 	<form class="pesquisa" method="post">
	 		<div class="bars">
	 			<div class="barA">
	 				<i class="fa-solid fa-magnifying-glass ISearch"></i>
	 				<input class="barInputA" type="text" name="nome" placeholder="Pesquise por nome o item">
	 			</div>
	 		</div>
	 		<div class="checks">
	 			<div class="botons">
	 				<i class="fa-solid fa-computer btnCheck" id="btncheck0" onclick="backColorcheck('btncheck0', 'var(--WhiteBrown)', 'var(--Gray)')"></i>
	 				<i class="fa-solid fa-shirt btnCheck" id="btncheck1" onclick="backColorcheck('btncheck1', 'var(--WhiteBrown)', 'var(--Gray)')"></i>
	 				<i class="fa-solid fa-users btnCheck" id="btncheck2" onclick="backColorcheck('btncheck2', 'var(--WhiteBrown)', 'var(--Gray)')"></i>
	 			</div>
	 			<input class="ocultar" type="checkbox" name="produto">
	 			<input class="ocultar" type="checkbox" name="cosmesticos">
	 			<input class="ocultar" type="checkbox" name="users">
	 		</div>
	 	</form>
	 	<div class="centro">
		 	<h1 class="CenterText">Funções</h1>
	 		<div class="Crt-Scroll">
	 			<div class="Crt-Scrollitens">
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-cart-plus"></i>
		 				<label class="itCd-name">Adicionar item</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-square-plus"></i>
		 				<label class="itCd-name">Adicionar Categoria De Produto</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-delete-left"></i>
		 				<label class="itCd-name">Deletar Categoria De Produto</label>
		 			</div>
					<div class="itCard">
		 				<i class="icon fa-solid fa-delete-left"></i>
		 				<label class="itCd-name">Adicionar Propaganda</label>
		 			</div>
					<div class="itCard">
		 				<i class="icon fa-solid fa-delete-left"></i>
		 				<label class="itCd-name">Deletar Propaganda</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-crown"></i>
		 				<label class="itCd-name">Tornar user ADM</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-money-bill-trend-up"></i>
		 				<label class="itCd-name">Mudar o preço de todos os produtos por %</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-trash"></i>
		 				<label class="itCd-name">Deletar Produtos sem estoque</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-skull"></i>
		 				<label class="itCd-name">Banir Users com o status Bad</label>
		 			</div>
		 			<div class="itCard">
		 				<i class="icon fa-solid fa-user-xmark"></i>
		 				<label class="itCd-name">Banir ADM</label>
		 			</div>
		 		</div>
	 		</div>
 		</div>
		<div class="pages">
			<div class="pag">
				<i class="iconPage fa-sharp fa-solid fa-layer-group"></i>
				<label class="pagNumber">34/56</label>
			</div>
			<div class="page">
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
				<div class="PgCard">
					<div class="PgCd-Img"></div>
				</div>
			</div>
			<div class="pags">
				<button class="pagbutton">01</button>
				<label class="pontospag">...</label>

				<button class="pagbutton">30</button>
				<button class="pagbutton">31</button>
				<button class="pagbutton">32</button>
				<button class="pagbutton">33</button>
				<button class="pagbutton pagEs">34</button>
				<button class="pagbutton">35</button>
				<button class="pagbutton">36</button>
				<button class="pagbutton">37</button>
				<button class="pagbutton">38</button>

				<label class="pontospag">...</label>
				<button class="pagbutton">56</button>
			</div>
		</div>
	 	<script src="https://kit.fontawesome.com/39cab4bf95.js" crossorigin="anonymous"></script>
	 	<script src="java/java.js"></script>
	</body>
</html>
