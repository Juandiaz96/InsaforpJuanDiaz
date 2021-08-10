<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"zonaAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Zonas</h4>
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
                            <tbody v-if="zonas.length > 0">
                                <tr v-for="(zona,key) in zonas" :key="key">
                                    <td>{{ zona.id }}</td>
                                    <td>{{ zona.nombre }}</td>
                                    <td>{{ zona.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"zonaEdit",params:{id:zona.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteZona(zona.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay >onas registradas.</td>
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
    name:"zonas",
    data(){
        return {
            zonas:[]
        }
    },
    mounted(){
        this.getZonas()
    },
    methods:{
        async getZonas(){
            await this.axios.get('/api/zona').then(response=>{
                this.zonas = response.data
            }).catch(error=>{
                console.log(error)
                this.zonas = []
            })
        },
        deleteZona(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/zona/${id}`).then(response=>{
                    this.getZonas()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>