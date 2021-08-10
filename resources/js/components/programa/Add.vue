<template>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4>Nuevo Programa</h4>
                </div>
                <div class="card-body">
                    <form @submit.prevent="create">
                        <div class="row">
                            <div class="col-12 mb-2">
                                <div class="form-group">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" v-model="programa.nombre">
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
    name:"add-programa",
    data(){
        return {
            programa:{
                nombre:""
            }
        }
    },
    methods:{
        async create(){
            await this.axios.post('/api/programa',this.programa).then(response=>{
                this.$router.push({name:"programaList"})
            }).catch(error=>{
                console.log(error)
            })
        }
    }
}
</script>