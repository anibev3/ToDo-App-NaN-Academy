# application_de_liste_de_taches

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


Flutter est un framework de développement d'applications mobiles open source qui utilise le langage de programmation Dart. Pour réaliser un projet en Flutter, vous devez maîtriser les concepts de base suivants :

Widgets : Flutter est basé sur un système de widgets. Les widgets sont des éléments de l'interface utilisateur tels que des boutons, des champs de texte, des images, des listes, etc. Vous devez savoir comment utiliser les widgets fournis par Flutter pour construire votre interface utilisateur.

Layouts : Les widgets sont organisés en hiérarchie de layouts pour construire la structure de l'interface utilisateur. Vous devez savoir comment utiliser les layouts fournis par Flutter tels que Column, Row, GridView, ListView, etc.

État : Les widgets ont un état qui peut changer au fil du temps. Vous devez savoir comment gérer l'état des widgets en utilisant le système de setState() pour redessiner la vue lorsque l'état change.

Navigation : Les applications mobiles ont souvent plusieurs écrans. Vous devez savoir comment gérer la navigation entre les écrans en utilisant des widgets tels que Navigator, MaterialPageRoute, etc.

Gestion des données : Les applications mobiles doivent souvent stocker et récupérer des données. Vous devez savoir comment utiliser les packages tels que sqflite, shared_preferences, ou firebase pour gérer les données dans votre application.


<!-- -------------------------------------------------------------------------------- -->

          --------------------- Application de liste de tâches --------------------

Utilisation de widgets tels que ListView.builder, TextField, CheckboxListTile
Stockage des données à l'aide d'une base de données, telle que sqflite
Navigation entre les écrans

Créez une application simple de liste de tâches pour organiser votre travail quotidien ou vos courses. Vous pouvez utiliser des widgets comme ListView, FloatingActionButton, TextField, CheckboxListTile pour construire cette application.

Cette application de liste de tâches permet à l'utilisateur: 
   - d'ajouter
   - de modifier 
   - et de supprimer des tâches.
Pour cela, vous pouvez utiliser 
   - le widget TextField pour permettre à l'utilisateur de saisir du texte,
   - le widget ListView.builder pour afficher la liste des tâches 
   - et le widget CheckboxListTile pour permettre à l'utilisateur de cocher les tâches terminées.

<img width="388" alt="Capture d’écran 2023-03-02 à 22 53 06" src="https://user-images.githubusercontent.com/122437139/222578493-e3ca3fd2-17a4-4c9c-b630-0b68b9b88c8d.png">

