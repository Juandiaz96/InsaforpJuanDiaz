<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Editar Municipio</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="update">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="municipio.nombre">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>ID Departamento</label>
                                    <input type="text" class="form-control" v-model="municipio.departamento_id">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Estado</label>
                                    <input type="text" class="form-control" v-model="municipio.estado">
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
    name:"update-municipio",
    data(){
        return {
            municipio:{
                nombre:"",
                departamento_id:"",
                _method:"patch"
            }
        }
    },
    mounted(){
        this.showMunicipio()
    },
    methods:{
        async showMunicipio(){
            await this.axios.get(`/api/municipio/${this.$route.params.id}`).then(response=>{
                const { nombre,departamento_id,estado } = response.data
                this.municipio.nombre = nombre
                this.municipio.departamento_id = departamento_id
                this.municipio.estado = estado
            }).catch(error=>{
                console.log(error)
            })
        },
        async update(){
            await this.axios.post(`/api/municipio/${this.$route.params.id}`,this.municipio).then(response=>{
                this.$router.push({name:"municipioList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>