<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Upomínky - Prima Logistics</title>
    <style>
    body {font-family: Verdana;font-size:80%}
    table {font-size:90%;border-collapse:collapse;}
    td, th {border: 1px solid black;padding:4px;}
    </style>
</head>
<body>
<H2>Chyby, které se objevily během odesílání upomínek</H2>
<table width="100%">
<tr>
    <th>Datum</th>
    <th>Text</th>
    <th>Faktura</th>
</tr>
<?php
    $db=New PDO("sqlsrv:server=192.168.88.100\PRIMA;Database=PrimaSpedicka");

    $query=$db->query("select * from UpominkyChyby ORDER BY datum");
while ($row=$query->fetch())
{
?>
<tr>
    <td><?php echo $row['datum']?></td>
    <td><?php echo $row['popis']?></td>
    <td><?php echo $row['faktura']?></td>
</tr>
<?php
}
?>
</table>


<H2>Úspěšně odeslané upomínky</H2>
<table width="100%">
<tr>
    <th>Datum</th>
    <th>Upomínka</th>
    <th title="První faktura, bylo-li jich více">Faktura</th>
    <th>E-mail</th>
</tr>
<?php
    //$db=New PDO("sqlsrv:server=192.168.88.100\PRIMA;Database=PrimaSpedicka");

    $query=$db->query("select * from UpominkyOdeslane ORDER BY datum");
while ($row=$query->fetch())
{
?>
<tr>
    <td><?php echo $row['datum']?></td>
    <td align="center"><?php echo $row['upominka']?></td>
    <td><?php echo $row['faktura']?></td>
    <td><?php echo $row['email']?></td>
</tr>
<?php
}
?>
</table>
</body>
</html>