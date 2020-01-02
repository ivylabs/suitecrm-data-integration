<?php
$module_name = 'ML_Mileage';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'driver',
            'studio' => 'visible',
            'label' => 'LBL_DRIVER',
          ),
          1 => 
          array (
            'name' => 'vehicle',
            'studio' => 'visible',
            'label' => 'LBL_VEHICLE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'mileage_date',
            'label' => 'LBL_MILEAGE_DATE',
          ),
          1 => 
          array (
            'name' => 'mileage_reason',
            'studio' => 'visible',
            'label' => 'LBL_MILEAGE_REASON',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'start_mileage',
            'label' => 'LBL_START_MILEAGE',
          ),
          1 => 
          array (
            'name' => 'end_mileage',
            'label' => 'LBL_END_MILEAGE',
          ),
        ),
      ),
    ),
  ),
);
;
?>
