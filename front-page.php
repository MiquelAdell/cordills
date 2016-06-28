<!-- <?php echo "basename: ".basename( __FILE__ ); ?> -->

<?php /* Template Name: Front Page */

$args = array(
	'post_type' => 'page',
	'post__in' => array( 5, 7, 9, 16 ), //list of page_ids
	'order' => "ASC"
);
$page_query = new WP_Query( $args );
?>


<script type="image/svg+xml"><?php echo file_get_contents(get_stylesheet_directory()."/dist/images/glass.svg"); ?></script>
<script type="image/svg+xml"><?php echo file_get_contents(get_stylesheet_directory()."/dist/images/tap.svg"); ?></script>
<script type="image/svg+xml"><?php echo file_get_contents(get_stylesheet_directory()."/dist/images/boiler.svg"); ?></script>
<script type="image/svg+xml"><?php echo file_get_contents(get_stylesheet_directory()."/dist/images/grinder.svg"); ?></script>

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
