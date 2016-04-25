<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>


<?php
$args = array(
  'post_type' => 'stage',
  'posts_per_page' => -1,
  'order'   => 'ASC'
);
$stages = new WP_Query( $args );

// Display connected pages
if ( $stages->have_posts() ) {
  ?>
  <div clas='row'>
  <?php while ( $stages->have_posts() ) : $stages->the_post(); ?>
      <div class='col-sm-4'>
          <h4><a href="<?=get_permalink()?>"><i class="<?=get_field('icon')?>"></i></h4>
          <h4><a href="<?=get_permalink()?>"><?=the_title()?></a></h4>
          <?=the_content()?>
      </div>
    <?php endwhile; ?>
  </div>
  <?php
  // Prevent weirdness
  wp_reset_postdata();
}
