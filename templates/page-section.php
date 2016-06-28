<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?php
$call_to_action = null;
if( get_field( "call_to_action_button_text" ) ) {
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
                            if($post->ID === 5){
                                ?>
                                <div class="brand-in-home">
                                    <div class="brand col-xs-12 text-center">
                        				<?php web_title(); ?>
                        			</div>
                                </div>
                                <div class="nav-home-container visible">
                                	<nav class="nav-home text-center">
                                		<div class="menu-main-menu-container">
                                			<ul id="menu-main-menu-home" class="main-menu nav text-center">
                                				<?=the_main_menu()?>
                                			</ul>
                                		</div>
                                	</nav>
                                </div>
                                <?php
                            } else {
                                get_template_part('templates/page', 'header');
                            }
                            get_template_part('templates/page-'.$post->ID);
                            ?>
                            <div class="row col-xs-12"><?=$call_to_action?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
