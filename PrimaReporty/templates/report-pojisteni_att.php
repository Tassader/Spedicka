<?php
include_once('PHPExcel\PHPExcel.php');
//print_r($rows);
$inputFileType = 'Excel5';
$inputFileName = "templates\\${templateName}_att.xls";
$objReader = PHPExcel_IOFactory::createReader($inputFileType);
$objPHPExcel = $objReader->load($inputFileName);


//PHPExcel_Cell::setValueBinder( new PHPExcel_Cell_AdvancedValueBinder() );

//$objPHPExcel = new PHPExcel();
$objPHPExcel->setActiveSheetIndex(0);
//$objPHPExcel->getActiveSheet()->insertNewRowBefore(4,1);

$rowCount = 2; // 1. řádek je záhlaví
/*
$objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, 'Rok/měsíc');
$objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, 'Pořadové č.');
$objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, 'Přeprava č.');
$objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, 'Pojištěný');
$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, 'INC.');
$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, 'Nakládka');
$objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, 'Via');
$objPHPExcel->getActiveSheet()->SetCellValue('H'.$rowCount, 'Vykládka');
$objPHPExcel->getActiveSheet()->SetCellValue('I'.$rowCount, 'Datum nakládky/lodění');
$objPHPExcel->getActiveSheet()->SetCellValue('J'.$rowCount, 'Částka dle faktury');
$objPHPExcel->getActiveSheet()->SetCellValue('K'.$rowCount, '110 %');
$objPHPExcel->getActiveSheet()->SetCellValue('L'.$rowCount, 'Dopravné, clo a další');
$objPHPExcel->getActiveSheet()->SetCellValue('M'.$rowCount, 'Částka k pojištění');
$objPHPExcel->getActiveSheet()->SetCellValue('N'.$rowCount, 'Měna');
$objPHPExcel->getActiveSheet()->SetCellValue('O'.$rowCount, 'Kurz');
$objPHPExcel->getActiveSheet()->SetCellValue('P'.$rowCount, 'Pojistná sazba ‰');
$objPHPExcel->getActiveSheet()->SetCellValue('Q'.$rowCount, 'Pojistné Kč');
*/
foreach($rows as $row){
    $rowCount++;

    $objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, $row['r_m']);
    $objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, $row['Cislo']);
    $objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, $row['Preprava']);
    $objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, $row['Pojisteny']);
    $objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, $row['Incoterms']);
    $objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, $row['Nakladka']);
    $objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, $row['Via']);
    $objPHPExcel->getActiveSheet()->SetCellValue('H'.$rowCount, $row['Vykladka']);
    $objPHPExcel->getActiveSheet()->SetCellValue('I'.$rowCount, $row['DatumNakladky']);
    $objPHPExcel->getActiveSheet()->SetCellValue('J'.$rowCount, $row['Castka']);
    $objPHPExcel->getActiveSheet()->SetCellValue('K'.$rowCount, $row['Castka110']);
    $objPHPExcel->getActiveSheet()->SetCellValue('L'.$rowCount, $row['Dopravne']);
    //$castkaKPojisteni = (empty($row['Castka110'])?$row['Castka']:$row['Castka110']) + $row['Dopravne'];
    //$objPHPExcel->getActiveSheet()->SetCellValue('M'.$rowCount, $castkaKPojisteni);
    $objPHPExcel->getActiveSheet()->SetCellValue('M'.$rowCount, '=IF(ISBLANK(K'.$rowCount.') ,J'.$rowCount.' ,K'.$rowCount.')+L'.$rowCount);
    $objPHPExcel->getActiveSheet()->SetCellValue('N'.$rowCount, $row['Mena']);
    $objPHPExcel->getActiveSheet()->SetCellValue('O'.$rowCount, $row['Kurz']);
    $objPHPExcel->getActiveSheet()->SetCellValue('P'.$rowCount, $row['Sazba']);
    //$objPHPExcel->getActiveSheet()->SetCellValue('Q'.$rowCount, $castkaKPojisteni * $row['Kurz'] * $row['Sazba'] / 1000);
    $objPHPExcel->getActiveSheet()->SetCellValue('Q'.$rowCount, '=MAX(M'.$rowCount.'*O'.$rowCount.'*P'.$rowCount.'/1000,200)');

/*
$objPHPExcel->getActiveSheet()
            ->getStyle('D1')
            ->getNumberFormat()
            ->setFormatCode(PHPExcel_Style_NumberFormat::FORMAT_DATE_YYYYMMDDSLASH)
*/
}
ob_start();
$writer = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
$writer->save('php://output');
$attachment = ob_get_contents();
ob_end_clean();
//return $contents;

?>