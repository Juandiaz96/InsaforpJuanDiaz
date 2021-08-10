<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"tipoCostoAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Tipos de Costos</h4>
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
                            <tbody v-if="tipoCostos.length > 0">
                                <tr v-for="(tipoCosto,key) in tipoCostos" :key="key">
                                    <td>{{ tipoCosto.id }}</td>
                                    <td>{{ tipoCosto.nombre }}</td>
                                    <td>{{ tipoCosto.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"tipoCostoEdit",params:{id:tipoCosto.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteTipoCosto(tipoCosto.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay Tipo de Costos registrados.</td>
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
    name:"tipoCostos",
    data(){
        return {
            tipoCostos:[]
        }
    },
    mounted(){
        this.getTipoCostos()
    },
    methods:{
        async getTipoCostos(){
            await this.axios.get('/api/tipoCosto').then(response=>{
                this.tipoCostos = response.data
            }).catch(error=>{
                console.log(error)
                this.tipoCostos = []
            })
        },
        deleteTipoCosto(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/tipoCosto/${id}`).then(response=>{
                    this.getTipoCostos()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>