<?php
// =============================================================================
// TEMPLATE NAME: Highlighted Project Template
// =============================================================================
?>
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

<div class="hidden-md hidden-lg col-xs-12"><div class="section-icon"></div></div>

<?php the_content(); ?>

<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<?php
// Display connected pages
if ( $connected->have_posts() ) {
		?>
		<div class="project-on-homepage">
			<?php
			// while ( $connected->have_posts() ) : $connected->the_post();
			// $connected_project_url
			?>
				<div class='col-xs-12 col-lg-6'>
					<h3><a href="/projecte/idrissa/">Idrissa</a></h3>
					<a class="computer" href="/projecte/idrissa/">
						<figure><img class="float" src="<?= get_template_directory_uri(); ?>/dist/images/idrissa/mackbook-facing-portada.png"></figure>
					</a>
					<div class="call_to_action">
						<div class="text-center">
							<a href="/projecte/idrissa/" class="btn btn-default" role="button">Descobreix el projecte</a>
						</div>
					</div>
				</div>
				<div class='col-xs-12 col-lg-6'>
					<h3><a href="/projecte/memoria-viva/">Memòria viva</a></h3>
					<a class="computer" href="/projecte/memoria-viva/">
						<figure><img class="float" src="<?= get_template_directory_uri(); ?>/dist/images/memoria-viva/mackbook-facing-portada.png"></figure>
					</a>

					<div class="call_to_action">
						<div class="text-center">
							<a href="/projecte/memoria-viva/" class="btn btn-default" role="button">Descobreix el projecte</a>
						</div>
					</div>

				</div>
			<?php
			// endwhile;
			?>
		</div>
		<?php
		// Prevent weirdness
		wp_reset_postdata();
}
