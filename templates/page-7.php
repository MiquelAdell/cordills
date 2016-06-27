<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<div class="hidden-md hidden-lg col-xs-12"><div class="section-icon"></div></div>

<div class="content"><?php the_content(); ?></div>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>


<?php
$args = array(
	'post_type' => 'stage',
	'posts_per_page' => -1,
	'order'	 => 'ASC'
);
$stages = new WP_Query( $args );

// Display connected pages
if ( $stages->have_posts() ) {
	?>
	<div clas='row process-panel-holder'>
	<?php while ( $stages->have_posts() ) : $stages->the_post(); ?>
			<div class='col-sm-6 process-panel'>
					<h4><i class="<?=get_field('icon')?>"></i> <?=the_title()?></h4>
					<div class='text'><?=the_content()?></div>
			</div> <!-- col-sm-6 process-panel -->
		<?php endwhile; ?>
	</div> <!-- row process-panel-holder -->
	<?php
	wp_reset_postdata();
}
