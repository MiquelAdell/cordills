<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?php
$connected = new WP_Query( array(
	'connected_type' => 'highlighted_project',
	'connected_items' => 5,
	'nopaging' => true,
) );
$connected_project = get_post($connected->posts[0]->p2p_from);
$connected_project_url = get_permalink($connected->posts[0]->p2p_from);
?>
<div class="nav-home-container visible">
	<nav class="nav-home text-center">
		<div class="menu-main-menu-container">
			<ul id="menu-main-menu-home" class="main-menu nav text-center">
				<?=the_main_menu()?>
			</ul>
		</div>
	</nav>
</div>

<?php the_content(); ?>



<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<?php
// Display connected pages
if ( $connected->have_posts() ) {
		?>
		<div class="project-on-homepage">
			<?php while ( $connected->have_posts() ) : $connected->the_post(); ?>
					<div class='col-xs-12'>
						<a class="computer" href="<?=$connected_project_url?>">
							<figure><img class="float" src="<?= get_template_directory_uri(); ?>/dist/images/mackbook-facing-portada.png"></figure>
						</a>
					</div>
					<div class='col-sm-4 col-xs-12'>
						<a class="iphone" href="<?=$connected_project_url?>">
							<figure><img class="float" src="<?= get_template_directory_uri(); ?>/dist/images/iphone5c-facing-fitxa-red.png"></figure>
						</a>
					</div>
					<div class='col-sm-8 col-xs-12'>
						<a class="ipad" href="<?=$connected_project_url?>">
							<figure><img class="float" src="<?= get_template_directory_uri(); ?>/dist/images/ipad-facing-slideshow-white.png"></figure>
						</a>
					</div>
			<?php endwhile; ?>
		</div>
		<?php
		// Prevent weirdness
		wp_reset_postdata();
}
