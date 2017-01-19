<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/page', 'header'); ?>

	<div class="container-fluid container-showcase container-single first">
		<div class="container">
			<div class='imac-mockup video-holder col-xs-12'>
				<video id="imac-video-portada" class="video-js video" no-controls autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.jpg" data-setup="{}">
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.mp4" type='video/mp4'></source>
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/imac-video-portada.webm" type='video/webm'></source>
					<p class="vjs-no-js">
						To view this video please enable JavaScript, and consider upgrading to a web browser that
						<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
					</p>
				</video>
			</div>

			<h3>Un projecte d'alt impacte visual per a causar una gran impressió</h3>
			<p>El projecte Memòria Viva és una iniciativa per a recuperar la memòria històrica immaterial de la ciutat de Sabadell.</p>
			<p>En aquest projecte em vaig encarregar del <strong>disseny</strong>, <strong>maquetació</strong> i <strong>instal·lació</strong> i <strong>configuració</strong> d'una plantilla de <strong>WordPress</strong> totalment <strong>personalitzada</strong>.</p>
		</div>
	</div>

	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<div class="col-xs-12 col-md-7 col-md-push-5 image-holder">
				<div class="image">
					<img class="fitted-image imac" src="<?= get_template_directory_uri(); ?>/dist/images/memoria-viva/imac1.png">
				</div>
			</div>
			<div class="col-xs-12 col-md-5 col-md-pull-7 text-holder">
				<div class="text">
					<h4>Mockups, models i prototips per un projecte amb molt espai per creixer encara</h4>
					<p>En aquesta primera fase el projecte consistia en crear una pàgina web <strong>promocional</strong> per a mostrar la gran quantitat de possibilitats d'organitzar els continguts que han de generar un grup d'historiadors. Fotografies, mapes, infografies i fitxes conceptuals.</p>
					<p>Per a la primera fase de memòria viva doncs s'havia de crear una pàgina de gran contingut visual organitzat de manera atractiva i, per a aquesta fase, encara amb poc contingut de text tota una oportunitat per fer una pàgina en què lluïssin les transicions, els mosaics d'imatges.</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<div class="col-xs-12 col-md-7 image-holder">
				<div class="image">
					<img class="fitted-image" src="<?= get_template_directory_uri(); ?>/dist/images/memoria-viva/mosaic1.png">
				</div>
			</div>
			<div class="col-xs-12 col-md-5 text-holder">
				<div class="text">
					<h4>La gran qualitat de les fotografies escollides així com els subtils efectes de transició generen la sensació d'estar veient un vídeo al arribar per primer cop a la pàgina</h4>
					<p>En aquest projecte es va prestar especial atenció a un disseny responsive. Aquesta elecció ha resultat acertada ja que més de la meitat de les visites rebudes han estat des de dispositius mòbils.</p>
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid container-showcase container-single">
		<div class="row">
			<div class="col-xs-12">
				<div class='chrome-mockup video-holder col-xs-12'>
					<video id="chrome-video-el-projecte" class="video-js video" no-controls autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/chrome-video-el-projecte.jpg" data-setup="{}">
						<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/chrome-video-el-projecte.mp4" type='video/mp4'></source>
						<source src="<?= get_template_directory_uri(); ?>/dist/videos/memoria-viva/chrome-video-el-projecte.webm" type='video/webm'></source>
						<p class="vjs-no-js">
							To view this video please enable JavaScript, and consider upgrading to a web browser that
							<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
						</p>
					</video>
				</div>
			</div>

			<div class="container">
				<div class="col-xs-12 text-center">
					<h4>Presentació cuidada sense prendre el control a l'usuari</h4>
					<p>En aquest projecte també s'ha fet us extensiu del plugin <strong>Revolution Slider</strong> aconseguint resultats sorprenents i dinàmics tot i no fer servir en cap pàgina l'estructura tradicional de "carousel" associada amb els sliders.</p>
					<p class="lead">Mira la pàgina web <a href="http://sabadell.memoriaviva.cat">memoriaviva.cat</a></p>
				</div>

				<div class="col-xs-12 text-center">
					<div class='call_to_action'>
						<p class='lead'>Tracto tots els meus projectes amb la cura amb la que he tractat el de Memòria Viva.<br/>Si vols que parlem del teu projecte contacta'm</p>
						<p class="text-center">
							<a href="/contacte" class="btn btn-default" role="button">Parla'm de la teva pàgina web</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


<?php endwhile; ?>
