<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?php
$call_to_action = null;
if( function_exists("get_field") && get_field( "call_to_action_button_text" ) ) {
    ob_start();
    ?>
    <div class='call_to_action'>
        <div class='lead'>
            <?=the_field('call_to_action_text')?>
        </div>
        <div class="text-center">
            <a href="<?=the_field('call_to_action_target')?>" class="btn btn-default" role="button"><?=the_field('call_to_action_button_text')?></a>
        </div>
    </div>
    <?php
    $call_to_action = ob_get_contents();
    ob_end_clean();
}
?>
<section id="<?=$post->post_name?>" class="page_id-<?=$post->ID?> front-page-section">
    <div class="vertical-center">
        <div class="container section-container">
            <div class="row">

                <div class="hidden-xs hidden-sm col-md-4"><div class="section-icon"></div></div>

                <div class="section-text col-xs-12 col-xs-offset-0 col-md-8 col-md-offset-0">
                    <div class="vertical-center">
                        <div class="page-holder">
                            <?php
                            get_template_part('templates/page', 'header');
                            ?>
                            <?php
                            $template = get_page_template_slug();
                            if($template){
                                $template = pathinfo($template);
                                $template = $template['dirname']."/".$template['filename'];
                                $_REQUEST['FROM_TEMPLATE_PART'] = true;
                                get_template_part($template);
                            }
                            ?>
                            <div class="row">
                                <div class="col-xs-12">
                                    <?=$call_to_action?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
