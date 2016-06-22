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
<?php the_content(); ?>

<div class="nav-home-container visible">
	<nav class="nav-home text-center">
		<div class="menu-main-menu-container">
			<ul id="menu-main-menu-home" class="main-menu nav text-center">
				<?=the_main_menu()?>
			</ul>
		</div>
	</div>


<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<?php
// Display connected pages
if ( $connected->have_posts() ) {
		?>
		<div class="project-on-homepage">
			<?php while ( $connected->have_posts() ) : $connected->the_post(); ?>
				<?php
				$image = get_field('full_mockup');
				?>

				<?php if( !empty($image) ): ?>
					<a href="<?=$connected_project_url?>">
						<img class="project-image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
					</a>
				<?php endif; ?>
			<?php endwhile; ?>
		</div>
		<?php
		// Prevent weirdness
		wp_reset_postdata();
}
