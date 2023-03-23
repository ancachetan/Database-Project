<?php
    include_once 'conexiune.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <title>5A</title>
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
        <h2><mark>5A.</mark> Să se găsească fabricanții de imprimante cu prețul cel mai mic.</h2>
       <form>
        <div class="center">
            <button class="button button1" type = "submit" name = "submit" value = "submit">Rezultatul interogarii</button>
        </div>
        </form>
        <?php
            if (isset($_GET['submit']))
            {
                $sql = "SELECT DISTINCT p1.fabricant FROM Produs p1 WHERE p1.categorie = 'IMPRIMANTA' AND p1.pret <= ALL (SELECT p2.pret FROM Produs p2 WHERE p2.categorie = 'IMPRIMANTA');";
                $result = mysqli_query($connect, $sql);
                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0)
                {
                    echo"<table border='1'>";
                    echo"<th>FABRICANT</th>";
                    while ($row = mysqli_fetch_assoc($result))
                    {
                        echo "<tr><td>{$row['fabricant']}";
                    }
                    echo"</table>";
                }
            }
        ?>
        <p class="p-left"><a href="PaginaPrincipala.php">Pagina principala</a></p>
        <p class="p-right"><a href="5B.php">Urmatorul exercitiu 5B</a></p>
    </body>
</html>