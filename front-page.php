<?php
$args = array(
  'post_type' => 'page',
  'post__in' => array( 5, 7, 9, 16 ), //list of page_ids
  'order' => "ASC"
);
$page_query = new WP_Query( $args );
?>




<?php if( $page_query->have_posts() ) : ?>
	<?php $i = 1; ?>

	<div class="front-page-sections">

		<?php while( $page_query->have_posts() ) : $page_query->the_post(); ?>
			<? get_template_part('templates/page-section'); ?>
		<?php endwhile; ?>
	</div> <!-- eo .front-page-sections -->
<?php else:
	throw new Exception("Missing posts", 1);
endif; ?>
<?php wp_reset_postdata(); ?>
