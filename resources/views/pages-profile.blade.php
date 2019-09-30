@extends('layouts.app')
@section('content')



<div class="container-fluid" id="porfile">

    <div class="row page-titles">
        <div class="col-md-5 col-8 align-self-center">
            <h3 class="text-themecolor m-b-0 m-t-0">Profile</h3>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">Profile</li>
            </ol>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-4 col-xlg-3 col-md-5">
            <div class="card">
                <div class="card-block">
                    <center class="m-t-30"> <img src="{{ asset('assets/images/users/5.jpg')}}" class="img-circle" width="150" />
                        <h4 class="card-title m-t-10">Kevin</h4>
                    </center>
                </div>
            </div>
        </div>

        <div class="col-lg-8 col-xlg-9 col-md-7">
            <div class="card">
                <div class="card-block">
                    <form class="form-horizontal form-material">
                        <div class="form-group">
                            <label class="col-md-12">Nombre Completo</label>
                            <div class="col-md-12">
                                <input value="Kevin Galindo" type="text" class="form-control form-control-line">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="example-email" class="col-md-12">Correo Electronico</label>
                            <div class="col-md-12">
                                <input value="galindok829@gmail.com" type="email" class="form-control form-control-line" name="example-email" id="example-email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12">Contraseña</label>
                            <div class="col-md-12">
                                <input value="............" type="password" class="form-control form-control-line">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-12">Telefono</label>
                            <div class="col-md-12">
                                <input type="text" value="30538778644"  class="form-control form-control-line">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-12">Ciudad</label>
                            <div class="col-sm-12">
                                <select class="form-control form-control-line">
                                    <option v-for="item in listCountry" v-text="item.name"></option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <button class="btn btn-success">Actualizar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<footer class="footer">
    © 2017 Material Pro Admin by wrappixel.com
</footer>


<script>
new Vue({
    el: '#porfile',
    data: {
      urlApi: 'http://localhost/hackatrix/public/api/v1',
      list: [],
      token: 'T9SJVTzAdZ96ZeVTQ56X59kyyYf41oWMdZbeBdX0eCG7yqBOGpicCys8k7wZKf3WE5BqndbFoCxloK3T8cY3FVyMxQbqTrC5mc0n1909',
      listCountry: []
    },  
    methods: {
        get(){
            axios.get('users')
            .then(response =>{
                // handle success
                console.log(response);
                this.list = response.data;
            })
            .catch(error => {
                // handle error
                console.log(error);
            });
        },
        getCountry(){
            axios.get(this.urlApi+'/countries?token='+this.token)
            .then(response =>{
                // handle success
                console.log(response);
                this.listCountry = response.data;
            })
            .catch(error => {
                // handle error
                console.log(error);
            });
        }
    },
    mounted(){
      this.getCountry();
    },
    computed: {
  
    },
});


</script>

@endsection
