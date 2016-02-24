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

								<div class="col-xs-12 col-xs-offset-0 col-md-3 col-md-offset-0">
									<div class="section-icon-holder">
										<div class="section-icon section-icon-<?= $i; ?>" style="background-image: url('<?= get_template_directory_uri(); ?>/dist/images/icon<?= $i; ?>.png');">
										</div>
									</div>
								</div>

							<div class="section-text col-xs-12 col-xs-offset-0 col-md-8 col-md-offset-1">
								<div class="vertical-center">
									<div class="holder">
										<?php
										get_template_part('templates/page', 'header');

										$call_to_action = null;
                                        if( get_field( "call_to_action" ) ) {
                                            ob_start();
                                            the_field('call_to_action');
                                            $call_to_action = ob_get_contents();
                                            ob_end_clean();
                                        }

										switch($post->ID){
											case 5; // presentation
												get_template_part('templates/content', 'page');
												$connected = new WP_Query( array(
												  'connected_type' => 'highlighted_project',
												  'connected_items' => 5,
												  'nopaging' => true,
												) );


												// Display connected pages
												if ( $connected->have_posts() ) {
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
												}



												break;
											case 7; // stages
												get_template_part('templates/content', 'page');

												$args = array(
													'post_type' => 'stage',
													'posts_per_page' => -1
												);
												$stages = new WP_Query( $args );

												// Display connected pages
												if ( $stages->have_posts() ) {
													?>
													<div>
														<?php while ( $stages->have_posts() ) : $stages->the_post(); ?>
															<div class="col-sm-3"> <!-- MARK do you know how it is that 3 does the effect of 2 here? -->
																<a href="">
																	<?=the_title()?>
																</a>

																<p><?=the_content()?></p>
															</div>
														<?php endwhile; ?>
													</div>
													<?php
													// Prevent weirdness
													wp_reset_postdata();
												}

												break;
											case 9; // technologies
												get_template_part('templates/content', 'page');
												break;
											case 16; // testimonials
												get_template_part('templates/content', 'page');
												break;
										}

                                        ?>
                                        <div class='call-to-action'><?=$call_to_action?></div>
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
