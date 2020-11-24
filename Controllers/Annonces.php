<?php

namespace Controllers;


class Annonces extends Controller
{

    protected $modelName = \Models\Annonces::class;

    public function index()
    {
        /**
         * 2. Récupération des annonces
         */
        $annoncesAchat  = $this->model->findNews("transac", "Achat");
        $annoncesLoc    = $this->model->findNews("transac", "Location");
        
        /**
         * 3. Affichage
         */
        $pageTitle = "Home";

        \Renderer::render($pageTitle, compact('pageTitle', 'annoncesAchat', 'annoncesLoc'));
    }

    public function show()
    {

        /**
         * 1. Récupération du param "id" et vérification de celui-ci
         */
        // On part du principe qu'on ne possède pas de param "id"
        $annonce_id = null;

        // Mais si il y'en a un et que c'est un nombre entier, alors on le conserve dans une variable
        if (!empty($_GET['id']) && ctype_digit($_GET['id'])) {
            $annonce_id = $_GET['id'];
        }

        // On arrête le processus et on affiche l'erreur
        if (!$annonce_id) {
            die("Vous devez préciser un paramètre `id` dans l'URL !");
        }

        /**
         * 3. Récupération de l'annonce en question
         */
        $annonce = $this->model->find($annonce_id);


        /**
         * 4. On affiche 
         */
        $pageTitle = $annonce['titre'];
        $pageName = "Annonce";

        \Renderer::render($pageName, compact('pageTitle', 'annonce', 'annonce_id'));
    }

    public function delete()
    {

        /**
         * 1. On vérifie que le GET possède bien un paramètre "id" (delete.php?id=202) et que c'est bien un nombre
         */
        if (empty($_GET['id']) || !ctype_digit($_GET['id'])) {
            die("Ho ?! Tu n'as pas précisé l'id de l'annonce !");
        }

        $id = $_GET['id'];

        /**
         * 3. Vérification que l'annonce existe bel et bien
         */
        $annonce = $this->model->find($id);
        if (!$annonce) {
            die("L'annonce $id n'existe pas, vous ne pouvez donc pas le supprimer !");
        }

        /**
         * 4. Réelle suppression de l'annonce
         */
        // $query = $pdo->prepare('DELETE FROM annonces WHERE id = :id');
        // $query->execute(['id' => $id]);
        $this->model->delete($id);

        /**
         * 5. Redirection vers la page d'accueil
         */

        \Http::redirect("index.php");
    }
}
