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
	<div clas='row process-panel-holder panel-group' id="acordion">
	<?php
	$i = 0;
	?>
	<?php while ( $stages->have_posts() ) : $stages->the_post(); ?>
			<?php
			if($i === 0){
				$in = "in";
			} else {
				$in = "";
			}
			?>
				<div class="panel panel-default panel-process" data-toggle="collapse" data-parent="#acordion" href="#collapse<?=$i?>">
					<a class="panel panel-default panel-process">
						<div class="panel-heading"><i class="<?=get_field('icon')?>"></i> <?=the_title()?></div>
					</a>
					<div id="collapse<?=$i?>" class="panel-collapse collapse <?=$in?>">
						<div class="panel-body"><?=the_content()?></div>
					</div>
				</div>

			<?php
			$i++;
			?>
		<?php endwhile; ?>
	</div> <!-- row process-panel-holder -->
	<?php
	wp_reset_postdata();
}
