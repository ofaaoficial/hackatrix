<!DOCTYPE html>
<!--
* CoreUI - Free Bootstrap Admin Template
* @version v2.1.12
* @link https://coreui.io
* Copyright (c) 2018 creativeLabs Łukasz Holeczek
* Licensed under MIT (https://coreui.io/license)
-->

<html lang="en">

<head>
    <base href="./">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <style>
        #result-input-search::-webkit-scrollbar {
            width: 8px;
            /* Tamaño del scroll en vertical */
            height: 8px;
        }
        /* Ponemos un color de fondo y redondeamos las esquinas del thumb */
        
        #result-input-search::-webkit-scrollbar-thumb {
            background: #ccc;
        }
        /* Cambiamos el fondo y agregamos una sombra cuando esté en hover */
        
        #result-input-search::-webkit-scrollbar-thumb:hover {
            background: #b3b3b3;
            box-shadow: 0 0 2px 1px rgba(0, 0, 0, 0.2);
        }
        /* Cambiamos el fondo cuando esté en active */
        
        #result-input-search::-webkit-scrollbar-thumb:active {
            background-color: #999999;
        }
        
        a {
            text-decoration: none;
            color: inherit;
        }
        
        a:hover {
            text-decoration: none;
            color: inherit;
        }
        
        .main {
            background-color: #F9F9F9;
        }
        
        .app-header {
            border-bottom: none;
        }
        /*sidebar*/
        
        .sidebar {
            background-color: #FFFFFF;
        }
        
        .sidebar .nav-link {
            padding: 10px 1px 10px 20px !important;
            color: #666666;
        }
        
        .sidebar .nav-link:hover {
            background-color: #F9F9F9;
            color: #666666;
        }
        
        .sidebar .active {
            background-color: #7E57C2!important;
        }
        
        .sidebar .active:hover,
        .sidebar .active:hover i {
            color: #fff!important;
        }
        
        .sidebar .active:hover .icon-i {
            color: #fff!important;
        }
        
        .sidebar .nav-link:hover i {
            color: #666666!important;
        }
        /*end sidebar*/
        
        .icon-i {
            float: right;
            padding-right: 15px;
            padding-top: 4px;
        }
        
        footer {
            background-color: #FFFFFF!important;
            border-top: none!important;
        }
        
        .btn-cur505 {
            background: linear-gradient( #6FE3FF, #2FC7F5);
        }
        
        .text-btn-cur505 {
            font-size: 20px;
            padding-top: 5px;
            padding-left: 10px;
            color: #666!important;
        }
        
        .jumbotron {
            background-color: #FFFFFF;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        
        .navbar-brand {
            color: #7E57C2;
            font-weight: bolder;
        }
        
        .input-search {
            border: none;
            outline: none!important;
        }
        
        .input-search:focus {
            border: none!important;
            outline: none!important;
            border: 1px solid transparent;
            color: #666;
        }
        
        .dropdown-menu {
            background-color: #FFFFFF;
        }
        
        .dropdown-header {
            background-color: #7E57C2;
            color: #fff;
        }
        
        .small-ip {
            color: #999;
            position: absolute;
            bottom: 0;
            padding-left: 2px;
        }
        
        .encabezado {
            color: #666;
            font-size: 18px;
        }
        
        .h2-card {
            font-size: 13px;
            font-weight: bolder;
        }
        
        .p-card {
            color: #666;
            font-size: 11px;
        }
        
        .card-body-cur505 {
            padding: 9px;
        }
        
        .card:hover img {
            filter: grayscale(50%);
            transition: all 0.2s;
        }
        
        .button-card {
            padding: 3px;
            color: #f9f9f9;
            font-size: 12px;
        }
        
        .border-none {
            border: none!important;
        }
        
        .h1-login {
            color: #7E57C2;
            font-weight: bolder;
        }
        
        .input-login {
            border-radius: 30px;
            height: 30px;
        }
        
        .btn-login {
            background-color: #7E57C2;
            text-align: left;
            width: 160px;
        }
        
        .btn-login i {
            float: right;
            margin-top: 4px;
        }
        /*reproductor*/
        
        .h2-video {
            color: #000;
            font-weight: 200;
            font-size: 18px;
            margin-top: 5px;
        }
        
        .h2-video small {
            color: #666;
        }
        
        .h2-video-mini {
            color: #333;
            font-weight: 400;
            font-size: 14px;
        }
        
        .p-video-mini {
            color: #666;
            font-size: 11px;
        }
        
        .p-video {
            color: #666;
        }
        
        .mini-navegacion-cursos {
            cursor: pointer;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        
        .mini-navegacion-cursos:hover {
            border-left: 4px solid #7E57C2;
            transition: all 0.2s;
        }
        
        .mini-navegacion-cursos:hover .icon-mini-play {
            display: block;
        }
        
        .icon-mini-play {
            display: none;
            margin-top: 10px;
        }
        
        .jumbotron.black {
            background-color: #243447;
        }
        /* collapse reproductor collapse reproductor collapse reproductor*/
        
        .accordeon-cur505 .card {
            border: none;
        }
        
        .accordeon-cur505 .card .card-header a {
            font-size: 15px;
        }
        
        .card-body-accordion-cur505 {
            padding: 12px;
            font-weight: 400;
        }
        
        .card-body-accordion-cur505:hover {
            background-color: #f9f9f9;
        }
        
        .favoritos-active {
            color: #7E57C2;
        }
        
        .hidden {
            display: none;
        }
        
        .input-search:focus #result-input-search {
            display: block;
        }
        
        .card-search:hover {
            background-color: #f9f9f9;
            cursor: pointer;
        }
    </style>
</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show" style="background-image:url('../bg-login.jpg');background-position: center;background-size: cover">
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-4">
                <br><br>
                <div class="jumbotron">
                    <form action="{{route('login')}}" method="get">
                        <h1 class="h1-login">TheBigTeam</h1>
                        <br>

                        <div class="form-group" style="margin-bottom: 8px">
                            <label for="">Correo electronico</label>
                            <input type="email" class="form-control input-login"  id="correo" required>
                        </div>
                        <div class="form-group">
                            <label for="">Contraseña</label>
                            <input type="password" class="form-control input-login"  id="password" required>
                        </div>
                        {{-- <a href="#" style="color: blue">Registrate</a> --}}
                        <button type="submit" class="btn btn-login float-right text-white">Iniciar sesión <i class="fas fa-chevron-right"></i> </button>
                        <br><br>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>

</html>