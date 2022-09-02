<?php

function cors() {
    // Allow from any origin
    if (isset($_SERVER['HTTP_ORIGIN'])) {
        // Decide if the origin in $_SERVER['HTTP_ORIGIN'] is one
        // you want to allow, and if so:
        header("Access-Control-Allow-Origin: {$_SERVER['HTTP_ORIGIN']}");
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }
    // Access-Control headers are received during OPTIONS requests
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
            // may also be using PUT, PATCH, HEAD etc
            header("Access-Control-Allow-Methods: GET, POST, OPTIONS");

        if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
            header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");

        exit(0);
    }
}

cors();


include 'article.php';


$article_services = new Article();


$serviceName = $_GET['serviceName'] ?? "";


switch ($serviceName) {
    
    case 'add_article_to_blog':
        if ( isset($_POST['article_info']) ) {
            echo $article_services->add_article_to_blog(json_decode($_POST['article_info']));
        } else {
            echo 'Error: No article info. Make sure you are sending the article info as a POST parameter.';
        }
        break;
    case 'get_articles_from_blog':
        echo json_encode($article_services->get_articles_from_blog());
        break;

    case 'get_articles_top_10_from_blog':
        echo json_encode($article_services->get_articles_top_10_from_blog());
        break;

    case 'search_article_by_id':
        if ( isset($_GET['id_article']) ) {
            echo json_encode($article_services->search_article_by_id($_GET['id_article']));
        } else {
            echo 'Error: No id article. Make sure you are sending the id article as a GET parameter.';
        }
        break;

    case 'search_article':
        if ( isset($_GET['search']) ) {
            echo json_encode($article_services->search_article($_GET['search']));
        } else {
            echo 'Error: No search info. Make sure you are sending the search info as a POST parameter.';
        }
        break;
    
    case 'update_article':
        if ( isset($_POST['article_info']) ) {
            echo $article_services->update_article(json_decode($_POST['article_info']));
        } else {
            echo 'Error: No article info. Make sure you are sending the article info as a POST parameter.';
        }
        break;
    
    

    default:
        echo 'No service name';
        break;
}