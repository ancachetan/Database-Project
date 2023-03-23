<?php
    include_once 'conexiune.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <title>4B</title>
        <style>
            th, td {
                border-color: red;
            }
            h2{
                color: #974009;
                text-align:center;
                margin: 100px;
                font-size: 30px;
            }
            table {
                width: 30%;
                margin: 30px;
                margin-left: auto;
                margin-right: auto;
            }
            .button {
                background-color: #4CAF50; 
                border: none;
                color: white;
                padding: 30px 50px; 
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 12px;
                margin: 4px 2px;
                transition-duration: 0.4s;
                cursor: pointer;
            }
            .button1 {
                background-color: white; 
                color: black; 
                border: 2px solid #f44336;
            }

            .button1:hover {
                background-color: red;
                color: white;
            }
            a:link, a:visited {
                background-color: white;
                color: black;
                border: 2px solid red;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
            }
            a:hover, a:active {
                background-color: red;
                color: white;
            }
            .p-left{
                position: absolute;
                bottom: 0;
                left: 0;
                text-transform: capitalize;
                text-align: left;
            }
            .p-right{
                position: absolute;
                bottom: 0;
                right: 0;
                text-transform: capitalize;
                text-align: right;
            }
            .p-class{
                font-size: 30px;
                text-align: center;
                margin: 100px;
            }
            .center {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 120px;
                border: 5px #590700; 
                border-style: dotted;
            }
        </style>
    </head>
    <body style="background-color:#c9b996;">
        <h2><mark>4B.</mark> Să se găsească perechi de modele (model1, model2) de laptop-uri cu condiția să aibă același ecran și hd diferit. O pereche este unică în rezultat.</h2>
       <form>
        <div class="center">
            <button class="button button1" type = "submit" name = "submit" value = "submit">Rezultatul interogarii</button>
        </div>
        </form>
        <?php
            if (isset($_GET['submit']))
            {
                $sql = "SELECT l1.model AS model1, l2.model AS model2, l1.ecran, l1.hd AS hd1, l2.hd AS hd2 FROM Laptop l1 JOIN Laptop l2 ON (l1.ecran = l2.ecran) WHERE l1.model < l2.model AND l1.hd != l2.hd;";
                $result = mysqli_query($connect, $sql);
                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0)
                {
                    echo"<table border='1'>";
                    echo"<th>MODEL1</th><th>MODEL2</th><th>ECRAN</th><th>HD1</th><th>HD2</th>";
                    while ($row = mysqli_fetch_assoc($result))
                    {
                        echo "<tr><td>{$row['model1']}</td><td>{$row['model2']}</td><td>{$row['ecran']}</td><td>{$row['hd1']}</td><td>{$row['hd2']}";
                    }
                    echo"</table>";
                }
            }
        ?>
        <p class="p-left"><a href="PaginaPrincipala.php">Pagina principala</a></p>
        <p class="p-right"><a href="5A.php">Urmatorul exercitiu 5A</a></p>
    </body>
</html>