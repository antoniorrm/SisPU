<?php  
	require_once "DB.php";
	class Slide extends DB{
		private $codigo;
		private $texto;
		private $imagem;

		function __construct($codigo, $texto, $imagem){
			$this->codigo = $codigo;
			$this->texto = $texto;
			$this->imagem = $imagem;
		}

		public function getCodigo(){
			return $this->codigo;
		}

		public function setCodigo($codigo){
			$this->codigo = $codigo;
		}

		public function getTexto(){
			return $this->texto;
		}

		public function setTexto($texto){
			$this->texto = $texto;
		}

		public function getImagem(){
			return $this->imagem;
		}

		public function setImagem($imagem){
			$this->imagem = $imagem;
		}
	}
?>