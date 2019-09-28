@extends('layouts.app')
@section('content')
    <!-- MODAL NEW OBRA-->
    <div class="modal" id="myModal">
        <div class="modal-dialog modal-lg">
            <div class="modal-content ">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Registrar nueva obra</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-5 offset-md-1">
                            <div class="form-group">
                                <label for="">Tipo de Obra</label>
                                <select name="" id="" class="form-control">
                                    <option value="">- Seleccione un tipo -</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Nombre</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Objetivo</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Fecha de inicio</label>
                                <input type="date" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Fecha fin</label>
                                <input type="date" class="form-control">
                            </div>

                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <label for="">Ciudad</label>
                                <select name="" id="" class="form-control">
                                    <option value="">- Seleccione una ciudad -</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Localidad</label>
                                <select name="" id="" class="form-control">
                                    <option value="">- Seleccione una localidad -</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="">Coordenadas</label>
                                <input type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Fondos asignados</label>
                                <input type="number" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="">Observaciones</label>
                                <textarea name="" class="form-control"></textarea>
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
    <!-- MODAL QR-->
    <div class="modal" id="myModal2">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Codigo QR</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="row">

                    </div>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
                </div>

            </div>
        </div>
    </div>

    <div class="container-fluid">

        <div class="row page-titles">
            <div class="col-md-5 col-8 align-self-center">
                <h3 class="text-themecolor m-b-0 m-t-0">Escritorio</h3>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Inicio</a></li>
                    <li class="breadcrumb-item active">Obras actuales</li>
                </ol>
            </div>
            <div class="col-md-7 col-4 align-self-center">
                <a href="https://wrappixel.com/templates/materialpro/"
                   class="btn waves-effect waves-light btn-info pull-right hidden-sm-down" data-toggle="modal"
                   data-target="#myModal"><i class="fas fa-plus"></i> Crear nueva obra </a>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-block">
                        <table class="table table-sm table-bordered">
                            <tr>
                                <th class="text-center">NOMBRE</th>
                                <th class="text-center">CIUDAD</th>
                                <th class="text-center">COSTO DE LA OBRA</th>
                                <th class="text-center">OBSERVACIONES</th>
                                <th class="text-center">OBJETIVO</th>
                                <th class="text-center">INICIO</th>
                                <th class="text-center">ESTIMADO</th>
                                <th class="text-center">ESTADO</th>
                                <th class="text-center">PQRS</th>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="text-center"><a href="" data-toggle="modal" data-target="#myModal2"><i
                                                class="fas fa-qrcode text-dark"></i></a></td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>

@endsection