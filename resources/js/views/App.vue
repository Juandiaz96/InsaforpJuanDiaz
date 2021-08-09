<template>
    <main>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <router-link to="/" class="navbar-brand" href="#">Control de Eventos del Centro de Formaci&oacute;n</router-link>
                <div class="collapse navbar-collapse">
                    <div class="navbar-nav">
                        <router-link exact-active-class="active" to="/" class="nav-item nav-link">Home</router-link>
                        <router-link exact-active-class="active" to="/tmEvento" class="nav-item nav-link">Eventos</router-link>
                        <router-link exact-active-class="active" to="/tcFacilitador" class="nav-item nav-link">Facilitadores</router-link>
                        <router-link exact-active-class="active" to="/tcModalidad" class="nav-item nav-link">Modalidades</router-link>
                        <router-link exact-active-class="active" to="/tcPrograma" class="nav-item nav-link">Programas</router-link>
                        <router-link exact-active-class="active" to="/tcTipoCosto" class="nav-item nav-link">Tipo de Costos</router-link>
                        <router-link exact-active-class="active" to="/tcDepartamento" class="nav-item nav-link">Departamentos</router-link>
                        <router-link exact-active-class="active" to="/tcMunicipio" class="nav-item nav-link">Municipios</router-link>
                        <router-link exact-active-class="active" to="/tcZona" class="nav-item nav-link">Zonas Departamentales</router-link>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container mt-5">
            <router-view></router-view>
        </div>
    </main>
</template>
 
<script>
    export default {}
</script>