<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<div clas='row process-panel-holder'>
  <?php
  $areas = get_terms( 'area');
  foreach($areas as $area){
    $args = array(
      'post_type' => 'technology',
      'posts_per_page' => -1,
      'order'   => 'ASC',
      'tax_query' => array(
        array(
          'taxonomy' => 'area',
          'field'    => 'slug',
          'terms'    => $area->slug,
        )
      )
    );
    $technologies = new WP_Query( $args );

    // Display connected pages
    if ( $technologies->have_posts() ) {
      ?>
      <div class='col-sm-6 process-panel'>
        <h4><?=$area->name?></h4>
        <div class='icons'>
          <?php while ( $technologies->have_posts() ) : $technologies->the_post(); ?>
            <i class="<?=get_field('icon')?>" data-toggle="tooltip" title="<?=the_title()?>"></i>
          <?php endwhile; ?>
        </div>
        <?php
        // Prevent weirdness
        wp_reset_postdata();
        ?>
      </div> <!-- process-panel -->
      <?php
    }
  }
  ?>
</div> <!-- row process-panel-holder -->
