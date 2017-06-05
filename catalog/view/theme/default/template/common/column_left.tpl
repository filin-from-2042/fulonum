<?php if ($modules) { ?>
<aside id="column-left" class="col-sm-3 hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>

    <?php if(isset($manufacturersList) && !empty($manufacturersList)){ ?>
        <div class="list-group">
            <a href="<?php echo $manufacturersList_link;?>" class="list-group-item list-title">Производители</a>
            <ul clas="first-lvl">
                <?php foreach ($manufacturersList as $manufacturer) { ?>
                <li>
                    <a href="<?php echo $manufacturer['href'];?>" class="list-group-item"><?php echo $manufacturer['name'];?></a>
                </li>
                <?php } ?>
            </ul>
        </div>
    <?php } ?>

</aside>
<?php } ?>
