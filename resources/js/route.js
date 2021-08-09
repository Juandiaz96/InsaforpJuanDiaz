const Welcome = () => import('./views/Welcome.vue' /* webpackChunkName: "resource/js/components/welcome" */)
/*Routes tmEvento*/
const eventoList = () => import('./views/tmEvento/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const eventoCreate = () => import('./views/tmEvento/Create.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const eventoEdit = () => import('./views/tmEvento/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcFacilitador*/
const facilitadorList = () => import('./views/tcFacilitador/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const facilitadorCreate = () => import('./views/tcFacilitador/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const facilitadorEdit = () => import('./views/tcFacilitador/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcModalidad*/
const modalidadList = () => import('./views/tcModalidad/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const modalidadCreate = () => import('./views/tcModalidad/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const modalidadEdit = () => import('./views/tcModalidad/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcPrograma*/
const programaList = () => import('./views/tcPrograma/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const programaCreate = () => import('./views/tcPrograma/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const programaEdit = () => import('./views/tcPrograma/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcTipoCosto*/
const tipoCostoList = () => import('./views/tcTipoCosto/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const tipoCostoCreate = () => import('./views/tcTipoCosto/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const tipoCostoEdit = () => import('./views/tcTipoCosto/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcDepartamento*/
const departamentoList = () => import('./views/tcDepartamento/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const departamentoCreate = () => import('./views/tcDepartamento/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const departamentoEdit = () => import('./views/tcDepartamento/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcMunicipio*/
const municipioList = () => import('./views/tcMunicipio/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const municipioCreate = () => import('./views/tcMunicipio/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const municipioEdit = () => import('./views/tcMunicipio/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)
/*Routes tcZona*/
const zonaList = () => import('./views/tcZona/List.vue' /* webpackChunkName: "resource/js/components/category/list" */)
const zonaCreate = () => import('./views/tcZona/Add.vue' /* webpackChunkName: "resource/js/components/category/add" */)
const zonaEdit = () => import('./views/tcZona/Edit.vue' /* webpackChunkName: "resource/js/components/category/edit" */)

export const routes = [
    {
        name: 'home',
        path: '/',
        component: Welcome
    },
    {
        name: 'eventoList',
        path: '/tmEvento',
        component: eventoList
    },
    {
        name: 'eventoEdit',
        path: '/tmEvento/:id/edit',
        component: eventoEdit
    },
    {
        name: 'eventoAdd',
        path: '/tmEvento/create',
        component: eventoCreate
    },

    {
        name: 'facilitadorList',
        path: '/tmFacilitador',
        component: facilitadorList
    },
    {
        name: 'facilitadorEdit',
        path: '/tmFacilitador/:id/edit',
        component: facilitadorEdit
    },
    {
        name: 'facilitadorAdd',
        path: '/tmFacilitador/add',
        component: facilitadorCreate
    },

    {
        name: 'modalidadList',
        path: '/tmModalidad',
        component: modalidadList
    },
    {
        name: 'modalidadEdit',
        path: '/tmModalidad/:id/edit',
        component: modalidadEdit
    },
    {
        name: 'modalidadAdd',
        path: '/tmModalidad/add',
        component: modalidadCreate
    },

    {
        name: 'programaList',
        path: '/tmPrograma',
        component: programaList
    },
    {
        name: 'programaEdit',
        path: '/tmPrograma/:id/edit',
        component: programaEdit
    },
    {
        name: 'programaAdd',
        path: '/tmPrograma/add',
        component: programaCreate
    },

    {
        name: 'tipoCostoList',
        path: '/tmTipoCosto',
        component: tipoCostoList
    },
    {
        name: 'tipoCostoEdit',
        path: '/tmTipoCosto/:id/edit',
        component: tipoCostoEdit
    },
    {
        name: 'tipoCostoAdd',
        path: '/tmTipoCosto/add',
        component: tipoCostoCreate
    },

    {
        name: 'departamentoList',
        path: '/tmDepartamento',
        component: departamentoList
    },
    {
        name: 'departamentoEdit',
        path: '/tmDepartamento/:id/edit',
        component: departamentoEdit
    },
    {
        name: 'departamentoAdd',
        path: '/tmDepartamento/add',
        component: departamentoCreate
    },

    {
        name: 'municipioList',
        path: '/tmMunicipio',
        component: municipioList
    },
    {
        name: 'municipioEdit',
        path: '/tmMunicipio/:id/edit',
        component: municipioEdit
    },
    {
        name: 'municipioAdd',
        path: '/tmMunicipio/add',
        component: municipioCreate
    },

    {
        name: 'zonaList',
        path: '/tmZona',
        component: zonaList
    },
    {
        name: 'zonaEdit',
        path: '/tmZona/:id/edit',
        component: zonaEdit
    },
    {
        name: 'zonaAdd',
        path: '/tmZona/add',
        component: zonaCreate
    }
]