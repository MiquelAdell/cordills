<?php
$args = array(
  'post_type' => 'page',
  'post__in' => array( 5, 7, 9, 12 ), //list of page_ids
  'order' => "ASC"
);
$page_query = new WP_Query( $args );
?>




<?php if( $page_query->have_posts() ) : ?>
	<?php $i = 1; ?>

	<div class="front-page-sections">

		<?php while( $page_query->have_posts() ) : $page_query->the_post(); ?>

			<section id="page_id-<?=$post->ID?>" class="front-page-section">
				<div class="vertical-center">
					<div class="container section-container">
						<div class="row">

							<div class=" col-xs-3 col-sm-3">
								<div class="section-icon-holder pin-<?= $i; ?>">
									<div class="section-icon section-icon-<?= $i; ?>" style="background-image: url('<?= get_template_directory_uri(); ?>/dist/images/icon<?= $i; ?>.png');">
									</div>
								</div>
							</div>

							<div class="section-text col-xs-7 col-sm-7 col-sm-offset-1">
								<div class="vertical-center">
									<div class="holder">
										<?php get_template_part('templates/page', 'header'); ?>
										<?php get_template_part('templates/content', 'page'); ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<?php $i++; ?>
		<?php endwhile; ?>
	</div> <!-- eo .front-page-sections -->
<?php else:
	throw new Exception("Missing posts", 1);
endif; ?>
<?php wp_reset_postdata(); ?>
