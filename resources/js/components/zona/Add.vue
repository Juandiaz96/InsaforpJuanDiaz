<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Nueva Zona</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="create">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="zona.nombre">
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
    name:"add-zona",
    data(){
        return {
            zona:{
                nombre:""
            }
        }
    },
    methods:{
        async create(){
            await this.axios.post('/api/zona',this.zona).then(response=>{
                this.$router.push({name:"zonaList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>