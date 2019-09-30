@extends('layouts.app')
@section('content')

    <!-- CON SESSION INICIADA-->
    <!--
        <aside class="left-sidebar">
        <div class="scroll-sidebar">
            <nav class="sidebar-nav">
                <ul id="sidebarnav">
                    <li> <a class="waves-effect waves-dark" href="HomePageUser.html" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Escritorio</span></a>
                    </li>
                    <li> <a class="waves-effect waves-dark" href="pqrs-user.html" aria-expanded="false"><i class="mdi mdi-book"></i><span class="hide-menu">PQRS</span></a>
                    </li>
                    <li> <a class="waves-effect waves-dark" href="pages-error-404.html" aria-expanded="false"><i class="mdi mdi-power"></i><span class="hide-menu">Salir</span></a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="sidebar-footer">
            <a href="" class="link" data-toggle="tooltip" title="Logout"><i class="mdi mdi-power"></i></a>
            </div>
    </aside>
    -->
    <div class="container-fluid" id="app">
        <div class="row page-titles">
            <div class="col-md-8 col-8 align-self-center">
                <h3 class="text-themecolor m-b-0 m-t-0">Escritorio</h3>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                </ol>
            </div>
            <div class="col-md-4 col-4 align-self-center">
                <select name="" id="" class="form-control">
                    <option value="item.name" v-for="item in localidades" v-text="item.name"></option>
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-6">
                                <div class="card">
                                    <img class="card-img-top" src="{{asset('assets/images/obra1.jpg')}}" alt="Card image">
                                    <div class="card-body" style="padding: 10px">
                                        <h4 class="card-title">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odio, modi.</h4>
                                        <a href="">@edilandrescortes</a><br>
                                        <small>Presupuesto  <b>2.000.000</b></small><small class="float-right">Bogota D.C</small>
                                        
                                        <p class="card-text"><br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Similique tempora eveniet veritatis eos rem! Nisi blanditiis illum labore dolorum error nihil cumque modi dignissimos! Et possimus magni ullam in
                                            placeat!
                                        </p>
                                        <small>Fecha de Incio: <b>16 de octubre ajsdj</b> <br>
                                        Fecha finalizacion : <b>12 de febrero del 2010</b> </small>
                                        <br><br>
                                        <a href="#" class="btn btn-primary">Ver mas detalles</a>
                                        <a href="" class="float-right" >En Construccion</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="card">
                                    <img class="card-img-top" src="{{asset('assets/images/obra2.jpeg')}}" alt="Card image">
                                    <div class="card-body" style="padding: 10px">
                                        <h4 class="card-title">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Odio, modi.</h4>
                                        <a href="">@edilandrescortes</a><br>
                                        <small>Presupuesto  <b>2.000.000</b></small><small class="float-right">Bogota D.C</small>
                                        
                                        <p class="card-text"><br>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Similique tempora eveniet veritatis eos rem! Nisi blanditiis illum labore dolorum error nihil cumque modi dignissimos! Et possimus magni ullam in
                                            placeat!
                                        </p>
                                        <small>Fecha de Incio: <b>16 de octubre ajsdj</b> <br>
                                        Fecha finalizacion : <b>12 de febrero del 2010</b> </small>
                                        <br><br>
                                        <a href="#" class="btn btn-primary">Ver mas detalles</a>
                                        <a href="" class="float-right" >En Construccion</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const URL_PATH = 'http://localhost/hackatrix/public/api/v1/';
        const TOKEN = 'T9SJVTzAdZ96ZeVTQ56X59kyyYf41oWMdZbeBdX0eCG7yqBOGpicCys8k7wZKf3WE5BqndbFoCxloK3T8cY3FVyMxQbqTrC5mc0n1909';

        new Vue({
            el: '#app',
            data(){
                return {
                    obras: [],
                    localidades: [],
                    newObra: {

                    },
                    localities: [],
                    cities: []
                }
            },
            created(){
                this.getAllLocalidades();
            },
            methods: {
                getAllLocalidades(){
                    axios.get(`${URL_PATH}localities?token=${TOKEN}`)
                        .then(async r => this.localidades = await r.data);
                }
            }

        });
    </script>

@endsection

