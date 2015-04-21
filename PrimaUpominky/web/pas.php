<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Upomínky - Prima Air Sea</title>
    <style>
    body {font-family: Verdana;font-size:80%}
    table {font-size:90%;border-collapse:collapse;}
    td, th {border: 1px solid black;padding:4px;white-space:pre-wrap;}
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

    $query=$db->query("select TOP 100 * from PASUpominkyChyby ORDER BY datum DESC");
while ($row=$query->fetch())
{
?>
<tr>
    <td><?php echo htmlspecialchars($row['datum'])?></td>
    <td><?php echo htmlspecialchars($row['popis'])?></td>
    <td><?php echo htmlspecialchars($row['faktura'])?></td>
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

    $query=$db->query("select TOP 100 * from PASUpominkyOdeslane ORDER BY datum DESC");
while ($row=$query->fetch())
{
?>
<tr>
    <td><?php echo htmlspecialchars($row['datum'])?></td>
    <td align="center"><?php echo htmlspecialchars($row['upominka'])?></td>
    <td><?php echo htmlspecialchars($row['faktura'])?></td>
    <td><?php echo htmlspecialchars($row['email'])?></td>
</tr>
<?php
}
?>
</table>
</body>
</html>