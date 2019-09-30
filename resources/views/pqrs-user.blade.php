
@extends('layouts.app')
@section('content')




<div class="container-fluid" id="app">

    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Escritorio</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                <li class="breadcrumb-item active">PQR's</li>
            </ol>
        </div>
        <div class="col-md-7 col-4 align-self-center">
            <a href="https://wrappixel.com/templates/materialpro/" class="btn waves-effect waves-light btn-info pull-right hidden-sm-down" data-toggle="modal" data-target="#myModal2"><i class="fas fa-plus"></i> Crear nuevo pqrs </a>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-block">
                        <ul class="nav nav-tabs mb-4" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Sin responder</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Respondidos</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                    <table class="table table-sm table-bordered">
                                        <tr>
                                            <th class="text-center">OBRA</th>
                                            <th class="text-center">TIPO</th>
                                            <th class="text-center">NOMBRE</th>
                                            <th class="text-center">DESCRIPCION</th>
                                            <th class="text-center">ENTIDAD</th>
                                            <th class="text-center">DETALLES</th>
                                        </tr>
                                        <tr>
                                            <td>Obra 1</td>
                                            <td>En proceso</td>
                                            <td>Prblemas</td>
                                            <td>Entidad</td>
                                            <td>Detalles de prueba</td>
                                            <td class="text-center"><a href="" data-toggle="modal" data-target="#myModal1"><i class="fas fa-plus text-dark text-warning"></i></a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                                    <table class="table table-sm table-bordered">
                                        <tr>
                                            <th class="text-center">OBRA</th>
                                            <th class="text-center">TIPO</th>
                                            <th class="text-center">NOMBRE</th>
                                            <th class="text-center">DESCRIPCION</th>
                                            <th class="text-center">ENTIDAD</th>
                                            <th class="text-center">DETALLES</th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="text-center"><a href="" data-toggle="modal" data-target="#myModal1"><i class="fas fa-plus text-dark text-warning"></i></a></td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                </div>
            </div>
        </div>
    </div>
    

</div>

  
<!-- MODAL NEW PQRS-->
<div class="modal" id="myModal2">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Registrar PQR's</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-5 offset-md-1">
                        <div class="form-group">
                            <label for="">Obra</label>
                            <select name="" id="" class="form-control">
                                <option value="">- Seleccione una obra -</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="">Nombre</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group">
                                <label for="">Tipo PQR's</label>
                                <select name="" id="" class="form-control">
                                    <option value="">- Seleccione un tipo -</option>
                                </select>
                            </div>
                        <div class="form-group">
                            <label for="">Descripcion</label>
                            <textarea name="" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="">Correo</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="">Fecha</label>
                            <input type="date" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="">Archivos</label>
                            <input type="file" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="">Entidad</label>
                            <select name="" id="" class="form-control">
                                <option value="">- Seleccione una entidad -</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
            </div>

        </div>
    </div>
</div>

<!-- MODAL DESTALLES-->
<div class="modal" id="myModal1">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Detalles PQR's</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-10 offset-md-1">
                        <div class="form-group">
                            <label for="">Obra: </label><br>
                            <label for="">Tipo PQR's: </label><br>
                            <label for="">Descripcion: </label><br>
                            <label for="">Correo: </label><br>
                            <label for="">Fecha: </label><br>
                            <label for="">Entidad: </label><br>
                            <label for="">Archivos adjuntos: </label><br>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
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
                pqrs: [],
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
                axios.get(`${URL_PATH}pqrs?token=${TOKEN}`)
                    .then(async r => this.pqrs = await r.data);
            }
        }

    });
</script>

@endsection

