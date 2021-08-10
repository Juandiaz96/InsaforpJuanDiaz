<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"departamentoAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Departamentos</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Código</th>
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="departamentos.length > 0">
                                <tr v-for="(departamento,key) in departamentos" :key="key">
                                    <td>{{ departamento.id }}</td>
                                    <td>{{ departamento.nombre }}</td>
                                    <td>{{ departamento.ISOcode }}</td>
                                    <td>{{ departamento.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"departamentoEdit",params:{id:departamento.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteDepartamento(departamento.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay departamentos registrados.</td>
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
    name:"departamentos",
    data(){
        return {
            departamentos:[]
        }
    },
    mounted(){
        this.getDepartamentos()
    },
    methods:{
        async getDepartamentos(){
            await this.axios.get('/api/departamento').then(response=>{
                this.departamentos = response.data
            }).catch(error=>{
                console.log(error)
                this.departamentos = []
            })
        },
        deleteDepartamento(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/departamento/${id}`).then(response=>{
                    this.getDepartamentos()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>