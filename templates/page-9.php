<?php
$areas = array(
	"frameworks" => array(
		"wordpress" => array('title' => 'WordPress', 'description' => '', 'extraShort' => 'Framework', 'extraLong' => 'Framework'),
		"laravel" => array('title' => 'Laravel', 'description' => '', 'extraShort' => 'Framework', 'extraLong' => 'Framework')
	),
	"frontend" => array(
		"html-five" => array('title' => 'HTML-5', 'description' => '', 'extraShort' => '', 'extraLong' => 'Programació front end'),
		"css3" => array('title' => 'CSS-3', 'description' => '', 'extraShort' => '', 'extraLong' => 'Programació front end'),
		"bootstrap" => array('title' => 'Bootstrap', 'description' => '', 'extraShort' => '', 'extraLong' => 'Programació front end'),
		"sass" => array('title' => 'Sass', 'description' => '', 'extraShort' => '', 'extraLong' => 'Programació front end'),
		"jquery" => array('title' => 'jQuery', 'description' => '', 'extraShort' => '', 'extraLong' => 'Programació front end'),
		"javascript" => array('title' => 'JavaScript', 'description' => '', 'extraShort' => '', 'extraLong' => 'Programació front end')
	),
	"backend" => array(
		"php" => array('title' => 'PHP', 'description' => '', 'extraShort' => 'Programació back end', 'extraLong' => 'Programació back end'),
		"mysql" => array('title' => 'MySQL', 'description' => '', 'extraShort' => '', 'extraLong' => 'Gestió de base de dades'),
		"mariadb" => array('title' => 'MariaDB', 'description' => '', 'extraShort' => '', 'extraLong' => 'Gestió de base de dades'),
		"linux" => array('title' => 'Linux', 'description' => '', 'extraShort' => '', 'extraLong' => 'Gestió de servidors'),
		"docker" => array('title' => 'Docker', 'description' => '', 'extraShort' => '', 'extraLong' => 'Gestió de servidors'),
		"git" => array('title' => 'Git', 'description' => '', 'extraShort' => '', 'extraLong' => 'Gestió de projectes')
	),
	"integracions" => array(
		"twitter" => array('title' => 'Twitter', 'description' => '', 'extraShort' => 'API', 'extraLong' => 'Integració amb API'),
		"facebook" => array('title' => 'Facebook', 'description' => '', 'extraShort' => 'API', 'extraLong' => 'Integració amb API')
	)
);
?>
<div class="content"><?php the_content(); ?></div>
<?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>

