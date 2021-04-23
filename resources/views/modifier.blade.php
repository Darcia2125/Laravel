@extends('layout\app')

@section('content')
    <div class="container">
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                {{ session('status') }}
            </div>
            
        @endif
        <div class="row">
            <div class="alert alert-success" role="alert" fixed >
                <div class="col-auto">
                    <nav class="nav flex-column nav-pills">
                        <a class="nav-link active nav-item" href="/home">Home</a>
                        <a class="nav-link" href="/questionnaire1">Questionnaires</a>
                        <a class="nav-link" href="/utilisateur">Utilisateurs</a>
                    </nav>
                </div>
            </div>
<body>
    <?php
        try{
            $pdo= new PDO("mysql:host=localhost; dbname=laravel", 'root', '');
        }
        catch(Exception $e)
        {
            die('Erreur'.$e->getMessage());
        }
    
    if ( isset( $_GET['id'] ) ){
           $id=htmlspecialchars($_GET['id']);
           $reponse= $pdo->prepare("SELECT * from users  WHERE id=?"); 
           $reponse->execute( array( $id) );
           $donnees = $reponse->fetch();
    }
    
    $id=htmlspecialchars($_GET['id']);
    $reponse= $pdo->prepare("SELECT * from users  WHERE id=?"); 
    $reponse->execute( array( $id) );
    $donnees= $response->fetch();
    
    
    ?>

<div class="header">
    <h2>FORMULARE DE MODIFICATION</h2>
    </div>
    <input type="hidden" name="id" value="<?php echo $donnees['id']?>">
        <div class="input-group">
            <label>id</label>
            <input type="text" name="username" value="<?php echo $donnees['id']?>">
            <label>Nom</label>
            <input type="text" name="prenom" value="<?php echo $donnees['name']?>">
            
        </div>
        <div class="input-group">
            <button type="submit" name="register" class="btn">modifier</button>
        </div>
        
    </form> 

</body>
@endsection
