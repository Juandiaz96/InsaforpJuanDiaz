<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"programaAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Programas</h4>
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
                            <tbody v-if="programas.length > 0">
                                <tr v-for="(programa,key) in programas" :key="key">
                                    <td>{{ programa.id }}</td>
                                    <td>{{ programa.nombre }}</td>
                                    <td>{{ programa.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"programaEdit",params:{id:programa.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deletePrograma(programa.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay programas registrados.</td>
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
    name:"programas",
    data(){
        return {
            programas:[]
        }
    },
    mounted(){
        this.getProgramas()
    },
    methods:{
        async getProgramas(){
            await this.axios.get('/api/programa').then(response=>{
                this.programas = response.data
            }).catch(error=>{
                console.log(error)
                this.programas = []
            })
        },
        deletePrograma(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/programa/${id}`).then(response=>{
                    this.getProgramas()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>