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
										<?php
										get_template_part('templates/page', 'header');

										switch($post->ID){
											case 5; // presentation
												get_template_part('templates/content', 'page');
												$connected = new WP_Query( array(
												  'connected_type' => 'highlighted_project',
												  'connected_items' => 5,
												  'nopaging' => true,
												) );

												ob_start();
												the_field('call_to_action');
												$call_to_action = ob_get_contents();
												ob_end_clean();
												// Display connected pages
												if ( $connected->have_posts() ) :
													?>
													<div class="project-on-homepage well ribbon-holder">
														<?php while ( $connected->have_posts() ) : $connected->the_post(); ?>
															<a href="" class="corner-ribbon top-left shadow">
																<?=the_title()?>
															</a>
															<?
															$image = get_field('full_mockup');
															?>

															<? if( !empty($image) ): ?>
																<img class="project-image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
															<?php endif; ?>
															<a href="/projects">Veure més</a>
														<?php endwhile; ?>
													</div>

													<?php
													// Prevent weirdness
													wp_reset_postdata();
													echo $call_to_action;
												endif;



												break;
											case 7; // areas
												get_template_part('templates/content', 'page');
												break;
											case 9; // technologies
												get_template_part('templates/content', 'page');
												break;
											case 16; // testimonials
												get_template_part('templates/content', 'page');
												break;
										}
										?>
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
