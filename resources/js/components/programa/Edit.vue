<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Editar Programa</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="update">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="programa.nombre">
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
    name:"update-programa",
    data(){
        return {
            programa:{
                nombre:"",
                _method:"patch"
            }
        }
    },
    mounted(){
        this.showPrograma()
    },
    methods:{
        async showPrograma(){
            await this.axios.get(`/api/programa/${this.$route.params.id}`).then(response=>{
                const { nombre } = response.data
                this.programa.nombre = nombre
            }).catch(error=>{
                console.log(error)
            })
        },
        async update(){
            await this.axios.post(`/api/programa/${this.$route.params.id}`,this.programa).then(response=>{
                this.$router.push({name:"programaList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>