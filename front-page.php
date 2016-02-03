<?php
$args = array(
  'post_type' => 'page',
  'post__in' => array( 7, 9, 5, 12, 16 ), //list of page_ids
  'order' => "ASC"
);
$page_query = new WP_Query( $args );
?>




<?php if( $page_query->have_posts() ) : ?>
	<?php $i = 1; ?>

	<div class="front-page-sections">

		<?php while( $page_query->have_posts() ) : $page_query->the_post(); ?>

			<div class="front-page-section" id="page_id-<?=$post->ID?>">

				<div id="parallax<?= $i; ?>" class="parallaxParent">
					<div class="parallax-bacgkround" style="background-image: url('<?= get_template_directory_uri(); ?>/dist/images/section<?= $i; ?>.jpg');"></div>
				</div>
				<div class="spacer s1">
					<div class="box2">
						<?php get_template_part('templates/page', 'header'); ?>
                        <div class="section-icon section-icon-<?= $i; ?>" style="background-image: url('<?= get_template_directory_uri(); ?>/dist/images/icon<?= $i; ?>.png');"></div>
					    <?php get_template_part('templates/content', 'page'); ?>
					</div>
				</div>

			</div>
			<?php $i++; ?>
		<?php endwhile; ?>
	</div> <!-- eo .front-page-sections -->
<?php else:
	throw new Exception("Missing posts", 1);
endif; ?>
<?php wp_reset_postdata(); ?>
