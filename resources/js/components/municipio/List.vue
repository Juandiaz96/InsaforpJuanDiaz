<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"municipioAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Municipios</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>ID Departamento</th>
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="municipios.length > 0">
                                <tr v-for="(municipio,key) in municipios" :key="key">
                                    <td>{{ municipio.id }}</td>
                                    <td>{{ municipio.nombre }}</td>
                                    <td>{{ municipio.departamento_id }}</td>
                                    <td>{{ municipio.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"municipioEdit",params:{id:municipio.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteMunicipio(municipio.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay municipios registrados.</td>
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
    name:"municipios",
    data(){
        return {
            municipios:[]
        }
    },
    mounted(){
        this.getMunicipios()
    },
    methods:{
        async getMunicipios(){
            await this.axios.get('/api/municipio').then(response=>{
                this.municipios = response.data
            }).catch(error=>{
                console.log(error)
                this.municipios = []
            })
        },
        deleteMunicipio(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/municipio/${id}`).then(response=>{
                    this.getMunicipios()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>