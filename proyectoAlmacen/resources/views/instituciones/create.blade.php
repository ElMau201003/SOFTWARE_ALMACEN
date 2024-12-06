@extends('layouts.plantilla')

@section('title', 'Nueva Institución')

@section('content')
    <h1>Crear nueva Institución</h1>

    <!-- Formulario registro/creación de nueva Institución -->
<form action="{{ route('institucion.store') }}" method="POST">
    @csrf

<!-- Campo id -->
<label>
    id;
    <br>
    <textarea name="idInstitucion" rows="1">{{old('idInstitucion')}}</textarea>
</label>


 @error('idInstitucion')
 <br>
    <span>*{{ $message }} </span>
 <br>
@enderror


<br>
<!-- Campo codigo -->
<label>
    Codigo;
    <br>
    <textarea name="codigoInstitucion" rows="1">{{old('codigoInstitucion')}}</textarea>
</label>

@error('codigoInstitucion')
 <br>
    <span>*{{ $message }} </span>
 <br>
@enderror


<br>
<!-- Campo nombre -->
<label>
    Nombre;
    <br>
    <textarea name="nombreInstitucion" rows="1">{{old('nombreInstitucion')}}</textarea>
</label>


@error('nombreInstitucion')
 <br>
    <span>*{{ $message }} </span>
 <br>
@enderror


<br>
    <!-- Campo Nivel -->
    <label>
        Nivel;
        <br>
        <textarea name="nivelInstitucion" rows="1">{{old('nivelInstitucion')}}</textarea>
    </label>
    
    @error('nivelInstitucion')
 <br>
    <span>*{{ $message }} </span>
 <br>
@enderror

    <br>
    <!-- Campo Dirección -->
    <label>
        Dirección;
        <br>
        <textarea name="direccionInstitucion" rows="1">{{old('direccionInstitucion')}}</textarea>
    </label>

    @error('direccionInstitucion')
 <br>
    <span>*{{ $message }} </span>
 <br>
@enderror

    <br>
    <!-- Campo Localidad -->
    <label>
        Localidad;
        <br>
        <textarea name="localidadInstitucion" rows="1">{{old('localidadInstitucion')}}</textarea>
    </label>

    @error('localidadInstitucion')
 <br>
    <span>*{{ $message }} </span>
 <br>
@enderror


    <br>
    <!-- Campo Distrito -->
    <label>
        Distrito;
        <br>
        <textarea name="distritoInstitucion" rows="1">{{old('distritoInstitucion')}}</textarea>
    </label>

    @error('distritoInstitucion')
    <br>
       <span>*{{ $message }} </span>
    <br>
   @enderror


    <br>
    <!-- Campo Provincia -->
    <label>
        Provincia;
        <br>
        <textarea name="provinciaInstitucion" rows="1">{{old('provinciaInstitucion')}}</textarea>
    </label>

    @error('provinciaInstitucion')
    <br>
       <span>*{{ $message }} </span>
    <br>
   @enderror


    <br>
    <!-- Campo Departamento -->
    <label>
        Departamento;
        <br>
        <textarea name="departamentoInstitucion" rows="1">{{old('departamentoInstitucion')}}</textarea>
    </label>

    @error('departamentoInstitucion')
    <br>
       <span>*{{ $message }} </span>
    <br>
   @enderror

    <br>
    <!-- Botón de envío -->
    <button type="submit">Enviar formulario</button>
</form>
@endsection

        