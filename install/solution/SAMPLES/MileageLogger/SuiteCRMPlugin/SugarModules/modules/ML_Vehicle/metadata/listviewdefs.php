<?php
$module_name = 'ML_Vehicle';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'MAKE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_MAKE',
    'width' => '10%',
    'default' => true,
  ),
  'MODEL' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_MODEL',
    'width' => '10%',
    'default' => true,
  ),
  'FUEL_TYPE' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_FUEL_TYPE',
    'width' => '10%',
  ),
);
;
?>
