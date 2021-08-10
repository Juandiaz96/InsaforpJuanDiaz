<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"modalidadAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Modalidades</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="modalidades.length > 0">
                                <tr v-for="(modalidad,key) in modalidades" :key="key">
                                    <td>{{ modalidad.id }}</td>
                                    <td>{{ modalidad.nombre }}</td>
                                    <td>{{ modalidad.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"modalidadEdit",params:{id:modalidad.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteModalidad(modalidad.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay modalidades registrados.</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name:"modalidades",
    data(){
        return {
            modalidades:[]
        }
    },
    mounted(){
        this.getModalidades()
    },
    methods:{
        async getModalidades(){
            await this.axios.get('/api/modalidad').then(response=>{
                this.modalidades = response.data
            }).catch(error=>{
                console.log(error)
                this.modalidades = []
            })
        },
        deleteModalidad(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/modalidad/${id}`).then(response=>{
                    this.getModalidades()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>