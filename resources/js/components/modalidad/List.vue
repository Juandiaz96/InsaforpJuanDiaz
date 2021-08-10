<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"facilitadorAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Facilitadores</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo</th>
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="facilitadores.length > 0">
                                <tr v-for="(facilitador,key) in facilitadores" :key="key">
                                    <td>{{ facilitador.id }}</td>
                                    <td>{{ facilitador.nombre }}</td>
                                    <td>{{ facilitador.apellido }}</td>
                                    <td>{{ facilitador.correo }}</td>
                                    <td>{{ facilitador.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"facilitadorEdit",params:{id:facilitador.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteFacilitador(facilitador.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay facilitadores registrados.</td>
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
    name:"facilitadores",
    data(){
        return {
            facilitadores:[]
        }
    },
    mounted(){
        this.getFacilitadores()
    },
    methods:{
        async getFacilitadores(){
            await this.axios.get('/api/facilitador').then(response=>{
                this.facilitadores = response.data
            }).catch(error=>{
                console.log(error)
                this.facilitadores = []
            })
        },
        deleteFacilitador(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/facilitador/${id}`).then(response=>{
                    this.getFacilitadores()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>