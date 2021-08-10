const Welcome = () => import('./components/Welcome.vue' /* webpackChunkName: "resource/js/components/welcome" */)
/*Routes Evento*/
const EventoList = () => import('./components/evento/List.vue' /* webpackChunkName: "resource/js/components/evento/list" */)
const EventoCreate = () => import('./components/evento/Add.vue' /* webpackChunkName: "resource/js/components/evento/add" */)
const EventoEdit = () => import('./components/evento/Edit.vue' /* webpackChunkName: "resource/js/components/evento/edit" */)
/*Routes Facilitador*/
const FacilitadorList = () => import('./components/facilitador/List.vue' /* webpackChunkName: "resource/js/components/facilitador/list" */)
const FacilitadorCreate = () => import('./components/facilitador/Add.vue' /* webpackChunkName: "resource/js/components/facilitador/add" */)
const FacilitadorEdit = () => import('./components/facilitador/Edit.vue' /* webpackChunkName: "resource/js/components/facilitador/edit" */)
/*Routes Modalidad*/
const ModalidadList = () => import('./components/modalidad/List.vue' /* webpackChunkName: "resource/js/components/modalidad/list" */)
const ModalidadCreate = () => import('./components/modalidad/Add.vue' /* webpackChunkName: "resource/js/components/modalidad/add" */)
const ModalidadEdit = () => import('./components/modalidad/Edit.vue' /* webpackChunkName: "resource/js/components/modalidad/edit" */)
/*Routes Programa*/
const ProgramaList = () => import('./components/programa/List.vue' /* webpackChunkName: "resource/js/components/programa/list" */)
const ProgramaCreate = () => import('./components/programa/Add.vue' /* webpackChunkName: "resource/js/components/programa/add" */)
const ProgramaEdit = () => import('./components/programa/Edit.vue' /* webpackChunkName: "resource/js/components/programa/edit" */)
/*Routes TipoCosto*/
const TipoCostoList = () => import('./components/tipoCosto/List.vue' /* webpackChunkName: "resource/js/components/tipoCosto/list" */)
const TipoCostoCreate = () => import('./components/tipoCosto/Add.vue' /* webpackChunkName: "resource/js/components/tipoCosto/add" */)
const TipoCostoEdit = () => import('./components/tipoCosto/Edit.vue' /* webpackChunkName: "resource/js/components/tipoCosto/edit" */)
/*Routes Departamento*/
const DepartamentoList = () => import('./components/departamento/List.vue' /* webpackChunkName: "resource/js/components/departamento/list" */)
const DepartamentoCreate = () => import('./components/departamento/Add.vue' /* webpackChunkName: "resource/js/components/departamento/add" */)
const DepartamentoEdit = () => import('./components/departamento/Edit.vue' /* webpackChunkName: "resource/js/components/departamento/edit" */)
/*Routes Municipio*/
const MunicipioList = () => import('./components/municipio/List.vue' /* webpackChunkName: "resource/js/components/municipio/list" */)
const MunicipioCreate = () => import('./components/municipio/Add.vue' /* webpackChunkName: "resource/js/components/municipio/add" */)
const MunicipioEdit = () => import('./components/municipio/Edit.vue' /* webpackChunkName: "resource/js/components/municipio/edit" */)
/*Routes Zona*/
const ZonaList = () => import('./components/zona/List.vue' /* webpackChunkName: "resource/js/components/zona/list" */)
const ZonaCreate = () => import('./components/zona/Add.vue' /* webpackChunkName: "resource/js/componentz/Zona/add" */)
const ZonaEdit = () => import('./components/zona/Edit.vue' /* webpackChunkName: "resource/js/components/zona/edit" */)

export const routes = [
    {
        name: 'home',
        path: '/',
        component: Welcome
    },

    {
        name: 'eventoList',
        path: '/evento',
        component: EventoList
    },
    {
        name: 'eventoEdit',
        path: '/evento/:id/edit',
        component: EventoEdit
    },
    {
        name: 'eventoAdd',
        path: '/evento/add',
        component: EventoCreate
    },

    {
        name: 'facilitadorList',
        path: '/facilitador',
        component: FacilitadorList
    },
    {
        name: 'facilitadorEdit',
        path: '/facilitador/:id/edit',
        component: FacilitadorEdit
    },
    {
        name: 'facilitadorAdd',
        path: '/facilitador/add',
        component: FacilitadorCreate
    },

    {
        name: 'modalidadList',
        path: '/modalidad',
        component: ModalidadList
    },
    {
        name: 'modalidadEdit',
        path: '/modalidad/:id/edit',
        component: ModalidadEdit
    },
    {
        name: 'modalidadAdd',
        path: '/modalidad/add',
        component: ModalidadCreate
    },

    {
        name: 'programaList',
        path: '/programa',
        component: ProgramaList
    },
    {
        name: 'programaEdit',
        path: '/programa/:id/edit',
        component: ProgramaEdit
    },
    {
        name: 'programaAdd',
        path: '/programa/add',
        component: ProgramaCreate
    },

    {
        name: 'tipoCostoList',
        path: '/tipoCosto',
        component: TipoCostoList
    },
    {
        name: 'tipoCostoEdit',
        path: '/tipoCosto/:id/edit',
        component: TipoCostoEdit
    },
    {
        name: 'tipoCostoAdd',
        path: '/tipoCosto/add',
        component: TipoCostoCreate
    },

    {
        name: 'departamentoList',
        path: '/departamento',
        component: DepartamentoList
    },
    {
        name: 'departamentoEdit',
        path: '/departamento/:id/edit',
        component: DepartamentoEdit
    },
    {
        name: 'departamentoAdd',
        path: '/departamento/add',
        component: DepartamentoCreate
    },

    {
        name: 'municipioList',
        path: '/municipio',
        component: MunicipioList
    },
    {
        name: 'municipioEdit',
        path: '/municipio/:id/edit',
        component: MunicipioEdit
    },
    {
        name: 'municipioAdd',
        path: '/municipio/add',
        component: MunicipioCreate
    },

    {
        name: 'zonaList',
        path: '/zona',
        component: ZonaList
    },
    {
        name: 'zonaEdit',
        path: '/zona/:id/edit',
        component: ZonaEdit
    },
    {
        name: 'zonaAdd',
        path: '/zona/add',
        component: ZonaCreate
    }
]