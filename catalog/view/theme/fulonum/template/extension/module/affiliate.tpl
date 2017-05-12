<div class="list-group">
    <a href="<?php echo $account; ?>" class="list-group-item list-title"><?php echo $text_account; ?></a>
    <ul class="first-lvl">
  <?php if (!$logged) { ?>
        <li><a href="<?php echo $login; ?>" class="list-group-item"><?php echo $text_login; ?></a></li>
        <li><a href="<?php echo $register; ?>" class="list-group-item"><?php echo $text_register; ?></a></li>
        <li><a href="<?php echo $forgotten; ?>" class="list-group-item"><?php echo $text_forgotten; ?></a></li>
  <?php } ?>
  <?php if ($logged) { ?>
        <li><a href="<?php echo $edit; ?>" class="list-group-item"><?php echo $text_edit; ?></a></li>
        <li><a href="<?php echo $password; ?>" class="list-group-item"><?php echo $text_password; ?></a></li>
  <?php } ?>
        <li><a href="<?php echo $payment; ?>" class="list-group-item"><?php echo $text_payment; ?></a></li>
        <li><a href="<?php echo $tracking; ?>" class="list-group-item"><?php echo $text_tracking; ?></a></li>
        <li><a href="<?php echo $transaction; ?>" class="list-group-item"><?php echo $text_transaction; ?></a></li>
  <?php if ($logged) { ?>
        <li><a href="<?php echo $logout; ?>" class="list-group-item"><?php echo $text_logout; ?></a></li>
  <?php } ?>
    </ul>
</div>
