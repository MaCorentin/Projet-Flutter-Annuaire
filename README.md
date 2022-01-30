Bienvenue sur la Documentation du Projet Flutter de Charles et Corentin.


**Description**

          - Lib>list_view :  Ici se trouve tous les fichiers qui gèrent la page principale, la liste des contacts. On peut retrouver OneContact qui sert à afficher un seul
          contact, composé de son numéro de tel, son nom et prénom et son adresse mail. Chaque contact est cliquable pour accéder à sa fiche de contact
          (information non récupérée ici) .On appelle donc OneContact en fonction de la taille de la liste de contact initialisé plus tôt. Un menu déroulant est 
          aussi disponible pour chaque contact. Il permet de d'accéder d'une autre façon aux détails du contact. Il permet aussi de supprimer le contact actuel.
          La suppression fonctionne, cependant, elle ne fonctionne que pour un contact en dur. Un bouton ADD est aussi disponible en bas de l'application pour 
          pouvoir ajouter un contact.Tout le front se trouve dans list_contact.dart et tout les calculent se font dans list_contact_controller.dart
          
          - Lib>formulaire_view : Pour réaliser la partie du formulaire, j'ai créé un widget pour la partie des coordonnés et un autre pour les informations;
          Chacun des widgets sont composés d'un container qui englobe les formulaires.  Pour les champs textes j'ai utilisé les textFormFields,
          que j'ai disposé grace à des columns ou des rows suivant le besoin. (Pour avoir deux Champs sur une même ligne, j'utilise les rows)
          Pour les pictogrammes je suis allé les prendre sur google font et je les ai integré grace a prefixIcon dans les InputDecoration des TextFormFields.
          
          Pour la sauvegarde des informations : 

          Nous avons créé une classe contact dans le dossier modele.
          Je créé un objet vide au lancement de la page,une fois que l'on valide le formulaire, 
          l'attribut onSaved des TextFormField affecte les differentes valeurs a mon objets.
          
          Dans mon bouton de validation : 

          J'envoi un message pour prévenir que la demande de création a bien été prise en compte. Ensuite j'ajoute a notre liste de contact mon client temporaire
          (objet créé au début). Et je fais une redirection vers la page liste. Mon code ajoute bien un contact a la liste de base, mais vide, 
          je n'ai pas trouver pourquoi il se créé vide apres plusieurs recherche...
          
          - Lib>Model : On utilise un modèle que nous avons crée et appelé dans notre projet. Un contact est composé d'un nom,d'un prenom,
          un numeroMobile, un numeroFixe, un numeroPro, une societe, un poste et un mail.
          
          -Lib>Main.dart : Grace a ThemeData on a peu créé un style qui s'applique a toutes les pages de l'application.
          L'attribut getPage de GetMaterialApp nous permet de gérer les routes de nos différents pages.
                             
