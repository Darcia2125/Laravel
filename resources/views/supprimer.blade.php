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
        $reponse= $pdo->prepare( "DELETE FROM personne WHERE id=?"); 
        $reponse->execute( array( $id ) );
        echo "Record deleted successfully";
    

    }
    ?>


    </form> 
</body>
@endsection
