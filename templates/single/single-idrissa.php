<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/page', 'header'); ?>

	<div class="container-fluid container-showcase container-single first">
		<div class="container">
			<div class='imac-mockup video-holder col-xs-12'>
				<video id="imac-video-portada" class="video-js video" no-controls muted autoplay loop preload="auto" poster="<?= get_template_directory_uri(); ?>/dist/videos/idrissa/imac-video-portada.jpg" data-setup="{}">
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/idrissa/imac-video-portada.mp4" type='video/mp4'></source>
					<source src="<?= get_template_directory_uri(); ?>/dist/videos/idrissa/imac-video-portada.webm" type='video/webm'></source>
					<p class="vjs-no-js">
						To view this video please enable JavaScript, and consider upgrading to a web browser that
						<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
					</p>
				</video>

			</div>

			<div class='col-sm-offset-2 col-sm-8 '>
				<h3>Una crida a l'acció</h3>
				<p>El projecte d'Idrissa és una campanya per fer possible un documental sobre la mort d'Idrissa. Un projecte que a inicis del 2017 encara està <a href="https://idrissa.cc/" target="_blank">està actiu</a>.</p>
				<p>Amb el projecte d'Idrissa es busca una interacció amb el públic interpel·lant-lo amb campanyes recurrents i movent-lo a l'acció.</p>
				<p>Per a aconseguir això es fa servir una home dinàmica que, a més de presentar el projecte insta a l'acció amb formularis i últimes campanyes.</p>
			</div>
		</div>
	</div>

	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<h3>Una col·laboració amb Metromuster</h3>
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="text">
					<p>A més el projecte també busca que les persones visitants es subscriguin al butlletí (amb integració personalitzada amb <a href="https://acumbamail.com/" rel="nofollow" target="_blank">>Acumbamail</a>) obtenint un percentatge de conversió molt per sobre dels estàndards gràcies a una campanya ben enfocada al públic objectiu.</p>
					<p>El més important però és que Idrissa és fruit de la <strong>col·laboració amb Metromuster</strong> que ha permès treballar amb grans professionals en un projecte de gran càrrega social:</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid container-showcase container-double highlighted-container">
		<div class="row side-by-side-testimonial">
			<div class="col-xs-12 col-xs-offset-0 col-sm-3 col-sm-offset-2">
				<div class="image-holder">
					<span class="helper"></span>
					<img class="img-responsive " src="/wp-content/uploads/2017/01/xnNVclVv-300x300.jpg" alt="">
				</div>
			</div>
			<div class="col-xs-12 col-sm-5 item">
				<blockquote>
					<div class="excerpt">
						Impecable i resolutiu en tot el procés de planificació, disseny, programació i feedback. Si es pot fer el Miquel t’ho fa, si no t’ho fa és que no es pot fer.
					</div>
					<small>
						Xapo Ortega, <a href="http://metromuster.cat/">Treballador a la cooperativa Metromuster</a>
					</small>
				</blockquote>
			</div>
		</div>
	</div>

	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="text">
					<h3>Back end altament personalitzable</h3>
					<p>Com que en aquest projecte Metromuster comptava amb experiència en edició de webs s'ha fet servir <a href="http://theme.co/x/" rel="nofollow" target="_blank">X Theme aconseguint tant un <strong>alt grau de personalització sobre la plantilla escollida</strong> com la possibilitat per part de Metromuster d'<strong>editar el contingut</strong> amb un <strong>editor visual</strong> intuïtiu:</p>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="image">
					<img class="fitted-image" src="<?= get_template_directory_uri(); ?>/dist/images/idrissa/backend.png">
				</div>
			</div>


		</div>
	</div>

	<div class="col-xs-12 text-center">
		<div class='call_to_action'>
			<p class='lead'>Si tens un projecte que t'importa i vols solucions amb les quals puguis confiar contacta'm</p>
			<p class="text-center">
				<a href="/contacte" class="btn btn-default" role="button">Parla'm de la teva pàgina web</a>
			</p>
		</div>
	</div>



<?php endwhile; ?>
