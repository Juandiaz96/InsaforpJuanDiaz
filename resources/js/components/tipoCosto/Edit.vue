<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Editar Tipo de Costo</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="update">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="tipoCosto.nombre">
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">Actualizar</button>
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
    name:"update-tipoCosto",
    data(){
        return {
            tipoCosto:{
                nombre:"",
                _method:"patch"
            }
        }
    },
    mounted(){
        this.showTipoCosto()
    },
    methods:{
        async showTipoCosto(){
            await this.axios.get(`/api/tipoCosto/${this.$route.params.id}`).then(response=>{
                const { nombre } = response.data
                this.tipoCosto.nombre = nombre
            }).catch(error=>{
                console.log(error)
            })
        },
        async update(){
            await this.axios.post(`/api/tipoCosto/${this.$route.params.id}`,this.tipoCosto).then(response=>{
                this.$router.push({name:"tipoCostoList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>