L'utilisateur peut tester le site web en local, mais il doit avoir un serveur web sur son ordinateur puis ouvrir notre projet en utilisant l’adresse 127.0.0.1:8080. Le 127.0.0.1 fait référence à l’adresse IP locale de notre propre ordinateur et 8080 est le port sur lequel EasyPHP écoute les requêtes HTTP. Il faut donc qu’il télécharge EasyPHP (ou un environnement équivalent avec Apache, PHP et MySQL):
-  il le lance en démarrant HTTP SERVER et DATABASE SERVER (bouton start) 
-  il appuie sur le bouton open de la ligne “MySQL Administration : PhpMyAdmin 4.7.0”
-  il copie colle le dossier projet-alzheimer puis le place dans eds-www qui est le répertoire web utilisé par EasyPHP. Voici l'arborescence : 
eds-www\
projet-alzheimer/
|── images/ (dossier contenant les images utilisées)
|── images_irm/
             |── sains/
             |── malades/
|── import/        
 |── alzheimers_disease_data.csv
             |── alzheimers_disease_datafinal.csv
             |── import_patient.csv
             |── import_modevie.csv
             |── import_mesure.csv
             |── import_historique.csv
             |── import_eval.csv
             |── import_symptomes.csv
|── css/
             |── style.css
|── code/
             |── analyse_alzheimer.ipynb
	 |── dbfinalalzheimer.csv
	 |── qqplots_combines.png
             |── tableau_descriptif.html
             |── tableau_statistiques.html
|── articles/
             |── article1.pdf
             |── article2.pdf
|── api-alzheimer/
             |── main.py
             |── recommandations_alz.json
|── js/
             |── script.js
|── SQL/
              |── codebasededonneestxt.txt
              |── projettuteure.sql
|── connexion.php
|── interrogation.php
|── formulaire.html
|── index.html
|── analyses.html
|── base-donnees.html
|── recommandations.html
|── ressources.html
 
-  puis dans la barre de recherche il tape l’adresse http://127.0.0.1:8080/projet-alzheimer/index.html ou selon la version d’EasyPHP http://localhost:8080/projet-alzheimer/formulaire.html. Il accède alors aux formulaires et il pourra les tester.
