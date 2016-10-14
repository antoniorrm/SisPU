<?php
    class Contato 
    {
        private $codigo;
        private $nome;
        private $sobrenome;
        private $texto;
        private $email;
        private $codigoUsuario;

        public function responder($codigo, $nome, $sobrenome, $texto, $email)
        {

        }

        public function getCodigo()
        {
            return $this->codigo;
        }
        public function setCodigo($cod)
        {
            $this->codigo = $cod;
        }

        public function getCodigoUsuario()
        {
            return $this->codigoUsuario;
        }
        public function setCodigoUsuario($cod)
        {
            $this->codigoUsuario = $cod;
        }

        public function getNome()
        {
            return $this->nome;
        }
        public function setNome($nome)
        {
            $this->nome = $nome;
        }
        public function getSobrenome()
        {
            return $this->sobrenome;
        }
        public function setSobrenome($sobrenome)
        {
            $this->sobrenome = $sobrenome;
        }
        public function getTexto()
        {
            return $this->texto;
        }
        public function setTexto($texto)
        {
            $this->texto = $texto;
        }
        public function getEmail()
        {
            return $this->email;
        }
        public function setEmail($email)
        {
            $this->email = strtolower($email);
        }

    }
 ?>