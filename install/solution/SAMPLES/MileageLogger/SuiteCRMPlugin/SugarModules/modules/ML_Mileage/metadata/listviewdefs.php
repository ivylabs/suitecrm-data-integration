<?php
$module_name = 'ML_Mileage';
$listViewDefs [$module_name] = 
array (
  'DRIVER' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_DRIVER',
    'id' => 'USER_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'VEHICLE' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_VEHICLE',
    'id' => 'ML_VEHICLE_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'MILEAGE_REASON' => 
  array (
    'type' => 'enum',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_MILEAGE_REASON',
    'width' => '10%',
  ),
  'START_MILEAGE' => 
  array (
    'type' => 'decimal',
    'label' => 'LBL_START_MILEAGE',
    'width' => '10%',
    'default' => true,
  ),
  'END_MILEAGE' => 
  array (
    'type' => 'decimal',
    'label' => 'LBL_END_MILEAGE',
    'width' => '10%',
    'default' => true,
  ),
  'MILEAGE_DATE' => 
  array (
    'type' => 'date',
    'label' => 'LBL_MILEAGE_DATE',
    'width' => '10%',
    'default' => true,
  ),
);
;
?>
