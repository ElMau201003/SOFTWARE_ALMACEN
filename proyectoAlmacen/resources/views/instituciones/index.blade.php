@extends('layouts.plantilla')

@section('title','Instituciones')

@section('content')

    <h1>Página de Instituciones</h1>

    <a href="{{route('institucion.create')}}">Crear Institución</a>

    <ul>
        @foreach ($instituciones as $institucion)

            <li>
                <a href="{{route('institucion.show', $institucion->idInstitucion)}}">{{$institucion->nombreInstitucion}}</a>
            </li>
            
        @endforeach
    </ul>

    {{$instituciones->links()}}

@endsection
