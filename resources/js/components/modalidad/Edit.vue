<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Editar Modalidad</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="update">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="modalidad.nombre">
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
    name:"update-modalidad",
    data(){
        return {
            modalidad:{
                nombre:"",
                _method:"patch"
            }
        }
    },
    mounted(){
        this.showModalidad()
    },
    methods:{
        async showModalidad(){
            await this.axios.get(`/api/modalidad/${this.$route.params.id}`).then(response=>{
                const { nombre } = response.data
                this.modalidad.nombre = nombre
            }).catch(error=>{
                console.log(error)
            })
        },
        async update(){
            await this.axios.post(`/api/modalidad/${this.$route.params.id}`,this.modalidad).then(response=>{
                this.$router.push({name:"modalidadList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>