<?php echo $header; ?>
<div class="container">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
      <div class="row">
        <div class="col-sm-6">
          <div class="well">
              <i class="fa fa-file-o well-icon" aria-hidden="true"></i>
              <div class="well-header">
                <h2><?php echo $text_new_customer; ?></h2>
                <p><?php echo $text_register; ?></p>
              </div>
              <hr />
            <p><?php echo $text_register_account; ?></p>
              <hr />
            <a href="<?php echo $register; ?>" class="btn btn-primary"><?php echo $button_continue; ?><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></a></div>
        </div>
        <div class="col-sm-6">
          <div class="well">
              <i class="fa fa-key well-icon" aria-hidden="true"></i>
              <div class="well-header">
                <h2><?php echo $text_returning_customer; ?></h2>
                <p><?php echo $text_i_am_returning_customer; ?></p>
              </div>
              <hr />
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                <hr />
                <button type="submit" class="btn btn-primary"><?php echo $button_login; ?><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
                  <a href="<?php echo $forgotten; ?>" class="forgotten-link"><?php echo $text_forgotten; ?></a></div>
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </form>
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>