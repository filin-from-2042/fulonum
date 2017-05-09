<div class="list-group">
   <a href="<?php echo $catalog_path ?>" class="list-group-item list-title"><?php echo $heading_title_catalog?></a>
   <ul class="first-lvl">
      <?php foreach ($categories as $category) { ?>
            <li>
                <a href="<?php echo $category['href']; ?>" class="list-group-item<?php if ($category['category_id'] == $category_id) { ?> active<?}?>">
                    <?php echo $category['name']; ?>
                    <?php if ($category['children']) { ?> <i class="fa fa-angle-right" aria-hidden="true"></i><?php } ?></a>
                <?php if ($category['children']) { ?>
                    <ul class="second-lvl">
                        <?php foreach ($category['children'] as $child) { ?>
                            <li>
                                <a href="<?php echo $child['href']; ?>" class="list-group-item<?php if ($child['category_id'] == $child_id) { ?> active<?}?> child"><?php echo $child['name']; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                <?php } ?>
            </li>
      <?php } ?>
    </ul>
</div>
