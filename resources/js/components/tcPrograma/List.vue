<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"facilitadorCreate"}' class="btn btn-primary">Crear</router-link>
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
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Correo</th>
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="facilitador.length > 0">
                                <tr v-for="(facilitador,key) in facilitador" :key="key">
                                    <td>{{ facilitador.id }}</td>
                                    <td>{{ facilitador.nombre }}</td>
                                    <td>{{ facilitador.apellido }}</td>
                                    <td>{{ facilitador.correo }}</td>
                                    <td>{{ facilitador.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>                                    
                                    <td>
                                        <router-link :to='{name:"facilitadorEdit",params:{id:facilitador.id}}' class="btn btn-success">Editar Registro</router-link>
                                        <button type="button" @click="deleteFacilitador(facilitador.id)" class="btn btn-danger">Eliminar Registro</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="4" align="center">No existen Facilitadores registrados.</td>
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
    name:"facilitador",
    data(){
        return {
            facilitador:[]
        }
    },
    mounted(){
        this.getFacilitador()
    },
    methods:{
        async getFacilitador(){
            await this.axios.get('/api/facilitador').then(response=>{
                this.facilitador = response.data
            }).catch(error=>{
                console.log(error)
                this.facilitador = []
            })
        },
        deleteFacilitador(id){
            if(confirm("Desea eliminar el registro?")){
                this.axios.delete(`/api/facilitador/${id}`).then(response=>{
                    this.getFacilitador()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>