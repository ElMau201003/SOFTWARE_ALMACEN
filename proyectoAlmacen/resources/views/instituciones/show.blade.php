@extends('layouts.plantilla')

@section('title', $institucion->codigoInstitucion)

@section('content')
    <h1>Bienvenido a la institucion: {{$institucion->nombreInstitucion}}</h1>
    <a href="{{route('institucion.index')}}">Volver a institucion</a>
    <a href="{{route('institucion.edit',$institucion) }}">Editar institucion</a>

    <p>Id: {{$institucion->idInstitucion}}</p>
    <p>Codigo: {{$institucion->codigoInstitucion}}</p>
    <p>Nombre: {{$institucion->nombreInstitucion}}</p>
    <p>Nivel: {{$institucion->nivelInstitucion}}</p>
    <p>Dirección: {{$institucion->direccionInstitucion}}</p>
    <p>Localidad: {{$institucion->localidadInstitucion}}</p>
    <p>Distrito: {{$institucion->distritoInstitucion}}</p>
    <p>Provincia: {{$institucion->provinciaInstitucion}}</p>
    <p>Departamento: {{$institucion->departamentoInstitucion}}</p>


    <form action = "{{route('institucion.destroy',$institucion)}}" method="POST">

        @csrf
        @method('delete')
    <button type="submit">Eliminar</button>

    </form>
@endsection
