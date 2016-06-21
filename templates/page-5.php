<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?php
$connected = new WP_Query( array(
	'connected_type' => 'highlighted_project',
	'connected_items' => 5,
	'nopaging' => true,
) );
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
						<img class="project-image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
						<svg height="0" xmlns="http://www.w3.org/2000/svg">
						    <filter id="drop-shadow">
						        <feGaussianBlur in="SourceAlpha" stdDeviation="4"/>
						        <feOffset dx="12" dy="12" result="offsetblur"/>
						        <feFlood flood-color="rgba(0,0,0,0.5)"/>
						        <feComposite in2="offsetblur" operator="in"/>
						        <feMerge>
						            <feMergeNode/>
						            <feMergeNode in="SourceGraphic"/>
						        </feMerge>
						    </filter>
						</svg>
				<?php endif; ?>
			<?php endwhile; ?>
		</div>
		<?php
		// Prevent weirdness
		wp_reset_postdata();
}
