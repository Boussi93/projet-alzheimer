<?php
require_once("connexion.php");

// Recherche simple d’un patient par son identifiant
$tableau_simple = [];
$id_recherche = "";
$recherche_simple = false;
 
if (isset($_POST['recherche_simple'])) {
    $recherche_simple = true;
    $id_recherche = intval($_POST['id_patient']);
 
    $sql_simple = "SELECT p.id_patient, p.age, g.libelle_genre, e.libelle_ethnie, n.libelle_educ, rd.libelle_diagnostic FROM patient p
                   LEFT JOIN genre g ON p.id_genre = g.id_genre
                   LEFT JOIN ethnie e ON p.id_ethnie = e.id_ethnie
                   LEFT JOIN niveau_educ n ON p.id_niveau_educ = n.id_niveau_educ
                   LEFT JOIN ref_diagnostic rd ON p.id_diagnostic_ref = rd.id_diagnostic_ref
                   WHERE p.id_patient = " . $id_recherche;
 
    $result_simple = mysqli_query($conn, $sql_simple);
    if ($result_simple) {
        while ($tab = mysqli_fetch_assoc($result_simple)) {
            $tableau_simple[] = $tab;
        }
    }
}

// Recherche avancée : critères multiples + IRM
$tableau_avancee = [];
$recherche_avancee = false;
$conditions = [];
$where_avancee = "1=1";
 
if (isset($_POST['recherche_avancee'])) {
    $recherche_avancee = true;
 
    if (isset($_POST['age_min']) && $_POST['age_min'] != "") {
        $conditions[] = "p.age >= " . intval($_POST['age_min']);
    }
    if (isset($_POST['age_max']) && $_POST['age_max'] != "") {
        $conditions[] = "p.age <= " . intval($_POST['age_max']);
    }
    if (isset($_POST['fumeur']) && $_POST['fumeur'] != "") {
        $conditions[] = "mv.fumeur = " . intval($_POST['fumeur']);
    }
    if (isset($_POST['diagnostic']) && $_POST['diagnostic'] != "") {
        $conditions[] = "p.id_diagnostic_ref = " . intval($_POST['diagnostic']);
    }
    if (isset($_POST['genre']) && $_POST['genre'] != "") {
        $conditions[] = "p.id_genre = " . intval($_POST['genre']);
    }
 
    if (count($conditions) > 0) {
        $where_avancee = implode(" AND ", $conditions);
    }
 
    $sql_avancee = "SELECT p.id_patient, p.age, g.libelle_genre, e.libelle_ethnie, rd.libelle_diagnostic, rb_fumeur.libelle AS fumeur, i.chemin_image, i.nom_image FROM patient p
                    LEFT JOIN genre g ON p.id_genre = g.id_genre
                    LEFT JOIN ethnie e ON p.id_ethnie = e.id_ethnie
                    LEFT JOIN ref_diagnostic rd ON p.id_diagnostic_ref = rd.id_diagnostic_ref
                    LEFT JOIN mode_vie mv ON p.id_patient = mv.id_patient
                    LEFT JOIN ref_binaire rb_fumeur ON mv.fumeur = rb_fumeur.id_binaire
                    LEFT JOIN irm i ON p.id_patient = i.id_patient
                    WHERE $where_avancee
                    ORDER BY p.age";
 
    $result_avancee = mysqli_query($conn, $sql_avancee);
    if ($result_avancee) {
        while ($tab2 = mysqli_fetch_assoc($result_avancee)) {
            $tableau_avancee[] = $tab2;
        }
    }
}

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultats de recherche</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<main id="conteneur">

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>

    <?php if ($recherche_simple) { ?>
        <section class="bloc-resultats">
            <h2>Résultats de recherche</h2>

            <?php if (!empty($tableau_simple)) { ?>
                <table>
                    <tr>
                        <th>ID patient</th>
                        <th>Âge</th>
                        <th>Genre</th>
                        <th>Ethnie</th>
                        <th>Niveau d'éducation</th>
                        <th>Diagnostic</th>
                    </tr>

                    <?php foreach ($tableau_simple as $patient) { ?>
                        <tr>
                            <td><?php echo $patient['id_patient']; ?></td>
                            <td><?php echo $patient['age']; ?></td>
                            <td><?php echo $patient['libelle_genre']; ?></td>
                            <td><?php echo $patient['libelle_ethnie']; ?></td>
                            <td><?php echo $patient['libelle_educ']; ?></td>
                            <td><?php echo $patient['libelle_diagnostic']; ?></td>
                        </tr>
                    <?php } ?>
                </table>
            <?php } else { ?>
                <p>Aucun résultat trouvé.</p>
            <?php } ?>
        </section>  
    <?php } ?>

    <?php if ($recherche_avancee) { ?>
        <section class="bloc-resultats">
            <h2>Résultats recherche avancée</h2>

            <?php if (!empty($tableau_avancee)) { ?>
                <table>
                    <tr>
                        <th>ID patient</th>
                        <th>Âge</th>
                        <th>Genre</th>
                        <th>Ethnie</th>
                        <th>Fumeur</th>
                        <th>Diagnostic</th>
                        <th>IRM</th>
                    </tr>

                    <?php foreach ($tableau_avancee as $tab2) { ?>
                        <tr>
                            <td><?php echo $tab2['id_patient']; ?></td>
                            <td><?php echo $tab2['age']; ?></td>
                            <td><?php echo $tab2['libelle_genre']; ?></td>
                            <td><?php echo $tab2['libelle_ethnie']; ?></td>
                            <td><?php echo $tab2['fumeur']; ?></td>
                            <td><?php echo $tab2['libelle_diagnostic']; ?></td>
                            <td>
                                <?php if (!empty($tab2['chemin_image'])) { ?>
                                    <img src="/projet-alzheimer/<?php echo $tab2['chemin_image']; ?>" alt="IRM patient" width="150">
                                <?php } else { ?>
                                    Aucune IRM
                                <?php } ?>
                            </td>
                        </tr>
                    <?php } ?>
                </table>
            <?php } else { ?>
                <div class="etat-vide">
                    <p>Aucun patient trouvé.</p>
                </div>
            <?php } ?>
        </section>
    <?php } ?>

</main>
</body>
</html>


