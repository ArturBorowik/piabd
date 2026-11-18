<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);



if (isset($_POST['wykonaj_skrypt'])) {
    
    $sql_tabela = "CREATE TABLE IF NOT EXISTS uczniowie (
        id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        imie VARCHAR(50) NOT NULL,
        nazwisko VARCHAR(50) NOT NULL,
        klasa VARCHAR(10) NOT NULL
    )";

    if ($conn->query($sql_tabela) === TRUE) {
        
        $sprawdzenie = $conn->query("SELECT * FROM uczniowie WHERE imie = 'Jan' AND nazwisko = 'Kowalski'");
        
        if ($sprawdzenie->num_rows > 0) {
            $komunikat = "Rekordy już istnieją w bazie danych. Nie dodano duplikatów.";
        } else {
            $sql_rekordy = "INSERT INTO uczniowie (imie, nazwisko, klasa) VALUES 
                ('Jan', 'Kowalski', '3A'),
                ('Anna', 'Nowak', '2B'),
                ('Piotr', 'Zieliński', '4C')";

            if ($conn->query($sql_rekordy) === TRUE) {
                $komunikat = "Wykonano polecenie - pomyślnie dodano rekordy.";
            } else {
                $komunikat = "Błąd podczas dodawania rekordów: " . $conn->error;
            }
        }

    } else {
        $komunikat = "Błąd podczas tworzenia tabeli: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praca domowa Artur Borowik</title>
</head>
<body>

    <header>
        <h1 style="font-size: 24px;">Praca domowa</h1>
    </header>

    <main>
        <p>Kliknij w przycisk</p>

        <form method="POST" action="">
            <button type="submit" name="wykonaj_skrypt" class="btn">Uruchom skrypt</button>
        </form>
    </main>

    <footer>
        <p style="font-style: italic;"> Artur Borowik </p>
    </footer>

</body>
</html>
<?php
if (isset($conn) && $conn instanceof mysqli) {
    $conn->close();
}
?>