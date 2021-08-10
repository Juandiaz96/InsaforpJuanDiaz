<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Editar Zona</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="update">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="zona.nombre">
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Actualizar</button>
                            </div>
                        </div>                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name:"update-zona",
    data(){
        return {
            zona:{
                nombre:"",
                _method:"patch"
            }
        }
    },
    mounted(){
        this.showZona()
    },
    methods:{
        async showZona(){
            await this.axios.get(`/api/zona/${this.$route.params.id}`).then(response=>{
                const { nombre } = response.data
                this.zona.nombre = nombre
            }).catch(error=>{
                console.log(error)
            })
        },
        async update(){
            await this.axios.post(`/api/zona/${this.$route.params.id}`,this.zona).then(response=>{
                this.$router.push({name:"zonaList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>