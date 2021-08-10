const Welcome = () => import('./components/Welcome.vue' /* webpackChunkName: "resource/js/components/welcome" */)
/*Routes tmEvento*/
const eventoList = () => import('./components/tmEvento/List.vue' /* webpackChunkName: "resource/js/components/tmEvento/list" */)
const eventoCreate = () => import('./components/tmEvento/Create.vue' /* webpackChunkName: "resource/js/components/tmEvento/Create" */)
const eventoEdit = () => import('./components/tmEvento/Edit.vue' /* webpackChunkName: "resource/js/components/tmEvento/Edit" */)
/*Routes tcFacilitador*/
const facilitadorList = () => import('./components/tcFacilitador/List.vue' /* webpackChunkName: "resource/js/components/tcFacilitador/list" */)
const facilitadorCreate = () => import('./components/tcFacilitador/Create.vue' /* webpackChunkName: "resource/js/components/tcFacilitador/Create" */)
const facilitadorEdit = () => import('./components/tcFacilitador/Edit.vue' /* webpackChunkName: "resource/js/components/tcFacilitador/Edit" */)
/*Routes tcModalidad*/
const modalidadList = () => import('./components/tcModalidad/List.vue' /* webpackChunkName: "resource/js/components/tcModalidad/list" */)
const modalidadCreate = () => import('./components/tcModalidad/Create.vue' /* webpackChunkName: "resource/js/components/tcModalidad/Create" */)
const modalidadEdit = () => import('./components/tcModalidad/Edit.vue' /* webpackChunkName: "resource/js/components/tcModalidad/Edit" */)
/*Routes tcPrograma*/
const programaList = () => import('./components/tcPrograma/List.vue' /* webpackChunkName: "resource/js/components/tcPrograma/list" */)
const programaCreate = () => import('./components/tcPrograma/Create.vue' /* webpackChunkName: "resource/js/components/tcPrograma/Create" */)
const programaEdit = () => import('./components/tcPrograma/Edit.vue' /* webpackChunkName: "resource/js/components/tcPrograma/Edit" */)
/*Routes tcTipoCosto*/
const tipoCostoList = () => import('./components/tcTipoCosto/List.vue' /* webpackChunkName: "resource/js/components/tcTipoCosto/list" */)
const tipoCostoCreate = () => import('./components/tcTipoCosto/Create.vue' /* webpackChunkName: "resource/js/components/tcTipoCosto/Create" */)
const tipoCostoEdit = () => import('./components/tcTipoCosto/Edit.vue' /* webpackChunkName: "resource/js/components/tcTipoCosto/Edit" */)
/*Routes tcDepartamento*/
const departamentoList = () => import('./components/tcDepartamento/List.vue' /* webpackChunkName: "resource/js/components/tcDepartamento/list" */)
const departamentoCreate = () => import('./components/tcDepartamento/Create.vue' /* webpackChunkName: "resource/js/components/tcDepartamento/Create" */)
const departamentoEdit = () => import('./components/tcDepartamento/Edit.vue' /* webpackChunkName: "resource/js/components/tcDepartamento/Edit" */)
/*Routes tcMunicipio*/
const municipioList = () => import('./components/tcMunicipio/List.vue' /* webpackChunkName: "resource/js/components/tcMunicipio/list" */)
const municipioCreate = () => import('./components/tcMunicipio/Create.vue' /* webpackChunkName: "resource/js/components/tcMunicipio/Create" */)
const municipioEdit = () => import('./components/tcMunicipio/Edit.vue' /* webpackChunkName: "resource/js/components/tcMunicipio/Edit" */)
/*Routes tcZona*/
const zonaList = () => import('./components/tcZona/List.vue' /* webpackChunkName: "resource/js/components/tcZona/list" */)
const zonaCreate = () => import('./components/tcZona/Create.vue' /* webpackChunkName: "resource/js/components/tcZona/Create" */)
const zonaEdit = () => import('./components/tcZona/Edit.vue' /* webpackChunkName: "resource/js/components/tcZona/Edit" */)

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
        name: 'eventoCreate',
        path: '/tmEvento/create',
        component: eventoCreate
    },

    {
        name: 'facilitadorList',
        path: '/tcFacilitador',
        component: facilitadorList
    },
    {
        name: 'facilitadorEdit',
        path: '/tcFacilitador/:id/edit',
        component: facilitadorEdit
    },
    {
        name: 'facilitadorCreate',
        path: '/tcFacilitador/create',
        component: facilitadorCreate
    },

    {
        name: 'modalidadList',
        path: '/tcModalidad',
        component: modalidadList
    },
    {
        name: 'modalidadEdit',
        path: '/tcModalidad/:id/edit',
        component: modalidadEdit
    },
    {
        name: 'modalidadCreate',
        path: '/tcModalidad/create',
        component: modalidadCreate
    },

    {
        name: 'programaList',
        path: '/tcPrograma',
        component: programaList
    },
    {
        name: 'programaEdit',
        path: '/tcPrograma/:id/edit',
        component: programaEdit
    },
    {
        name: 'programaCreate',
        path: '/tcPrograma/create',
        component: programaCreate
    },

    {
        name: 'tipoCostoList',
        path: '/tcTipoCosto',
        component: tipoCostoList
    },
    {
        name: 'tipoCostoEdit',
        path: '/tcTipoCosto/:id/edit',
        component: tipoCostoEdit
    },
    {
        name: 'tipoCostoCreate',
        path: '/tcTipoCosto/create',
        component: tipoCostoCreate
    },

    {
        name: 'departamentoList',
        path: '/tcDepartamento',
        component: departamentoList
    },
    {
        name: 'departamentoEdit',
        path: '/tcDepartamento/:id/edit',
        component: departamentoEdit
    },
    {
        name: 'departamentoCreate',
        path: '/tcDepartamento/create',
        component: departamentoCreate
    },

    {
        name: 'municipioList',
        path: '/tcMunicipio',
        component: municipioList
    },
    {
        name: 'municipioEdit',
        path: '/tcMunicipio/:id/edit',
        component: municipioEdit
    },
    {
        name: 'municipioCreate',
        path: '/tcMunicipio/create',
        component: municipioCreate
    },

    {
        name: 'zonaList',
        path: '/tcZona',
        component: zonaList
    },
    {
        name: 'zonaEdit',
        path: '/tcZona/:id/edit',
        component: zonaEdit
    },
    {
        name: 'zonaCreate',
        path: '/tcZona/create',
        component: zonaCreate
    }
]