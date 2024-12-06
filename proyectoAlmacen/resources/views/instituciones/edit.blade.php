@extends('layouts.plantilla')
@section('title','Editar institucion')
@section('content')
        <h1>Editar una institucion</h1>
        <form action="{{ route('institucion.update', $institucion) }}" method="POST">
            @csrf
            @method('put')
        

<!-- Campo id -->
<label>
    id;
    <br>
    <textarea name="idInstitucion" rows="1">{{old('idInstitucion',$institucion->idInstitucion)}}</textarea>
</label>
<br>

<!-- Campo codigo -->
<label>
    Codigo;
    <br>
    <textarea name="codigoInstitucion" rows="1">{{old('codigoInstitucion',$institucion->codigoInstitucion)}}</textarea>
</label>
<br>

<!-- Campo nombre -->
<label>
    Nombre;
    <br>
    <textarea name="nombreInstitucion" rows="1">{{old('nombreInstitucion',$institucion->nombreInstitucion)}}</textarea>
</label>
<br>

    <!-- Campo Nivel -->
    <label>
        Nivel;
        <br>
        <textarea name="nivelInstitucion" rows="1">{{old('nivelInstitucion',$institucion->nivelInstitucion)}}</textarea>
    </label>
    <br>

    <!-- Campo Dirección -->
    <label>
        Dirección;
        <br>
        <textarea name="direccionInstitucion" rows="1">{{old('direccionInstitucion',$institucion->direccionInstitucion)}}</textarea>
    </label>
    <br>

    <!-- Campo Localidad -->
    <label>
        Localidad;
        <br>
        <textarea name="localidadInstitucion" rows="1">{{old('localidadInstitucion',$institucion->localidadInstitucion)}}</textarea>
    </label>
    <br>

    <!-- Campo Distrito -->
    <label>
        Distrito;
        <br>
        <textarea name="distritoInstitucion" rows="1">{{old('distritoInstitucion',$institucion->distritoInstitucion)}}</textarea>
    </label>
    <br>

    <!-- Campo Provincia -->
    <label>
        Provincia;
        <br>
        <textarea name="provinciaInstitucion" rows="1">{{old('provinciaInstitucion',$institucion->provinciaInstitucion)}}</textarea>
    </label>
    <br>

    <!-- Campo Departamento -->
    <label>
        Departamento;
        <br>
        <textarea name="departamentoInstitucion" rows="1">{{old('departamentoInstitucion',$institucion->departamentoInstitucion)}}</textarea>
    </label>
    <br>
    <!-- Botón de envío -->
    <button type="submit">Actualizar formulario</button>
</form>
@endsection