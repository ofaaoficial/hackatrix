new Vue({
    el: '#user',
    data: {
      urlApi: 'https://jsonplaceholder.typicode.com',
      list: [],
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
      }
    },
    mounted(){
      this.get();
    },
    computed: {
  
    },
});
  