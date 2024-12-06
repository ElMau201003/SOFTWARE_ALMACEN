@extends('layouts.plantilla')

@section('title','Instituciones')

@section('content_header')
    <h1>Gestión de Instituciones</h1>
@stop

@section('content')
    <div class="mb-3">
        <a href="{{ route('institucion.create') }}" class="btn btn-primary">Nueva Institución</a>
    </div>

    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
                <tr>
                    <th>Acciones</th>
                    <th>ID</th>
                    <th>Código</th>
                    <th>Nombre</th>
                    <th>Nivel</th>
                    <th>Dirección</th>
                    <th>Localidad</th>
                    <th>Distrito</th>
                    <th>Provincia</th>
                    <th>Departamento</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($instituciones as $institucion)
                    <tr>
                        <td>
                            <a href="{{ route('institucion.show', $institucion->idInstitucion) }}" class="btn btn-sm btn-warning">
                                Ver
                            </a>
                            <a href="{{ route('institucion.edit', $institucion->idInstitucion) }}" class="btn btn-sm btn-info">
                                Editar
                            </a>
                            <form action="{{ route('institucion.destroy', $institucion->idInstitucion) }}" method="POST" class="d-inline-block">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('¿Estás seguro de eliminar esta institución?')">
                                    Eliminar
                                </button>
                            </form>
                        </td>
                        <td>{{ $institucion->idInstitucion }}</td>
                        <td>{{ $institucion->codigoInstitucion }}</td>
                        <td>{{ $institucion->nombreInstitucion }}</td>
                        <td>{{ $institucion->nivelInstitucion }}</td>
                        <td>{{ $institucion->direccionInstitucion }}</td>
                        <td>{{ $institucion->localidadInstitucion }}</td>
                        <td>{{ $institucion->distritoInstitucion }}</td>
                        <td>{{ $institucion->provinciaInstitucion }}</td>
                        <td>{{ $institucion->departamentoInstitucion }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="10" class="text-center">No hay instituciones registradas.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    <div class="d-flex justify-content-center">
        {{ $instituciones->links() }}
    </div>
@stop
