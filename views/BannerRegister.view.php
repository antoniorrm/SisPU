<?php if ( ! defined('ABSPATH')) exit; ?>

<div class="wrap">

<?php
// Carrega todos os métodos do modelo
$modelo->validate_register_form($parametros);
$modelo->get_register_form(chk_array($parametros, 1));
$modelo->del_banner( $parametros );
?>

<form method="post" action="" enctype="multipart/form-data">
    <table class="form-table">
        <tr>
            <td>Banner: </td>
            <td> <input type="file" name="imagem"/></td>
        </tr>

        <tr>
            <td colspan="2">
                <?php echo $modelo->form_msg;?>
                <input type="submit" value="Save" />
                <a href="<?php echo HOME_URI . '/BannerRegister';?>">New Banner</a>
            </td>
        </tr>
    </table>
</form>

<?php
// Lista os banners
$lista = $modelo->get_banner_list();
?>


<table class="list-table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Imagem</th>
        </tr>
    </thead>

    <tbody>

        <?php foreach ($lista as $fetch_userdata): ?>

            <tr>

                <td> <?php echo $fetch_userdata['codigo'] ?> </td>
                <td> <?php echo $fetch_userdata['imagem'] ?> </td>
                <td>
                    <a href="<?php echo HOME_URI ?>/BannerRegister/index/edit/<?php echo $fetch_userdata['codigo'] ?>">Edit</a>
                    <a href="<?php echo HOME_URI ?>/BannerRegister/index/del/<?php echo $fetch_userdata['codigo'] ?>">Delete</a>
                </td>

            </tr>

        <?php endforeach;?>

    </tbody>
</table>

</div> <!-- .wrap -->
