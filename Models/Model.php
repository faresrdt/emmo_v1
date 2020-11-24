<?php

namespace Models;

abstract class Model
{

    protected $pdo;
    protected $table;

    public function __construct()
    {
        $this->pdo = \Database::getPdo();
    }

    /**
     * Retourne la liste des annonces par date de creation
     * 
     * @return un tableau 
     */
    public function findAll(?string $order = ""): array
    {
        $sql = "SELECT * FROM {$this->table}";
        if ($order) {
            $sql .= " ORDER BY " . $order;
        }
        $resultats = $this->pdo->query($sql);
        // On fouille le résultat pour en extraire les données réelles
        $annonces = $resultats->fetchAll();
        return $annonces;
    }

    /**
     * Retourne les 4 derniers resultats insérer dans la base de données classés par date de création 
     * @param string $column 
     * @param string $columnContent
     * @return array
     */
    public function findNews(string $column, string $columnContent): array
    {
        $sql = "SELECT * FROM {$this->table}
                WHERE `$column` = '$columnContent'
                ORDER BY date_crea DESC
                LIMIT 4";

        $resultats = $this->pdo->query($sql);
        // On fouille le résultat pour en extraire les données réelles
        $newsAnnonces = $resultats->fetchAll();
        return $newsAnnonces;
    }

    public function find(int $id): array
    {
        $query = $this->pdo->prepare("SELECT * FROM {$this->table} WHERE id = :id");
        $query->execute(['id' => $id]);
        $item = $query->fetch();

        return $item;
    }

    /**
     * Supprime un element dans la base grâce à son identifiant selon le controller qui l'appelle
     * 
     * @param integer $id
     * @return void
     */
    public function delete(int $id): void
    {
        $query = $this->pdo->prepare("DELETE FROM {$this->table} WHERE id = :id");
        $query->execute(['id' => $id]);
    }

    /**
     * Insere un element dans la base selon le controller qui l'appelle
     * 
     * @param string $author 
     * @param string $content
     * @return void
     */
    public function insert(string $author, string $content): void
    {

        $query = $this->pdo->prepare('INSERT INTO comments SET author = :author, content = :content');
        $query->execute(compact('author', 'content'));
    }
}
