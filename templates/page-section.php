<?php
$call_to_action = null;
if( get_field( "call_to_action_text" ) ) {
    ob_start();
    ?>
    <div class='call_to_action'>
        <div class='lead'><?=the_field('call_to_action_text')?></div>
        <a href="<?=the_field('call_to_action_target')?>" class="btn btn-default" role="button"><?=the_field('call_to_action_button_text')?></a>
    </div>
    <?php
    $call_to_action = ob_get_contents();
    ob_end_clean();
}
?>

<section id="page_id-<?=$post->ID?>" class="front-page-section">
    <div class="vertical-center">
        <div class="container section-container">
            <div class="row">

                    <div class="col-xs-12 col-xs-offset-0 col-md-3 col-md-offset-0">
                        <div class="section-icon-holder">
                            <div class="section-icon section-icon-<?=$post->ID?>" style="background-image: url('<?= get_template_directory_uri(); ?>/dist/images/icon<?=$post->ID?>.png');">
                            </div>
                        </div>
                    </div>

                <div class="section-text col-xs-12 col-xs-offset-0 col-md-8 col-md-offset-1">
                    <div class="vertical-center">
                        <div class="holder">
                            <?php
                            get_template_part('templates/page', 'header');
                            get_template_part('templates/page-'.$post->ID);
                            ?>
                            <?=$call_to_action?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
