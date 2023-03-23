<?php
    include_once 'conexiune.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <title>5B</title>
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
            input[type=text] {
                width: 130px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                font-size: 16px;
                background-color: white;
                background-position: 10px 10px; 
                background-repeat: no-repeat;
                padding: 12px 20px 12px 40px;
                transition: width 0.4s ease-in-out;
            }
            input[type=text]:focus {
                width: 30%;
            }
            .button {
                background-color: #4CAF50; 
                border: none;
                color: white;
                padding: 12px 25px; 
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
        </style>
    </head>
    <body style="background-color:#c9b996;">
        <h2><mark>5B.</mark> Să se găsească pc-urile care au același preț ca și pc-ul ce are modelul 111.</h2>
        <form>
            <label for = "text" style = "font-size: 20px">Modelul pc-ului:</label>
            <input type = "text" name = "model">
            <button class="button button1" type = "submit" name = "submit" value = "submit">Rezultatul interogarii</button>
        </form>
        <?php
            if (isset($_GET['submit']))
            {
                $model = $_GET['model'];
                $sql = "SELECT model, pret, categorie FROM Produs WHERE categorie = 'PC' AND pret IN (SELECT pret FROM Produs WHERE model = $model);";
                $result = mysqli_query($connect, $sql);
                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0)
                {
                    echo"<table border='1'>";
                    echo"<th>MODEL</th><th>PRET</th><th>CATEGORIE</th>";
                    while ($row = mysqli_fetch_assoc($result))
                    {
                        echo "<tr><td>{$row['model']}</td><td>{$row['pret']}</td><td>{$row['categorie']}";
                    }
                    echo"</table>";
                }
                else
                {
                    echo '<p class = "p-class">Modelul pc-ului introdus nu se potriveste!</p>';
                }
            }
        ?>
        <p class="p-left"><a href="PaginaPrincipala.php">Pagina principala</a></p>
        <p class="p-right"><a href="6A.php">Urmatorul exercitiu 6A</a></p>
    </body>
</html>