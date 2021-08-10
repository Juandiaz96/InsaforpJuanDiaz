<template>
    <div class="row">
        <div class="col-12 mb-2 text-end">
            <router-link :to='{name:"eventoAdd"}' class="btn btn-primary">Nuevo</router-link>
        </div>
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Listado de Eventos</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombre</th>
                                    <th>Descripcion</th>
                                    <th>Inicio</th>
                                    <th>Fin</th>
                                    <th>Ubicaci&oacute;n</th>
                                    <th>Id Departamento</th>
                                    <th>Id Municipio</th>
                                    <th>Horas Curso</th>
                                    <th>Id Modalidad</th>
                                    <th>Id Tipo Costo</th>
                                    <th>Costo</th>
                                    <th>Participantes</th>
                                    <th>Cant. Eval.</th>
                                    <th>Contrato</th>
                                    <th># Orden Compra</th>
                                    <th># Compra Bolsa</th>
                                    <th># Item</th>
                                    <th>Id Programa</th>
                                    <th>Id Facilitador</th>
                                    <th>Estado</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody v-if="eventos.length > 0">
                                <tr v-for="(evento,key) in eventos" :key="key">
                                    <td>{{ evento.id }}</td>
                                    <td>{{ evento.nombre }}</td>
                                    <td>{{ evento.descripcion }}</td>
                                    <td>{{ evento.fecha_inicio }}</td>
                                    <td>{{ evento.fecha_fin }}</td>
                                    <td>{{ evento.ubicacion }}</td>
                                    <td>{{ evento.departamento_id }}</td>
                                    <td>{{ evento.municipio_id }}</td>
                                    <td>{{ evento.horas_curso }}</td>
                                    <td>{{ evento.modalidad_id }}</td>
                                    <td>{{ evento.tipo_costo_id }}</td>
                                    <td>{{ evento.costo }}</td>
                                    <td>{{ evento.participantes }}</td>
                                    <td>{{ evento.cantidad_evaluaciones }}</td>
                                    <td>{{ evento.contrato }}</td>
                                    <td>{{ evento.numero_orden_compra }}</td>
                                    <td>{{ evento.compra_bolsa }}</td>
                                    <td>{{ evento.item }}</td>
                                    <td>{{ evento.programa_id }}</td>
                                    <td>{{ evento.facilitador_id }}</td>
                                    <td>{{ evento.estado == 1  ? 'ACTIVO' : 'INACTIVO' }}</td>
                                    <td>
                                        <router-link :to='{name:"eventoEdit",params:{id:evento.id}}' class="btn btn-success">Editar</router-link>
                                        <button type="button" @click="deleteEvento(evento.id)" class="btn btn-danger">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody v-else>
                                <tr>
                                    <td colspan="6" align="center">No hay eventos registrados.</td>
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
    name:"eventos",
    data(){
        return {
            eventos:[]
        }
    },
    mounted(){
        this.getEventos()
    },
    methods:{
        async getEventos(){
            await this.axios.get('/api/evento').then(response=>{
                this.eventos = response.data
            }).catch(error=>{
                console.log(error)
                this.eventos = []
            })
        },
        deleteEvento(id){
            if(confirm("Está seguro de eliminar el registro?")){
                this.axios.delete(`/api/evento/${id}`).then(response=>{
                    this.getEventos()
                }).catch(error=>{
                    console.log(error)
                })
            }
        }
    }
}
</script>