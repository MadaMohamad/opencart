<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($devices) { ?>
  <p><b><?php echo $text_index; ?></b>
    <?php foreach ($devices as $device) { ?>
    &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/device#<?php echo $device['name']; ?>"><b><?php echo $device['name']; ?></b></a>
    <?php } ?>
  </p>
  <?php foreach ($devices as $device) { ?>
  <div class="device-list">
    <div class="device-heading"><?php echo $device['name']; ?><a id="<?php echo $device['name']; ?>"></a></div>
    <div class="device-content">
      <?php if ($device['device']) { ?>
      <?php for ($i = 0; $i < count($device['device']);) { ?>
      <ul>
        <?php $j = $i + ceil(count($device['device']) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
        <?php if (isset($device['device'][$i])) { ?>
        <li><a href="<?php echo $device['device'][$i]['href']; ?>"><img src="<?php echo $device['device'][$i]['thumb']; ?>"></a></br>
        <a href="<?php echo $device['device'][$i]['href']; ?>"><?php echo $device['device'][$i]['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
