<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Nuevo Evento</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="create">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="evento.nombre">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Descripci&oacute;n</label>
                                    <input type="text" class="form-control" v-model="evento.descripcion">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Fecha Inicio</label>
                                    <input type="date" class="form-control" v-model="evento.fecha_inicio">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Fecha Fin</label>
                                    <input type="date" class="form-control" v-model="evento.fecha_fin">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Ubicaci&oacute;n</label>
                                    <input type="text" class="form-control" v-model="evento.ubicacion">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Id Departamento</label>
                                    <input type="text" class="form-control" v-model="evento.departamento_id">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Id Municipio</label>
                                    <input type="text" class="form-control" v-model="evento.municipio_id">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Horas Curso</label>
                                    <input type="text" class="form-control" v-model="evento.horas_curso">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Id Modalidad</label>
                                    <input type="text" class="form-control" v-model="evento.modalidad_id">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Id Tipo Costo</label>
                                    <input type="text" class="form-control" v-model="evento.tipo_costo_id">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Costo</label>
                                    <input type="text" class="form-control" v-model="evento.costo">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Participantes</label>
                                    <input type="text" class="form-control" v-model="evento.participantes">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Cantidad Evaluaciones</label>
                                    <input type="text" class="form-control" v-model="evento.cantidad_evaluaciones">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Contrato</label>
                                    <input type="text" class="form-control" v-model="evento.contrato">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Núm Orden de Compra</label>
                                    <input type="text" class="form-control" v-model="evento.numero_orden_compra">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Núm de Compra Bolsa</label>
                                    <input type="text" class="form-control" v-model="evento.compra_bolsa">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Item</label>
                                    <input type="text" class="form-control" v-model="evento.item">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Id Programa</label>
                                    <input type="text" class="form-control" v-model="evento.programa_id">
                                </div>
                            </div>
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Id Facilitador</label>
                                    <input type="text" class="form-control" v-model="evento.facilitador_id">
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Guardar</button>
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
    name:"add-evento",
    data(){
        return {
            evento:{
                nombre:"",
                descripcion:"",
                fecha_inicio:"",
                fecha_fin:"",
                ubicacion:"",
                departamento_id:"",
                municipio_id:"",
                horas_curso:"",
                modalidad_id:"",
                tipo_costo_id:"",
                costo:"",
                participantes:"",
                cantidad_evaluaciones:"",
                contrato:"",
                numero_orden_compra:"",
                compra_bolsa:"",
                item:"",
                programa_id:"",
                facilitador_id:""
            }
        }
    },
    methods:{
        async create(){
            await this.axios.post('/api/evento',this.evento).then(response=>{
                this.$router.push({name:"eventoList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>