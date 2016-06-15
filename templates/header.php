<header class="banner nav-primary-container">
  <div class="container section-container">
    <div class="row">
      <a class="brand col-xs-4 text-center" href="<?= esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a>


        <nav class="nav-primary col-xs-8 text-center">
          <div class="menu-main-menu-container">
            <ul id="menu-main-menu-header" class="main-menu nav">
              <?=the_main_menu()?>
            </ul>
          </div>
        </nav>

        <button class="hamburger hamburger--arrowalt" type="button">
          <span class="hamburger-box">
            <span class="hamburger-inner"></span>
          </span>
        </button>
    </div>
</header>
