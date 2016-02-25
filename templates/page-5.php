<?php the_content(); ?>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<?php
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
            <a href="<?=get_permalink()?>" class="corner-ribbon top-left shadow">
                <?=the_title()?>
            </a>
            <?
            $image = get_field('full_mockup');
            ?>

            <? if( !empty($image) ): ?>
                <img class="project-image" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
            <?php endif; ?>
            <a href="/project">Veure més</a>
        <?php endwhile; ?>
    </div>
    <?php
    // Prevent weirdness
    wp_reset_postdata();
}
?>
