<?php
$args = array(
  'post_type' => 'page',
  'post__in' => array( 7, 9, 5, 12 ), //list of page_ids
  'order' => "ASC"
);
$page_query = new WP_Query( $args );
?>

<?php if( $page_query->have_posts() ) : ?>
	<ul class="front-page-sections">
		<?php while( $page_query->have_posts() ) : $page_query->the_post(); ?>
			<li class="front-page-section" id="page_id-'<?=$post->ID?>'">
				<?php get_template_part('templates/page', 'header'); ?>
			    <?php get_template_part('templates/content', 'page'); ?>
			</li>
		<?php endwhile; ?>
	</ul>
<?php else:
	throw new Exception("Missing posts", 1);
endif; ?>
<?php wp_reset_postdata(); ?>
