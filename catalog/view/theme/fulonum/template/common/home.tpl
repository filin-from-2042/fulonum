<?php echo $header; ?>
<div class="container">

    <?php if (!empty($anyname)){ ?>
    <div class="row">
        <div class="col-sm-12">
            <link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
            <script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
            <?php echo $anyname;?>
        </div>
    </div>
    <?php }?>

  <div class="row">
    <?php echo $column_left; ?>

      <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>