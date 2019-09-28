new Vue({
    el: '#post',
    data: {
      urlApi: 'https://jsonplaceholder.typicode.com',
      list: [],
    },  
    methods: {
        get(){
            axios.get(this.urlApi+'/posts/')
            .then(response =>{
                // handle success
                console.log(response);
                this.list = response.data;
            })
            .catch(error => {
                // handle error
                console.log(error);
            });
        }
    },
    mounted(){
      this.get();
    },
    computed: {
  
    },
  })
  