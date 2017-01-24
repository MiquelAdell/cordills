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
		foreach($connected->posts as $post){
			$connected_project_url = get_permalink($post);
			?>
				<div class='col-xs-12 col-lg-6'>
					<h3><a href="<?=$connected_project_url?>"><?=$post->post_name?></a></h3>
					<a class="computer" href="<?=$connected_project_url?>">
						<figure><img class="float" src="<?= get_template_directory_uri(); ?>/dist/images/<?=$post->post_name?>/mackbook-facing-portada.png"></figure>
					</a>
					<div class="call_to_action">
						<div class="text-center">
							<a href="<?=$connected_project_url?>" class="btn btn-default" role="button"><?=__('Discover the project')?></a>
						</div>
					</div>
				</div>
			<?php
		}
		?>
	</div>
	<?php
	// Prevent weirdness
	wp_reset_postdata();
}
