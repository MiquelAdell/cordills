<?php while (have_posts()) : the_post(); ?>
	<?php get_template_part('templates/page', 'header'); ?>

	<div class="container-fluid container-showcase container-single first">
		<div class="container">
			<div class='imac-mockup video-holder col-xs-12'>
				<img class="fitted-image imac-fitted" src="<?= get_template_directory_uri(); ?>/dist/images/jipi/portada.png">
			</div>

			<div class='col-sm-offset-2 col-sm-8 '>
				<h3>Un projecte d'envegadura</h3>
				<p>El projecte de la Jipi, Jornada d'investigadors interdisciplinaris ha estat un projecte desenvolupat entre finals del 2016 i principis del 2017 i ha estat un projecte amb múltiples reptes tècnics.</p>
				<p>El projecte és <strong>multi idioma</strong> fent servir <a href="https://wpml.org/" rel="nofollow" target="_blank">WPML</a> i té una gran quantitat de contingut dinàmic tant generat pels administradors com pels usuaris de la web.</p>
				<p>La pàgina permet a les persones assistents a la jornada inscriure's i enviar l'abstract (el resum) d'una xerrada que s'ha de poder tant veure a la pàgina web com a la pròpia jornada.</p>
				<p>Els participants poden editar els seus propis resums així com la informació de cens que es recull fent servir <strong>funcionalitats avançades de <a href="http://www.gravityforms.com/" rel="nofollow" target="_blank">Gravity Forms</a></strong>.</p>
				<p>A més la pàgina web permet l'<strong>exportació dels PDF</strong> dels tríptics i altres materials que es generen amb <strong>LaTeX</strong> de manera dinàmica amb el contingut enviat per les participants.</p>
				<p>La pàgina també inclou un <strong>sistema de votació</strong> tant públic com privat així com la gestió d'usuaris i resums.</p>

			</div>
		</div>
	</div>
	<div class="container-fluid container-showcase container-double highlighted-container">
		<div class="row side-by-side-testimonial">
			<div class="col-xs-12 col-xs-offset-0 col-sm-3 col-sm-offset-2">
				<div class="image-holder">
					<span class="helper"></span>
					<img class="img-responsive " src="/wp-content/uploads/2016/02/ahierro-300x300.jpg" alt="">
				</div>
			</div>
			<div class="col-xs-12 col-sm-5 item">
				<blockquote>
					<div class="excerpt">
						És molt fàcil treballar amb el Miquel! En tot moment ha sigut fàcil contactar-lo i ha mostrat molta predisposició per fer-nos partíceps del projecte.
					</div>
					<small>
						Alba Hierro, <a href="http://jipi.cat">organitzadora de la Jornada d'Investigadors Predoctorals Interdisciplinària</a>
					</small>
				</blockquote>
			</div>
		</div>
	</div>
	<div class="container-fluid container-showcase container-double">
		<div class="row">
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="text">
					<h4>Un disseny a mida</h4>
					<p>Per aquest projecte el client va proporcionar un logotip i una paleta de colors i la resta del disseny va córrer a càrrec meu.</p>

				</div>

			</div>
			<div class="col-sm-offset-2 col-sm-8 ">
				<div class="image">
					<img class="fitted-image" src="<?= get_template_directory_uri(); ?>/dist/images/jipi/design.png">
				</div>
			</div>

			<div class="col-xs-12 text-center">
				<div class='call_to_action'>
					<p class='lead'>si necessites una web des de zero també em puc encarregar jo del disseny.</p>
					<p class="text-center">
						<a href="/contacte" class="btn btn-default" role="button">Parla'm de la teva pàgina web</a>
					</p>
				</div>
			</div>
		</div>
	</div>

<?php endwhile; ?>
