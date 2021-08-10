<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Editar Departamento</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="update">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="departamento.nombre">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Apellidos</label>
                                    <input type="text" class="form-control" v-model="departamento.ISOcode">
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
    name:"update-departamento",
    data(){
        return {
            departamento:{
                nombre:"",
                apellido:"",
                correo:"",
                _method:"patch"
            }
        }
    },
    mounted(){
        this.showDepartamento()
    },
    methods:{
        async showDepartamento(){
            await this.axios.get(`/api/departamento/${this.$route.params.id}`).then(response=>{
                const { nombre,ISOcode } = response.data
                this.departamento.nombre = nombre
                this.departamento.ISOcode = ISOcode
            }).catch(error=>{
                console.log(error)
            })
        },
        async update(){
            await this.axios.post(`/api/departamento/${this.$route.params.id}`,this.departamento).then(response=>{
                this.$router.push({name:"departamentoList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>