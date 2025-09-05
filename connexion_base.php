<?php
// Configurer la connexion a la base de donnees
$servername = "localhost";
$username = "Votre_nom_d_utilisateur";
$password = "Votre_mot_de_passe";
$dbname = "couloir_fc";

// Creer une connexion a la base de donnees
$conn = new mysqli($servername,
$username, $password, $dbname);

// Verifier la connexion 
if ($conn->connect_error) {
    die("Connexion echouee : " .
    $conn->connect_error);
}

// Recuperer des donnees de la base de donnees
$sql = "SELECT * FROM equipes";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = 
    $result->fetch_assoc()) {
        echo "Nom de l`equipe : " .
        $row["nom"]. "<br>";
    }
}else{
    echo "Aucune equipe trouvee";
}
$conn->close();
?>