<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/fulonum/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/theme/fulonum/stylesheet/mobile.css" rel="stylesheet">
<link href="catalog/view/theme/fulonum/stylesheet/phone.css" rel="stylesheet">
<link href="catalog/view/theme/fulonum/stylesheet/tablet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav">
      <ul class="list-inline">
        <li>
            <a href="/" title="<?php echo $text_home; ?>">
                <span class="hidden-lg"><i class="fa fa-home"></i></span>
                <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_home; ?></span>
            </a>
        </li>
        <li>
            <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>">
                <span class="hidden-lg"><i class="fa fa-heart"></i></span>
                <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span>
            </a>
        </li>
        <li>
            <a href="<?php echo $contact_page; ?>" title="<?php echo $text_contacts ?>">
                <span class="hidden-lg"><i class="fa fa-phone"></i></span>
                <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_contacts; ?></span>
            </a>
        </li>
        <li>
            <a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>">
                <span class="hidden-lg"><i class="fa fa-user"></i></span>
                <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span>
            </a>
        </li>
        <li>
            <a href="<?php echo $shipping_page; ?>" title="Доставка и самовывоз">
                <span class="hidden-lg"><i class="fa fa-shopping-cart"></i></span>
                <span class="hidden-xs hidden-sm hidden-md">Доставка и самовывоз</span>
            </a>
        </li>
        <li>
            <a href="<?php echo $payment_page; ?>" title="Варианты оплаты">
                <span class="hidden-lg"><i class="fa fa-money"></i></span>
                <span class="hidden-xs hidden-sm hidden-md">Варианты оплаты</span>
            </a>
        </li>
          <?php if ($logged) { ?>
          <li>
              <a href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>">
                  <span class="hidden-lg"><i class="fa fa-sign-out"></i></span>
                  <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_logout; ?></span>
              </a>
          </li>
          <?php } else { ?>
          <li>
              <a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>">
                  <span class="hidden-lg"><i class="fa fa-sign-in"></i></span>
                  <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_login; ?></span>
              </a>
          </li>
          <li>
              <a href="<?php echo $register; ?>" title="<?php echo $text_register; ?>">
                  <span class="hidden-lg"><i class="fa fa-user-plus"></i></span>
                  <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_register; ?></span>
              </a>
          </li>
          <?php } ?>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-6">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
      <div class="col-sm-3"><?php echo $search; ?>
      </div>
    </div>
  </div>
</header>