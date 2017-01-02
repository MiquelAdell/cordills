<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?php /* Template Name: Front Page */

$home_ID = icl_object_id(2, 'page', true);

$args = array(
	'post_type' => 'page',
	'hierarchical' => 0,
	'post_parent' => $home_ID,
	'order' => 'ASC',
	'orderby' => 'date'
);
$page_query = new WP_Query( $args );
?>

<?php if( $page_query->have_posts() ) : ?>
	<?php $i = 1; ?>

	<div class="front-page-sections">
		<?php while( $page_query->have_posts() ) : $page_query->the_post(); ?>
			<?php get_template_part('templates/page-section'); ?>
		<?php endwhile; ?>
	</div> <!-- eo .front-page-sections -->
<?php else:
	throw new Exception("Missing posts", 1);
endif;
wp_reset_postdata();

?>

<script type="image/svg+xml"><?=file_get_contents(get_stylesheet_directory()."/dist/images/glass.svg"); ?></script>
<script type="image/svg+xml"><?=file_get_contents(get_stylesheet_directory()."/dist/images/tap.svg"); ?></script>
<script type="image/svg+xml"><?=file_get_contents(get_stylesheet_directory()."/dist/images/boiler.svg"); ?></script>
<script type="image/svg+xml"><?=file_get_contents(get_stylesheet_directory()."/dist/images/grinder.svg"); ?></script>
<php
