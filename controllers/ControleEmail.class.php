<?php
	class ControleEmail extends Conexao{
		public static $instance;

	    private function __construct() {
	        //
	    }

		public static function getInstance(){
	    	if (!isset(self::$instance))
	        	self::$instance = new ControleEmail();

	    	return self::$instance;
		}

		public function enviarEmail($assunto, $mensagem){
			require_once ABSPATH . '/vendor/PHPMailer/class.phpmailer.php';
			$mail = new PHPMailer(true);
			$mail->IsSMTP(); // Define que a mensagem será SMTP

			try {
				$mail->Host = SMTP_HOST; // Endereço do servidor SMTP (Autenticação, utilize o host smtp.seudomínio.com.br)
				$mail->SMTPAuth   = true;  // Usar autenticação SMTP (obrigatório para smtp.seudomínio.com.br)
				$mail->Port       = 587; //  Usar 587 porta SMTP
				$mail->Username = SMTP_USERNAME; // Usuário do servidor SMTP (endereço de email)
				$mail->Password = SMTP_PASSWORD; // Senha do servidor SMTP (senha do email usado)

				//Define o remetente
				// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=    
				$mail->SetFrom(EMAIL_FROM, EMAIL_NAME); //Seu e-mail
				$mail->AddReplyTo(EMAIL_FROM, EMAIL_NAME); //Seu e-mail
				$mail->Subject = $assunto;//Assunto do e-mail


				//Define os destinatário(s)
				//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
				$mail->AddAddress('jordao05@hotmail.com', 'Teste');

				//Campos abaixo são opcionais 
				//=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
				//$mail->AddCC('destinarario@dominio.com.br', 'Destinatario'); // Copia
				//$mail->AddBCC('destinatario_oculto@dominio.com.br', 'Destinatario2`'); // Cópia Oculta
				//$mail->AddAttachment('images/phpmailer.gif');      // Adicionar um anexo


				//Define o corpo do email
				$mail->MsgHTML($mensagem); 

				////Caso queira colocar o conteudo de um arquivo utilize o método abaixo ao invés da mensagem no corpo do e-mail.
				//$mail->MsgHTML(file_get_contents('arquivo.html'));

				$mail->Send();
				echo "Mensagem enviada com sucesso</p>\n";
				//return "a";
				//caso apresente algum erro é apresentado abaixo com essa exceção.
			}catch (phpmailerException $e) {
				echo $e->errorMessage(); //Mensagem de erro costumizada do PHPMailer
			}
			//return "b";
		}
	}
 ?>