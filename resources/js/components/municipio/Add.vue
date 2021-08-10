<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Nuevo Municipio</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="create">
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
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Guardar</button>
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
    name:"add-municipio",
    data(){
        return {
            municipio:{
                nombre:"",
                departamento_id:""
            }
        }
    },
    methods:{
        async create(){
            await this.axios.post('/api/municipio',this.municipio).then(response=>{
                this.$router.push({name:"municipioList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>