<div clas='row technology-panel-holder'>
	<?php
	/*
	$areas = get_terms( 'area');
	foreach($areas as $area){
		$args = array(
			'post_type' => 'technology',
			'posts_per_page' => -1,
			'order'	 => 'ASC',
			'tax_query' => array(
				array(
					'taxonomy' => 'area',
					'field'		=> 'slug',
					'terms'		=> $area->slug,
				)
			)
		);
		$technologies = new WP_Query( $args );

		// Display connected pages
		if ( $technologies->have_posts() ) {
			?>
			<div class='col-sm-6 technology-panel'>
				<h4><?=$area->name?></h4>
					<div class='icons'>
						<?php while ( $technologies->have_posts() ) : $technologies->the_post(); ?>
							<i class="<?=get_field('icon')?>" data-toggle="tooltip" title="<?=the_title()?>"></i>
						<?php endwhile; ?>
				</div>
			</div> <!-- technology-panel -->
			<?php
		}
	}
	wp_reset_postdata();
	*/

	?>
	<svg style="position: absolute; width: 0; height: 0;" width="0" height="0" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
	<defs>
	<symbol id="technology-wordpress" viewBox="0 0 32 32">
	<path class="path1" d="M15.97 0.353v0c4.001 0.007 8.158 1.59 11.681 5.186-2.308 0.586-2.548 2.063-2.033 3.832 0.926 2.636 1.659 5.325 0.88 8.123l-2.379 6.674-4.352-11.433c-0.804-2.581 0.713-2.19 1.973-2.264v-0.829l-10.761-0.026-0.034 0.739c2.415-0.109 2.428 1.047 3.018 2.088l1.625 3.889-3.54 8.299-4.817-12.071c-0.32-1.245-0.519-2.419 1.74-2.147v-0.803l-7.337-0.018c2.61-5.67 8.295-9.252 14.336-9.242zM30.606 10.908v0c0.786 3.894 0.951 7.452-0.657 11.293-2.417 4.617-4.393 5.225-6.32 6.893zM0.895 11.203v0l7.387 18.056c-2.419-1.647-4.122-2.532-6.32-6.73-1.686-4.384-1.748-5.956-1.067-11.325zM16.242 18.015v0l4.679 12.229c-2.973 1.152-6.22 1.282-9.849 0.246z"></path>
	</symbol>
	<symbol id="technology-laravel" viewBox="0 0 32 32">
	<path class="path1" d="M20.055 26c-0.25-0.361-3.503-5.992-3.503-5.992l10.6-2.758c0.264-0.083 0.347-0.139 0.514 0.125s3.5 4.792 3.597 4.944c0.097 0.153 0.194 0.25-0.111 0.361s-10.305 3.486-10.5 3.569c-0.195 0.083-0.347 0.111-0.597-0.25zM31.999 21.389c-0.994-1.339-2.398-3.22-3.297-4.422 0.596-0.158 2.104-0.56 3.297-0.878v5.3zM28.693 10.44c0.163-0.037 0.305-0.082 0.505 0.193 0.167 0.228 2.094 2.671 2.802 3.568v0.578c-0.018 0.004-0.037 0.009-0.056 0.013-0.238 0.052-4.13 1.018-4.13 1.018l-3.183-4.368c-0.089-0.126-0.163-0.252 0.059-0.282s3.84-0.683 4.004-0.72zM5.931 3.579c-0.548 0.025-3.651 0.276-5.611 0.438 0.287-0.831 0.766-1.583 1.439-2.256 1.174-1.174 2.587-1.76 4.24-1.76h19.999c1.653 0 3.066 0.587 4.24 1.76s1.761 2.587 1.761 4.24v6.762c-0.943-1.173-1.948-2.424-2.245-2.782-0.579-0.698-0.862-0.572-1.218-0.52s-4.516 0.75-4.999 0.832c-0.483 0.082-0.787 0.275-0.49 0.691 0.264 0.37 2.999 4.247 3.601 5.101l-10.871 2.604-8.647-14.455c-0.344-0.51-0.415-0.689-1.199-0.653zM21.036 27.945c0.617-0.187 8.509-3.020 10.964-3.918v1.972c0 1.653-0.587 3.066-1.761 4.24s-2.587 1.761-4.24 1.761h-20c-1.653 0-3.066-0.587-4.24-1.761s-1.76-2.587-1.76-4.24v-16.793c2.161 4.689 5.55 11.996 5.683 12.295 0.19 0.427 0.684 1.12 1.84 0.842 1.185-0.284 5.292-1.357 7.536-1.944 1.186 2.147 3.604 6.504 4.052 7.128 0.597 0.833 1.008 0.696 1.925 0.418zM7.551 20.661c-0.325 0.074-0.325 0.037-0.362-0.075-0.034-0.102-6.123-12.66-7.184-14.832 0.008-0.227 0.027-0.449 0.057-0.666 1.045-0.087 5.559-0.49 5.737-0.5 0.2-0.011 0.179 0.032 0.253 0.158 0 0 7.977 13.77 8.117 14.011s0.056 0.316-0.074 0.343c-0.13 0.028-6.219 1.485-6.544 1.56z"></path>
	</symbol>
	<symbol id="technology-bootstrap" viewBox="0 0 32 32">
	<path class="path1" d="M16.247 13.782c0.82 0 1.442-0.179 1.866-0.535 0.423-0.356 0.636-0.883 0.636-1.578 0-0.687-0.211-1.209-0.636-1.566-0.423-0.366-1.046-0.548-1.866-0.548h-2.88v4.229l2.88-0.002zM16.423 22.519c1.046 0 1.831-0.219 2.352-0.655 0.531-0.438 0.797-1.098 0.797-1.981 0-0.866-0.262-1.511-0.785-1.939-0.523-0.438-1.311-0.655-2.366-0.655h-3.054v5.232h3.056zM21.264 15.335c1.117 0.321 1.982 0.914 2.596 1.78s0.92 1.927 0.92 3.184c0 1.927-0.659 3.363-1.974 4.309s-3.317 1.419-6.003 1.419h-8.639v-19.977h7.814c2.804 0 4.831 0.419 6.084 1.257 1.262 0.839 1.893 2.181 1.893 4.027 0 0.973-0.229 1.802-0.689 2.489-0.46 0.677-1.128 1.182-2.002 1.513z"></path>
	<path class="path2" d="M16.802 26.034h-8.647v-19.993h7.822c1.396 0 2.615 0.105 3.626 0.315s1.839 0.527 2.463 0.944c0.63 0.419 1.107 0.97 1.422 1.639s0.475 1.475 0.475 2.395c0 0.97-0.232 1.808-0.691 2.494-0.455 0.671-1.122 1.177-1.982 1.507 1.102 0.321 1.971 0.919 2.578 1.776 0.612 0.863 0.92 1.936 0.92 3.189 0 0.96-0.166 1.81-0.494 2.526s-0.826 1.318-1.483 1.789c-0.655 0.471-1.493 0.829-2.491 1.066-0.998 0.235-2.181 0.355-3.517 0.355zM8.171 26.018h8.631c1.337 0 2.518-0.12 3.514-0.355 0.994-0.235 1.831-0.593 2.484-1.062s1.151-1.070 1.479-1.783c0.328-0.714 0.492-1.561 0.492-2.519 0-1.251-0.308-2.32-0.919-3.181-0.609-0.859-1.48-1.457-2.591-1.776l0.002-0.008-0.003-0.008c0.868-0.328 1.54-0.836 1.997-1.51 0.457-0.682 0.688-1.518 0.688-2.484 0-0.917-0.158-1.721-0.473-2.388-0.313-0.666-0.789-1.216-1.417-1.633-0.623-0.417-1.45-0.733-2.458-0.943s-2.228-0.315-3.622-0.315h-7.803v19.965zM16.423 22.527h-3.064v-5.248h3.064c1.051 0 1.85 0.22 2.371 0.658 0.523 0.428 0.788 1.083 0.788 1.946 0 0.882-0.27 1.55-0.801 1.986-0.521 0.438-1.316 0.658-2.358 0.658zM13.375 22.511h3.048c1.038 0 1.829-0.22 2.347-0.653 0.528-0.433 0.794-1.098 0.794-1.975 0-0.859-0.263-1.51-0.781-1.935-0.518-0.435-1.314-0.653-2.362-0.653h-3.046v5.216zM16.247 13.79c0 0 0 0 0 0v0h-2.888v-4.245h2.888c0.818 0 1.448 0.185 1.871 0.551 0.423 0.356 0.638 0.885 0.638 1.572 0 0.695-0.215 1.229-0.638 1.585s-1.052 0.537-1.871 0.537zM16.247 13.774c0.815 0 1.44-0.179 1.861-0.534 0.42-0.353 0.633-0.883 0.633-1.572 0-0.681-0.213-1.206-0.633-1.559-0.42-0.363-1.046-0.546-1.861-0.546h-2.872v4.213l2.872-0.002z"></path>
	<path class="path3" d="M26.71 31.958h-21.45c-0.702 0-1.386-0.138-2.030-0.413-0.62-0.263-1.179-0.641-1.657-1.119s-0.856-1.037-1.119-1.657c-0.275-0.644-0.413-1.328-0.413-2.030v-21.45c0-0.702 0.138-1.386 0.413-2.030 0.263-0.621 0.641-1.179 1.119-1.657s1.037-0.856 1.657-1.119c0.644-0.275 1.328-0.413 2.030-0.413h21.45c0.702 0 1.386 0.138 2.030 0.413 0.62 0.263 1.179 0.641 1.657 1.119s0.856 1.037 1.119 1.657c0.275 0.644 0.413 1.328 0.413 2.030v21.45c0 0.702-0.138 1.386-0.413 2.030-0.263 0.62-0.641 1.179-1.119 1.657s-1.037 0.856-1.657 1.119c-0.646 0.273-1.328 0.413-2.030 0.413zM5.261 2.479c-0.747 0-1.45 0.294-1.983 0.827s-0.827 1.238-0.827 1.983v21.45c0 0.747 0.294 1.45 0.827 1.983s1.238 0.827 1.983 0.827h21.45c0.747 0 1.45-0.294 1.983-0.827s0.827-1.238 0.827-1.983v-21.45c0-0.747-0.294-1.45-0.827-1.983s-1.238-0.827-1.983-0.827h-21.45z"></path>
	</symbol>
	<symbol id="technology-html-five" viewBox="0 0 32 32">
	<path class="path1" d="M1.892 0l2.567 28.801 11.524 3.199 11.554-3.204 2.572-28.796h-28.216zM25.336 26.963l-9.288 2.574v0.015l-0.024-0.007-0.024 0.007v-0.015l-9.288-2.574-2.195-24.609h23.015l-2.195 24.609zM20.336 16.569l-0.408 4.58-3.944 1.065-3.933-1.060-0.252-2.82h-3.547l0.495 5.547 7.252 2.006 7.229-2.006 0.97-10.844h-12.874l-0.322-3.617h13.517l0.316-3.532h-17.694l0.953 10.681z"></path>
	</symbol>
	<symbol id="technology-css3" viewBox="0 0 32 32">
	<path class="path1" d="M4.762 1.516l-1.074 5.373h21.867l-0.684 3.47h-21.881l-1.059 5.372h21.865l-1.219 6.127-8.813 2.919-7.638-2.919 0.523-2.658h-5.372l-1.278 6.448 12.632 4.834 14.563-4.834 4.805-24.133z"></path>
	</symbol>
	<symbol id="technology-sass" viewBox="0 0 32 32">
	<path class="path1" d="M16.051 0.101c-8.808 0-15.949 7.141-15.949 15.949s7.141 15.949 15.949 15.949 15.949-7.141 15.949-15.949-7.141-15.949-15.949-15.949zM21.214 14.189c-2.772 1.075-5.070 0.903-6.012 0.592-1.075-0.35-1.698-1.059-1.854-1.456-0.062-0.156-0.164-0.421 0-0.506 0.101-0.055 0.14-0.039 0.413 0.257 0.257 0.28 1.285 1.036 3.24 0.818 5.132-0.576 8.216-4.556 7.243-6.697-0.685-1.503-4.634-2.181-9.571 0.288-6.028 3.006-6.355 5.475-6.402 6.417-0.148 2.586 3.193 3.948 4.992 5.872 0.047 0.047 0.086 0.093 0.125 0.14 0.545-0.202 1.301-0.319 2.5-0.335 2.92-0.047 4.564 1.869 4.494 3.59-0.055 1.347-1.293 1.908-1.526 1.947-0.171 0.031-0.257 0.031-0.28-0.101-0.016-0.093 0.047-0.132 0.241-0.257s0.787-0.522 0.888-1.262c0.109-0.732-0.452-2.484-3.255-2.811-0.997-0.117-1.776-0.039-2.445 0.14 0.483 1.075 0.584 3.232-0.537 4.899-1.16 1.729-3.318 2.788-5.42 2.196-0.678-0.187-1.706-1.596-0.818-3.551 0.841-1.854 4.423-3.668 4.914-3.909v-0.008c-1.659-1.433-5.701-3.357-6.269-6.308-0.164-0.833 0.234-2.835 2.687-5.132 2.064-1.931 4.937-3.411 7.593-4.353 4.462-1.581 9.174-0.646 9.898 2.188 0.701 2.796-1.729 6.137-4.836 7.344z"></path>
	<path class="path2" d="M9.852 23.426c-1.082 1.137-1.378 2.57-0.779 2.92 0.553 0.327 1.854-0.062 2.788-1.075 0.296-0.319 0.545-0.685 0.74-1.075 0.039-0.078 0.070-0.156 0.101-0.234s0.062-0.156 0.086-0.241c0.241-0.724 0.265-1.526 0.031-2.391l-0.14 0.078v0.008c0 0-1.667 0.787-2.827 2.009z"></path>
	</symbol>
	<symbol id="technology-jquery" viewBox="0 0 32 32">
	<path class="path1" d="M2.788 7c-2.788 3.939-2.424 9.152-0.303 13.333 0.061 0.121 0.121 0.182 0.182 0.303 0 0.061 0.061 0.121 0.121 0.182 0 0.061 0.061 0.061 0.061 0.121 0.061 0.061 0.061 0.121 0.121 0.182 0.061 0.121 0.121 0.242 0.182 0.364 0.061 0.061 0.061 0.121 0.121 0.182 0.061 0.121 0.182 0.242 0.242 0.364 0.061 0.061 0.061 0.121 0.121 0.182 0.121 0.182 0.242 0.303 0.364 0.485 0 0 0 0 0 0s0.061 0.061 0.061 0.061c0.121 0.121 0.182 0.303 0.303 0.424 0.061 0.061 0.061 0.121 0.121 0.121 0.121 0.121 0.182 0.242 0.303 0.364 0.061 0.061 0.061 0.061 0.121 0.121 0.121 0.182 0.242 0.303 0.424 0.424 0 0 0 0 0 0s0 0 0 0c0.121 0.121 0.242 0.303 0.424 0.424 0.061 0.061 0.061 0.061 0.121 0.121 0.121 0.121 0.182 0.182 0.303 0.303 0.061 0.061 0.061 0.061 0.121 0.121 0.121 0.121 0.303 0.242 0.424 0.424 0 0 0 0 0 0s0.061 0.061 0.061 0.061c0.121 0.121 0.242 0.242 0.424 0.364 0.061 0.061 0.121 0.061 0.182 0.121 0.121 0.061 0.242 0.182 0.364 0.242 0.061 0.061 0.121 0.061 0.182 0.121 0.121 0.121 0.242 0.182 0.364 0.242 0.061 0.061 0.061 0.061 0.121 0.121 0 0 0 0 0.061 0 0.121 0.061 0.242 0.182 0.364 0.242 0.061 0.061 0.121 0.061 0.182 0.121 0.182 0.121 0.364 0.242 0.545 0.364 0.061 0 0.121 0.061 0.182 0.061 0.121 0.061 0.303 0.182 0.424 0.242 0.061 0.061 0.182 0.061 0.242 0.121 0.121 0.061 0.182 0.121 0.303 0.182 0 0 0.061 0 0.061 0.061 0.061 0 0.061 0.061 0.121 0.061 0.182 0.061 0.303 0.182 0.485 0.242 0.061 0 0.061 0 0.121 0.061 0.182 0.061 0.364 0.182 0.545 0.242 0.061 0 0.061 0.061 0.121 0.061 0.182 0.061 0.364 0.121 0.545 0.182 0 0 0.061 0 0.061 0 0.182 0.061 0.424 0.121 0.606 0.182 0.061 0 0.121 0.061 0.121 0.061 0.182 0.061 0.424 0.121 0.606 0.182 13.333 2.424 17.212-8 17.212-8-3.273 4.242-9.030 5.333-14.545 4.121-0.182-0.061-0.424-0.121-0.606-0.182-0.061 0-0.121 0-0.121-0.061-0.182-0.061-0.424-0.121-0.606-0.182 0 0-0.061 0-0.061-0.061-0.182-0.061-0.364-0.121-0.545-0.182-0.061 0-0.121-0.061-0.121-0.061-0.182-0.061-0.364-0.182-0.545-0.242-0.061 0-0.061-0.061-0.121-0.061-0.182-0.061-0.303-0.121-0.485-0.242-0.061 0-0.061-0.061-0.121-0.061-0.121-0.061-0.242-0.121-0.364-0.182-0.061-0.061-0.182-0.061-0.242-0.121-0.121-0.061-0.303-0.182-0.424-0.242-0.061-0.061-0.121-0.061-0.121-0.061-0.182-0.121-0.364-0.242-0.545-0.364-0.061-0.061-0.121-0.061-0.182-0.121-0.121-0.061-0.303-0.182-0.424-0.242-0.061-0.061-0.061-0.061-0.121-0.121-0.121-0.061-0.242-0.182-0.364-0.303-0.061-0.061-0.121-0.061-0.182-0.121-0.121-0.061-0.242-0.182-0.364-0.242-0.061-0.061-0.121-0.061-0.182-0.121-0.121-0.121-0.303-0.242-0.424-0.364 0 0-0.061 0-0.061-0.061-0.121-0.121-0.303-0.303-0.424-0.424-0.061-0.061-0.061-0.061-0.121-0.121-0.121-0.121-0.242-0.182-0.303-0.303-0.061-0.061-0.061-0.061-0.121-0.121-0.121-0.121-0.242-0.303-0.424-0.424 0 0 0 0 0 0-0.121-0.121-0.242-0.303-0.424-0.485-0.061-0.061-0.061-0.061-0.121-0.121-0.121-0.121-0.182-0.242-0.303-0.364-0.061-0.061-0.061-0.061-0.121-0.121-0.121-0.121-0.242-0.303-0.364-0.424-3.030-4.121-4.121-9.879-1.697-14.545z"></path>
	<path class="path2" d="M11.333 3.667c-2 2.849-1.879 6.727-0.303 9.758 0.242 0.485 0.545 1.030 0.909 1.455 0.303 0.424 0.606 0.909 1.030 1.273 0.121 0.182 0.303 0.303 0.424 0.485 0.061 0.061 0.061 0.061 0.121 0.121 0.121 0.121 0.303 0.303 0.485 0.424 0 0 0 0 0 0s0 0 0 0c0.182 0.182 0.364 0.303 0.545 0.424 0.061 0.061 0.061 0.061 0.121 0.121 0.182 0.121 0.364 0.303 0.545 0.424 0 0 0 0 0 0 0.061 0.061 0.182 0.121 0.242 0.182 0.061 0 0.061 0.061 0.121 0.061 0.121 0.061 0.303 0.182 0.424 0.242 0 0 0.061 0 0.061 0.061 0.121 0.061 0.242 0.121 0.364 0.182 0.061 0 0.061 0.061 0.121 0.061 0.061 0.061 0.182 0.061 0.242 0.121 0 0 0 0 0.061 0 0.182 0.061 0.364 0.182 0.545 0.242 0.061 0 0.061 0.061 0.121 0.061 0.121 0.061 0.303 0.121 0.424 0.182 0.061 0 0.121 0.061 0.182 0.061 0.121 0.061 0.242 0.121 0.424 0.121 0.061 0 0.121 0.061 0.182 0.061 0.182 0.061 0.364 0.121 0.606 0.182 10.303 1.697 12.667-6.242 12.667-6.242-2.121 3.091-6.303 4.545-10.727 3.394-0.182-0.061-0.364-0.121-0.606-0.182-0.061 0-0.121-0.061-0.182-0.061-0.121-0.061-0.303-0.061-0.424-0.121-0.061 0-0.121-0.061-0.182-0.061-0.121-0.061-0.303-0.121-0.424-0.182-0.061 0-0.061-0.061-0.121-0.061-0.182-0.061-0.364-0.182-0.545-0.242-0.061-0.061-0.182-0.121-0.242-0.121s-0.121-0.061-0.182-0.061-0.242-0.121-0.364-0.182c0 0-0.061 0-0.061-0.061-0.121-0.061-0.303-0.182-0.424-0.242-0.061 0-0.061-0.061-0.121-0.061-0.061-0.061-0.182-0.121-0.242-0.182-0.182-0.121-0.364-0.242-0.545-0.424-0.061-0.061-0.061-0.061-0.121-0.121-1.939-1.515-3.455-3.636-4.182-6-0.788-2.485-0.606-5.212 0.727-7.455z"></path>
	<path class="path3" d="M18.545 1.121c-1.151 1.758-1.273 3.879-0.485 5.818 0.848 2.061 2.606 3.636 4.667 4.364 0.061 0.061 0.182 0.061 0.242 0.061s0.061 0 0.121 0.061c0.121 0.061 0.242 0.061 0.364 0.121 5.697 1.091 7.212-2.909 7.636-3.515-1.333 1.939-3.636 2.424-6.424 1.758-0.242-0.061-0.485-0.121-0.667-0.182-0.242-0.121-0.545-0.182-0.788-0.303-0.485-0.242-0.97-0.545-1.394-0.848-2.485-1.879-4.061-5.515-2.424-8.424z"></path>
	</symbol>
	<symbol id="technology-javascript" viewBox="0 0 32 32">
	<path class="path1" d="M23.057 13.939c0.432-0.033 0.492-0.033 0.952 0.004 0.936 0.069 1.645 0.296 2.309 0.736 0.359 0.238 0.882 0.782 1.172 1.216 0.136 0.205 0.248 0.38 0.248 0.392 0 0.021-2.195 1.44-2.273 1.473-0.024 0.009-0.093-0.073-0.187-0.221-0.081-0.13-0.256-0.344-0.392-0.477-0.383-0.386-0.761-0.537-1.343-0.537-0.513-0.003-0.845 0.127-1.132 0.438-0.199 0.214-0.29 0.435-0.311 0.761-0.024 0.411 0.087 0.74 0.35 1.020 0.275 0.293 0.691 0.522 1.935 1.057 1.645 0.706 2.469 1.195 3.106 1.841 0.332 0.338 0.525 0.607 0.718 1.005 0.281 0.583 0.405 1.172 0.405 1.926 0 1.18-0.372 2.122-1.126 2.85-0.709 0.688-1.624 1.093-2.844 1.265-0.486 0.066-1.437 0.070-1.944 0-1.938-0.26-3.372-1.165-4.289-2.711-0.118-0.193-0.142-0.256-0.112-0.284 0.048-0.046 2.345-1.371 2.372-1.371 0.012 0 0.1 0.115 0.196 0.254 0.706 1.045 1.585 1.527 2.762 1.527 0.697 0 1.259-0.19 1.615-0.549 0.106-0.106 0.223-0.263 0.269-0.356 0.232-0.483 0.13-1.114-0.239-1.509-0.299-0.32-0.767-0.577-2.026-1.117-0.924-0.399-1.458-0.655-1.851-0.89-1.543-0.933-2.234-2.11-2.234-3.794 0-1.126 0.35-2.014 1.084-2.741 0.712-0.707 1.669-1.117 2.811-1.207zM13.66 19.425l0.012-5.334h2.955v5.351c0 3.55-0.012 5.437-0.030 5.606-0.209 1.669-0.996 2.793-2.34 3.336-1.12 0.45-2.648 0.486-3.837 0.091-1.126-0.374-2.062-1.189-2.602-2.267l-0.091-0.181 1.192-0.724c0.655-0.395 1.201-0.724 1.213-0.73 0.009-0.003 0.087 0.115 0.175 0.26 0.54 0.924 1.005 1.253 1.781 1.25 0.543-0.003 0.87-0.109 1.123-0.362 0.181-0.181 0.284-0.377 0.372-0.706l0.066-0.251zM28.532 32h-25.063c-1.912 0-3.468-1.556-3.468-3.468v-25.063c0-1.912 1.556-3.468 3.468-3.468h25.063c1.913 0 3.468 1.556 3.468 3.468v25.063c0 1.913-1.556 3.468-3.468 3.468zM3.469 1.61c-1.025 0-1.859 0.834-1.859 1.859v25.063c0 1.025 0.834 1.859 1.859 1.859h25.063c1.025 0 1.859-0.834 1.859-1.859v-25.063c0-1.025-0.834-1.859-1.859-1.859h-25.063z"></path>
	</symbol>
	<symbol id="technology-php" viewBox="0 0 32 32">
	<path class="path1" d="M28.461-0v0c1.253 0 2.286 1.032 2.286 2.175v0.037c0 0.074-0.037 0.184-0.037 0.258l-2.434 22.305c0.037 0.884-0.442 1.732-1.253 2.138l-9.88 4.866c-0.332 0.147-0.664 0.221-0.995 0.221s-0.664-0.074-0.995-0.221l-9.917-4.867c-0.442-0.221-0.811-0.553-1.032-0.995-0.184-0.258-0.295-0.553-0.332-0.885l-2.507-22.488c0-0.074-0.111-0.184-0.111-0.258v-0.037c0-1.217 1.106-2.249 2.359-2.249h24.848zM5.518 18.7l1.94 0 0.408-2.144h1.838c1.736 0.102 3.675-1.327 3.675-3.777 0-1.429-0.817-2.246-2.45-2.348h-3.777zM8.274 15.025l0.51-3.063h1.327c0.715 0 1.225 0.306 1.225 0.919-0.102 1.736-0.919 2.042-1.838 2.144zM12.766 16.556l1.94 0 0.919-4.594h1.531c0.715 0 0.715 0.306 0.613 0.817l-0.715 3.777h2.042l0.715-4.186c0.204-1.021-0.408-1.838-2.042-1.94h-1.838l0.408-2.144h-1.94zM19.26 18.584l1.928 0 0.406-2.13h1.826c1.725 0.101 3.652-1.319 3.652-3.754 0-1.42-0.812-2.232-2.435-2.333h-3.754zM22 14.932l0.507-3.043h1.319c0.71 0 1.217 0.304 1.217 0.913-0.101 1.725-0.913 2.029-1.826 2.13z"></path>
	</symbol>
	<symbol id="technology-mariadb" viewBox="0 0 32 32">
	<path class="path1" d="M31.299 4.354c0.45-0.014 0.693 0.249 0.7 0.722 0.021 1.469-0.633 2.097-1.344 2.739s-1.53 1.034-2.272 2.172c-0.493 0.757-0.643 2.625-1.050 4.111-0.38 1.383-0.751 3.059-1.128 4.106-0.398 1.106-0.073 3.616 1.106 3.95-1.343 0.979-3.509 0.69-4.305-0.533-1.429 0.376-1.602 2.111-2.767 2.789-0.948 0.552-1.855 0.801-3.111 1.111-0.698 0.132-1.309 0.108-1.106-0.111 0.657-0.97 1.475-1.777 1.883-2.994-2.754-0.397-5.493-0.917-7.872-0.6-1.839 0.245-2.781 1.27-3.961 1.983-2.535 1.53-5.324 1.141-5.561 0.567-0.226-0.546 0.926-0.857 1.122-1.228-0.945 0.126-1.154-0.010-1.633-0.494 1.489-1.749 4.773-0.624 5.878-1.767 1.032-1.068 1.056-1.82 2.044-2.672 1.273-1.097 2.812-1.998 4.217-2.439 2.138-0.67 4.515-0.78 6.872-2.111 3.154-1.781 3.853-6.75 7.322-8.205 1.162-0.487 2.476-0.407 3.556-0.672 1.069-0.263 0.917-0.406 1.411-0.422zM31.16 4.626c-0.091 0.005-0.108 0.038-0.15 0.056-0.031 0.022-0.058 0.036-0.078 0.050-0.026 0.021-0.057 0.045-0.078 0.061-0.093 0.060-0.204 0.13-0.3 0.189-0.036 0.053 0.012 0.116 0.033 0.161 0.018 0.037 0.039 0.069 0.056 0.106 0.025 0.044 0.063 0.080 0.094 0.117 0.036 0.024 0.053 0.036 0.072 0.050 0.086 0.058 0.201 0.072 0.294 0.089 0.013 0.001 0.079 0.014 0.15 0.022 0.077 0.008 0.177 0.011 0.256 0.017 0.039 0.003 0.061-0.019 0.089-0.022 0.025-0.015 0.047-0.047 0.067-0.067 0.016-0.017 0.008-0.028 0.022-0.044 0.009-0.060 0.016-0.122 0.022-0.178v-0.061c0.004-0.119-0.019-0.217-0.044-0.322-0.007-0.023-0.025-0.059-0.039-0.078-0.038-0.059-0.105-0.086-0.156-0.122-0.025-0.009-0.051-0.013-0.083-0.017-0.038-0.004-0.079-0.005-0.117-0.005s-0.072-0.005-0.111 0zM30.133 5.487c-0.024-0.001-0.064 0.018-0.122 0.072-0.35 0.359-1.043 1.166-1.294 1.917-0.065 0.205 0.067 0.148 0.111 0.017 0.249-0.77 1.036-1.616 1.278-1.872 0.059-0.069 0.068-0.132 0.028-0.133zM30.238 5.665c-0.024 0.003-0.061 0.027-0.111 0.089-0.296 0.404-0.868 1.016-1.011 1.794-0.035 0.212 0.086 0.136 0.111 0 0.139-0.798 0.802-1.463 1.006-1.75 0.049-0.076 0.045-0.138 0.006-0.133zM30.366 5.821c-0.024 0.005-0.056 0.035-0.1 0.1-0.261 0.428-0.606 0.918-0.683 1.706-0.017 0.214 0.092 0.133 0.106-0.006 0.071-0.807 0.505-1.363 0.683-1.667 0.043-0.080 0.034-0.141-0.006-0.133zM30.51 5.943c-0.023 0.007-0.056 0.037-0.094 0.106-0.222 0.449-0.437 0.792-0.444 1.583 0.002 0.214 0.11 0.122 0.111-0.017 0-0.809 0.287-1.221 0.439-1.539 0.035-0.083 0.027-0.144-0.011-0.133zM27.788 6.326c-0.694 0.017-1.105 0.323-1.239 0.9 0.57 0.495 1.764 0.096 1.55-0.889-0.111-0.009-0.212-0.014-0.311-0.011zM25.416 19.431c-0.467 0.494-1.375 1.214-1.55 2 0.341 0.544 1.667 0.854 2.439 0.667-0.394-0.371-0.841-1.898-0.889-2.667z"></path>
	</symbol>
	<symbol id="technology-mysql" viewBox="0 0 32 32">
	<path class="path1" d="M27.967 24.766l-0 0c-0.051-0.457-1.079-1.012-1.413-1.265-0.669-0.506-1.36-1.056-2.073-1.518-0.373-0.242-1.019-0.428-1.413-0.607-0.562-0.255-1.799-0.502-2.12-0.961-0.609-0.874-1.029-1.934-1.46-2.985-0.432-1.053-0.979-2.161-1.413-3.238-0.215-0.534-0.321-1.014-0.565-1.518-1.518-3.127-3.738-5.748-6.454-7.589-0.891-0.604-1.873-1.16-2.968-1.518-0.62-0.202-1.362-0.089-2.026-0.253h-0.424c-0.371-0.117-0.682-0.54-0.989-0.759-0.64-0.455-1.27-0.776-2.026-1.113-0.285-0.127-1.045-0.429-1.319-0.202-0.16 0.057-0.232 0.129-0.283 0.304-0.16 0.258-0.013 0.66 0.094 0.911 0.303 0.706 0.74 1.136 1.13 1.72 0.353 0.527 0.782 1.127 1.036 1.72 0.531 1.24 0.767 2.618 1.272 3.845 0.194 0.471 0.474 1.008 0.754 1.417 0.226 0.33 0.631 0.58 0.754 1.012 0.257 0.433-0.378 1.909-0.518 2.378-0.543 1.811-0.428 4.346 0.189 5.919 0.244 0.622 0.474 1.348 1.13 1.518 0.048-0.041 0.012-0.019 0.094-0.050 0.14-1.212 0.188-2.381 0.565-3.339 0.236-0.6 0.685-1.010 0.989-1.518 0.223 0.138 0.222 0.542 0.33 0.809 0.278 0.693 0.565 1.444 0.895 2.125 0.691 1.426 1.45 2.796 2.308 4.047 0.305 0.445 0.715 0.927 1.084 1.315 0.157 0.165 0.348 0.25 0.471 0.455h0.047v0.051c-0.633-0.232-1.018-0.918-1.507-1.315-0.944-0.765-2.057-1.9-2.685-2.985-0.283-0.607-0.565-1.214-0.848-1.821v-0.051c-0.118 0.169-0.081 0.355-0.141 0.607-0.266 1.113-0.058 2.375-0.989 2.783-1.064 0.466-1.838-0.749-2.167-1.315-1.071-1.845-1.349-4.944-0.612-7.437 0.163-0.554 0.18-1.232 0.471-1.669-0.047-0.393-0.344-0.505-0.518-0.759-0.283-0.414-0.53-0.903-0.754-1.366-0.443-0.916-0.741-1.994-1.083-2.985-0.139-0.402-0.167-0.784-0.33-1.164-0.247-0.578-0.69-1.155-1.036-1.669-0.493-0.733-1.871-2.145-1.319-3.592 0.875-2.292 3.906-0.549 5.087 0.253 0.297 0.201 0.626 0.617 0.942 0.759 0.518 0.034 1.037 0.068 1.554 0.101 0.966 0.246 1.879 0.434 2.638 0.911 3.567 2.241 5.869 4.52 8.008 8.297 0.445 0.787 0.679 1.652 1.036 2.53 0.524 1.287 1.105 2.622 1.696 3.844 0.282 0.584 0.482 1.219 0.848 1.72 0.155 0.212 0.567 0.278 0.801 0.405 0.697 0.378 1.509 0.667 2.167 1.113 1.186 0.804 2.337 1.767 3.392 2.732 0.403 0.369 0.667 0.908 1.037 1.315v0.202c-0.33 0.101-0.66 0.202-0.989 0.304-0.731 0.203-1.364 0.15-2.073 0.354-0.422 0.121-0.957 0.299-1.413 0.354l0.047 0.051c0.269 0.805 1.711 1.476 2.355 1.973 0.808 0.623 1.568 1.372 2.167 2.226l0.612 0.658c0.139 0.216 0.178 0.501 0.33 0.708v0.050c-0.288-0.11-0.438-0.382-0.659-0.556-0.449-0.354-0.906-0.749-1.366-1.062-0.781-0.532-1.686-0.835-2.496-1.366-0.456-0.298-0.894-0.667-1.319-1.012-0.389-0.316-0.825-0.917-1.084-1.366-0.134-0.234-0.161-0.518-0.329-0.708 0.050-0.414 0.54-0.417 0.848-0.557 1.082-0.49 2.347-0.655 4.004-0.607zM6.154 5.799v0c0.168 0.174 0.425 0.292 0.559 0.5 0.1 0.156 0.117 0.32 0.233 0.45 0.001 0.533-0.131 0.882-0.419 1.1-0.015 0.017-0.031 0.033-0.046 0.050-0.155-0.35-0.311-0.7-0.466-1.050-0.201-0.31-0.489-0.541-0.652-0.9h-0.047v-0.050c0.255-0.060 0.497-0.107 0.838-0.1z"></path>
	</symbol>
	<symbol id="technology-linux" viewBox="0 0 32 32">
	<path class="path1" d="M14.174 7.341q-0.196 0.018-0.276 0.187t-0.151 0.169q-0.089 0.018-0.089-0.089 0-0.214 0.339-0.267h0.178zM15.724 7.59q-0.071 0.018-0.205-0.116t-0.312-0.080q0.428-0.196 0.57 0.036 0.053 0.107-0.053 0.16zM9.47 15.198q-0.071-0.018-0.107 0.053t-0.080 0.223-0.098 0.241-0.178 0.232q-0.125 0.178-0.018 0.214 0.071 0.018 0.223-0.125t0.223-0.321q0.018-0.053 0.036-0.125t0.036-0.107 0.027-0.080 0.009-0.071v-0.053t-0.018-0.045-0.053-0.036zM24.704 21.595q0-0.321-0.98-0.748 0.071-0.267 0.134-0.49t0.089-0.463 0.053-0.383 0.009-0.401-0.018-0.347-0.062-0.392-0.071-0.365-0.089-0.445-0.098-0.472q-0.178-0.855-0.837-1.835t-1.283-1.336q0.428 0.356 1.016 1.479 1.55 2.886 0.962 4.953-0.196 0.713-0.891 0.748-0.552 0.071-0.686-0.33t-0.143-1.488-0.205-1.906q-0.16-0.695-0.347-1.229t-0.347-0.811-0.276-0.437-0.232-0.267-0.134-0.125q-0.249-1.105-0.552-1.835t-0.526-0.998-0.419-0.588-0.267-0.713q-0.071-0.374 0.107-0.953t0.080-0.882-0.793-0.445q-0.267-0.053-0.793-0.321t-0.633-0.285q-0.143-0.018-0.196-0.463t0.143-0.909 0.641-0.481q0.659-0.053 0.909 0.535t0.071 1.033q-0.196 0.339-0.036 0.472t0.535 0.009q0.232-0.071 0.232-0.641v-0.659q-0.089-0.535-0.241-0.891t-0.374-0.543-0.419-0.267-0.481-0.134q-1.906 0.143-1.586 2.388 0 0.267-0.018 0.267-0.16-0.16-0.526-0.187t-0.588 0.009-0.276-0.089q0.018-1.016-0.285-1.604t-0.802-0.606q-0.481-0.018-0.739 0.49t-0.294 1.060q-0.018 0.267 0.062 0.659t0.232 0.668 0.276 0.241q0.178-0.053 0.285-0.249 0.071-0.16-0.125-0.143-0.125 0-0.276-0.258t-0.169-0.597q-0.018-0.392 0.16-0.659t0.606-0.249q0.303 0 0.481 0.374t0.169 0.695-0.027 0.392q-0.392 0.267-0.552 0.517-0.143 0.214-0.49 0.419t-0.365 0.223q-0.232 0.249-0.276 0.481t0.134 0.321q0.249 0.143 0.445 0.347t0.285 0.339 0.33 0.232 0.633 0.116q0.837 0.036 1.817-0.267 0.036-0.018 0.41-0.125t0.615-0.187 0.526-0.232 0.374-0.312q0.16-0.249 0.356-0.143 0.089 0.053 0.116 0.151t-0.053 0.214-0.294 0.169q-0.356 0.107-1.007 0.383t-0.811 0.347q-0.784 0.339-1.247 0.41-0.445 0.089-1.408-0.036-0.178-0.036-0.16 0.036t0.303 0.339q0.445 0.41 1.194 0.392 0.303-0.018 0.641-0.125t0.641-0.249 0.597-0.312 0.535-0.303 0.437-0.214 0.312-0.045 0.151 0.196q0 0.036-0.018 0.080t-0.071 0.089-0.107 0.080-0.151 0.089-0.16 0.080-0.178 0.089-0.169 0.080q-0.499 0.249-1.203 0.784t-1.185 0.766-0.873 0.018q-0.374-0.196-1.123-1.301-0.392-0.552-0.445-0.392-0.018 0.053-0.018 0.178 0 0.445-0.267 1.007t-0.526 0.989-0.374 1.033 0.205 1.123q-0.41 0.107-1.114 1.604t-0.846 2.512q-0.036 0.321-0.027 1.229t-0.098 1.051q-0.143 0.428-0.517 0.053-0.57-0.552-0.641-1.675-0.036-0.499 0.071-0.998 0.071-0.339-0.018-0.321l-0.071 0.089q-0.641 1.158 0.178 2.958 0.089 0.214 0.445 0.499t0.428 0.356q0.356 0.41 1.853 1.612t1.657 1.363q0.285 0.267 0.312 0.677t-0.249 0.766-0.811 0.41q0.143 0.267 0.517 0.793t0.499 0.962 0.125 1.256q0.82-0.428 0.125-1.639-0.071-0.143-0.187-0.285t-0.169-0.214-0.036-0.107q0.053-0.089 0.232-0.169t0.356 0.045q0.82 0.927 2.958 0.641 2.37-0.267 3.154-1.55 0.41-0.677 0.606-0.535 0.214 0.107 0.178 0.927-0.018 0.445-0.41 1.639-0.16 0.41-0.107 0.668t0.428 0.276q0.053-0.339 0.258-1.372t0.241-1.604q0.036-0.374-0.116-1.31t-0.134-1.728 0.41-1.256q0.267-0.321 0.909-0.321 0.018-0.659 0.615-0.944t1.292-0.187 1.069 0.401zM13.514 6.86q0.053-0.303-0.045-0.535t-0.205-0.267q-0.16-0.036-0.16 0.125 0.036 0.089 0.089 0.107 0.178 0 0.125 0.267-0.053 0.356 0.143 0.356 0.053 0 0.053-0.053zM20.98 10.37q-0.036-0.143-0.116-0.205t-0.232-0.089-0.258-0.098q-0.089-0.053-0.169-0.143t-0.125-0.143-0.098-0.116-0.071-0.071-0.071 0.027q-0.249 0.285 0.125 0.775t0.695 0.561q0.16 0.018 0.258-0.143t0.062-0.356zM17.808 6.575q0-0.196-0.089-0.347t-0.196-0.223-0.16-0.053q-0.249 0.018-0.125 0.125l0.071 0.036q0.249 0.071 0.321 0.552 0 0.053 0.143-0.036zM18.771 2.423q0-0.036-0.045-0.089t-0.16-0.125-0.169-0.107q-0.267-0.267-0.428-0.267-0.16 0.018-0.205 0.134t-0.018 0.232-0.009 0.223q-0.018 0.071-0.107 0.187t-0.107 0.16 0.053 0.151q0.071 0.053 0.143 0t0.196-0.16 0.267-0.16q0.018-0.018 0.16-0.018t0.267-0.036 0.16-0.125zM28.837 26.316q0.356 0.214 0.552 0.437t0.214 0.428-0.045 0.401-0.276 0.392-0.419 0.347-0.535 0.33-0.561 0.294-0.57 0.276-0.481 0.232q-0.677 0.339-1.523 0.998t-1.345 1.14q-0.303 0.285-1.212 0.347t-1.586-0.258q-0.321-0.16-0.526-0.419t-0.294-0.454-0.392-0.347-0.837-0.169q-0.784-0.018-2.316-0.018-0.339 0-1.016 0.027t-1.033 0.045q-0.784 0.018-1.416 0.267t-0.953 0.535-0.775 0.508-0.953 0.205q-0.517-0.018-1.978-0.552t-2.601-0.766q-0.339-0.071-0.909-0.169t-0.891-0.16-0.704-0.169-0.597-0.258-0.303-0.347q-0.178-0.41 0.125-1.185t0.321-0.971q0.018-0.285-0.071-0.713t-0.178-0.757-0.080-0.65 0.187-0.481q0.249-0.214 1.016-0.249t1.069-0.214q0.535-0.321 0.748-0.624t0.214-0.909q0.374 1.301-0.57 1.889-0.57 0.356-1.479 0.267-0.606-0.053-0.766 0.178-0.232 0.267 0.089 1.016 0.036 0.107 0.143 0.321t0.151 0.321 0.080 0.303 0.018 0.392q0 0.267-0.303 0.873t-0.249 0.855q0.053 0.303 0.659 0.463 0.356 0.107 1.506 0.33t1.773 0.365q0.428 0.107 1.319 0.392t1.47 0.41 0.989 0.071q0.766-0.107 1.149-0.499t0.41-0.855-0.134-1.042-0.339-0.927-0.356-0.65q-2.156-3.385-3.011-4.312-1.212-1.319-2.013-0.713-0.196 0.16-0.267-0.267-0.053-0.285-0.036-0.677 0.018-0.517 0.178-0.927t0.428-0.837 0.392-0.748q0.143-0.374 0.472-1.283t0.526-1.39 0.535-1.087 0.695-0.962q1.96-2.548 2.209-3.474-0.214-1.996-0.285-5.523-0.036-1.604 0.428-2.699t1.889-1.862q0.695-0.374 1.853-0.374 0.944-0.018 1.889 0.241t1.586 0.739q1.016 0.748 1.63 2.165t0.526 2.628q-0.089 1.693 0.535 3.813 0.606 2.013 2.37 3.884 0.98 1.051 1.773 2.904t1.060 3.403q0.143 0.873 0.089 1.506t-0.214 0.989-0.356 0.392q-0.178 0.036-0.419 0.339t-0.481 0.633-0.722 0.597-1.087 0.249q-0.321-0.018-0.561-0.089t-0.401-0.241-0.241-0.276-0.205-0.365-0.16-0.347q-0.392-0.659-0.731-0.535t-0.499 0.873 0.125 1.728q0.356 1.247 0.018 3.474-0.178 1.158 0.321 1.791t1.301 0.588 1.514-0.633q1.051-0.873 1.595-1.185t1.844-0.757q0.944-0.321 1.372-0.65t0.33-0.615-0.445-0.508-0.918-0.419q-0.588-0.196-0.882-0.855t-0.267-1.292 0.276-0.846q0.018 0.552 0.143 1.007t0.258 0.722 0.365 0.508 0.374 0.339 0.383 0.232 0.294 0.169z"></path>
	</symbol>
	<symbol id="technology-git" viewBox="0 0 32 32">
	<path class="path1" d="M31.397 14.575l-13.972-13.971c-0.804-0.805-2.109-0.805-2.915 0l-3.246 3.246 2.443 2.443c0.392-0.187 0.83-0.293 1.293-0.293 1.657 0 3 1.343 3 3 0 0.463-0.105 0.902-0.293 1.293l3.999 3.999c0.392-0.187 0.83-0.293 1.293-0.293 1.657 0 3 1.343 3 3s-1.343 3-3 3-3-1.343-3-3c0-0.463 0.105-0.902 0.293-1.293l-3.999-3.999c-0.095 0.046-0.193 0.086-0.293 0.121v8.343c1.165 0.412 2 1.522 2 2.829 0 1.657-1.343 3-3 3s-3-1.343-3-3c0-1.306 0.835-2.417 2-2.829v-8.343c-1.165-0.412-2-1.522-2-2.829 0-0.463 0.105-0.902 0.293-1.293l-2.443-2.443-9.247 9.246c-0.805 0.806-0.805 2.11 0 2.915l13.973 13.971c0.804 0.805 2.109 0.805 2.915 0l13.906-13.906c0.805-0.805 0.805-2.111-0-2.915z"></path>
	</symbol>
	<symbol id="technology-docker" viewBox="0 0 32 32">
	<path class="path1" d="M16.627 11.569h3.238v3.309h1.637c0.756 0 1.533-0.135 2.249-0.377 0.352-0.119 0.747-0.285 1.094-0.494-0.457-0.597-0.69-1.35-0.759-2.093-0.093-1.010 0.111-2.325 0.794-3.115l0.34-0.394 0.405 0.326c1.021 0.82 1.88 1.967 2.031 3.273 1.229-0.362 2.673-0.276 3.756 0.349l0.445 0.256-0.234 0.457c-0.916 1.789-2.832 2.343-4.706 2.245-2.803 6.981-8.905 10.286-16.304 10.286-3.823 0-7.33-1.429-9.327-4.82l-0.033-0.055-0.291-0.592c-0.675-1.493-0.899-3.128-0.747-4.762l0.046-0.489h2.768v-3.309h3.237v-3.237h6.475v-3.237h3.885v6.475zM5.92 12.343h0.222v2.338h-0.222v-2.338zM5.495 12.343h0.23v2.338h-0.23v-2.338zM5.070 12.343h0.23v2.338h-0.23v-2.338zM4.645 12.343h0.23v2.338h-0.23v-2.338zM4.219 12.343h0.23v2.338h-0.23v-2.338zM3.803 12.343h0.221v2.338h-0.221v-2.338zM3.57 12.109v2.806h2.806v-2.806h-2.806zM9.157 9.105h0.222v2.338h-0.222v-2.338zM8.732 9.105h0.23v2.338h-0.23v-2.338zM8.307 9.105h0.23v2.338h-0.23v-2.338zM7.882 9.105h0.23v2.338h-0.23v-2.338zM7.457 9.105h0.23v2.338h-0.23v-2.338zM7.041 9.105h0.221v2.338h-0.221v-2.338zM6.807 8.872v2.806h2.806v-2.806h-2.806zM9.157 12.343h0.222v2.338h-0.222v-2.338zM8.732 12.343h0.23v2.338h-0.23v-2.338zM8.307 12.343h0.23v2.338h-0.23v-2.338zM7.882 12.343h0.23v2.338h-0.23v-2.338zM7.457 12.343h0.23v2.338h-0.23v-2.338zM7.041 12.343h0.221v2.338h-0.221v-2.338zM6.807 12.109v2.806h2.806v-2.806h-2.806zM12.395 12.343h0.222v2.338h-0.222v-2.338zM11.97 12.343h0.23v2.338h-0.23v-2.338zM11.545 12.343h0.23v2.338h-0.23v-2.338zM11.12 12.343h0.23v2.338h-0.23v-2.338zM10.694 12.343h0.23v2.338h-0.23v-2.338zM10.278 12.343h0.221v2.338h-0.221v-2.338zM10.044 12.109v2.806h2.806v-2.806h-2.806zM12.395 9.105h0.222v2.338h-0.222v-2.338zM11.97 9.105h0.23v2.338h-0.23v-2.338zM11.545 9.105h0.23v2.338h-0.23v-2.338zM11.12 9.105h0.23v2.338h-0.23v-2.338zM10.694 9.105h0.23v2.338h-0.23v-2.338zM10.278 9.105h0.221v2.338h-0.221v-2.338zM10.044 8.872v2.806h2.806v-2.806h-2.806zM15.632 12.343h0.222v2.338h-0.222v-2.338zM15.207 12.343h0.23v2.338h-0.23v-2.338zM14.782 12.343h0.23v2.338h-0.23v-2.338zM14.357 12.343h0.23v2.338h-0.23v-2.338zM13.932 12.343h0.23v2.338h-0.23v-2.338zM13.516 12.343h0.221v2.338h-0.221v-2.338zM13.282 12.109v2.806h2.806v-2.806h-2.806zM15.632 9.105h0.222v2.338h-0.222v-2.338zM15.207 9.105h0.23v2.338h-0.23v-2.338zM14.782 9.105h0.23v2.338h-0.23v-2.338zM14.357 9.105h0.23v2.338h-0.23v-2.338zM13.932 9.105h0.23v2.338h-0.23v-2.338zM13.516 9.105h0.221v2.338h-0.221v-2.338zM13.282 8.872v2.806h2.806v-2.806h-2.806zM15.632 5.868h0.222v2.338h-0.222v-2.338zM15.207 5.868h0.23v2.338h-0.23v-2.338zM14.782 5.868h0.23v2.338h-0.23v-2.338zM14.357 5.868h0.23v2.338h-0.23v-2.338zM13.932 5.868h0.23v2.338h-0.23v-2.338zM13.516 5.868h0.221v2.338h-0.221v-2.338zM13.282 5.634v2.806h2.806v-2.806h-2.806zM18.87 12.343h0.221v2.338h-0.221v-2.338zM18.445 12.343h0.23v2.338h-0.23v-2.338zM18.019 12.343h0.23v2.338h-0.23v-2.338zM17.594 12.343h0.23v2.338h-0.23v-2.338zM17.169 12.343h0.23v2.338h-0.23v-2.338zM16.753 12.343h0.222v2.338h-0.222v-2.338zM16.519 12.109v2.806h2.806v-2.806h-2.806zM9.437 19.464c-0.428 0-0.774 0.347-0.774 0.774s0.347 0.774 0.774 0.774c0.427 0 0.774-0.346 0.774-0.774s-0.347-0.774-0.774-0.774zM9.437 19.684c0.071 0 0.138 0.013 0.201 0.037-0.068 0.039-0.113 0.112-0.113 0.196 0 0.125 0.101 0.226 0.226 0.226 0.086 0 0.16-0.048 0.198-0.118 0.027 0.065 0.042 0.137 0.042 0.213 0 0.306-0.248 0.554-0.554 0.554s-0.554-0.248-0.554-0.554c-0-0.306 0.248-0.555 0.554-0.555zM11.495 25.042c-1.917-0.91-2.969-2.146-3.555-3.496-0.712 0.203-1.568 0.333-2.563 0.389-0.375 0.021-0.769 0.032-1.182 0.032-0.477 0-0.979-0.014-1.507-0.042 1.758 1.757 3.921 3.11 7.925 3.134 0.296-0 0.589-0.006 0.881-0.017z"></path>
	</symbol>
	<symbol id="technology-twitter" viewBox="0 0 32 32">
	<path class="path1" d="M32 7.075c-1.175 0.525-2.444 0.875-3.769 1.031 1.356-0.813 2.394-2.1 2.887-3.631-1.269 0.75-2.675 1.3-4.169 1.594-1.2-1.275-2.906-2.069-4.794-2.069-3.625 0-6.563 2.938-6.563 6.563 0 0.512 0.056 1.012 0.169 1.494-5.456-0.275-10.294-2.888-13.531-6.862-0.563 0.969-0.887 2.1-0.887 3.3 0 2.275 1.156 4.287 2.919 5.463-1.075-0.031-2.087-0.331-2.975-0.819 0 0.025 0 0.056 0 0.081 0 3.181 2.263 5.838 5.269 6.437-0.55 0.15-1.131 0.231-1.731 0.231-0.425 0-0.831-0.044-1.237-0.119 0.838 2.606 3.263 4.506 6.131 4.563-2.25 1.762-5.075 2.813-8.156 2.813-0.531 0-1.050-0.031-1.569-0.094 2.913 1.869 6.362 2.95 10.069 2.95 12.075 0 18.681-10.006 18.681-18.681 0-0.287-0.006-0.569-0.019-0.85 1.281-0.919 2.394-2.075 3.275-3.394z"></path>
	</symbol>
	<symbol id="technology-facebook" viewBox="0 0 32 32">
	<path class="path1" d="M19 6h5v-6h-5c-3.86 0-7 3.14-7 7v3h-4v6h4v16h6v-16h5l1-6h-6v-3c0-0.542 0.458-1 1-1z"></path>
	</symbol>
	<!-- <symbol id="technology-youtube" viewBox="0 0 32 32">
	<path class="path1" d="M31.681 9.6c0 0-0.313-2.206-1.275-3.175-1.219-1.275-2.581-1.281-3.206-1.356-4.475-0.325-11.194-0.325-11.194-0.325h-0.012c0 0-6.719 0-11.194 0.325-0.625 0.075-1.987 0.081-3.206 1.356-0.963 0.969-1.269 3.175-1.269 3.175s-0.319 2.588-0.319 5.181v2.425c0 2.587 0.319 5.181 0.319 5.181s0.313 2.206 1.269 3.175c1.219 1.275 2.819 1.231 3.531 1.369 2.563 0.244 10.881 0.319 10.881 0.319s6.725-0.012 11.2-0.331c0.625-0.075 1.988-0.081 3.206-1.356 0.962-0.969 1.275-3.175 1.275-3.175s0.319-2.587 0.319-5.181v-2.425c-0.006-2.588-0.325-5.181-0.325-5.181zM12.694 20.15v-8.994l8.644 4.513-8.644 4.481z"></path>
	</symbol> -->
	</defs>
	</svg>

	<div class='col-sm-12 technology-panel'>
		<div class="icons">
			<?php
			foreach($areas as $key => $area){
				?>
				<div class='area <?=$key?>'>
					<?php
					foreach($area as $key => $technology){
						?>
						<div class="technology">
							<div class="technology-holder">
								<div class="icon-holder">
									<svg class="icon technology-<?=$key?>"><use xlink:href="#technology-<?=$key?>"></use></svg>

								</div>
								<div class="bubble-holder">
									<div class="bubble">
										<div class="text">
											<span class="extraShort"><?=$technology['extraShort']?></span>
											<span class="extraLong"><?=$technology['extraLong']?></span>
											<span class="title"><?=$technology['title']?></span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<?php
					}
					?>
				</div>
				<?php
			}
			?>
		</div>
	</div> <!-- technology-panel -->
</div> <!-- row technology-panel-holder -->
