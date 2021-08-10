<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Registrar Facilitador</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="create">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="facilitador.nombre">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Apellidos</label>
                                    <input type="text" class="form-control" v-model="facilitador.apellido">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Correo</label>
                                    <input type="text" class="form-control" v-model="facilitador.correo">
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
    name:"create-facilitador",
    data(){
        return {
            facilitador:{
                nombre:"",
                apellido:"",
                correo:""
            }
        }
    },
    methods:{
        async create(){
            await this.axios.post('/api/facilitador',this.facilitador).then(response=>{
                this.$router.push({name:"facilitadorList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>