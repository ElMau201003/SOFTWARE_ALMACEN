<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreInstitucion;
use App\Models\Institucion;
use Illuminate\Http\Request;

class InstitucionController extends Controller
{
    public function index() {
        // Define un valor específico para la paginación, como 10 elementos por página
        $instituciones = Institucion::paginate();

        return view('instituciones.index', compact('instituciones'));
    }

    public function create() {
        return view('instituciones.create');
    }

    public function store(StoreInstitucion $request) {
        // Crear una nueva instancia del modelo Institucion
    

        $institucion = new Institucion();
        
        // Asignar los valores del formulario a las columnas correspondientes de la base de datos
        $institucion->idInstitucion = $request->idInstitucion;
        $institucion->codigoInstitucion = $request->codigoInstitucion;
        $institucion->nombreInstitucion = $request->nombreInstitucion;
        $institucion->nivelInstitucion = $request->nivelInstitucion;
        $institucion->direccionInstitucion = $request->direccionInstitucion;
        $institucion->localidadInstitucion = $request->localidadInstitucion;
        $institucion->distritoInstitucion = $request->distritoInstitucion;
        $institucion->provinciaInstitucion = $request->provinciaInstitucion;
        $institucion->departamentoInstitucion = $request->departamentoInstitucion;
    
        // Guardar la nueva institución en la base de datos
        $institucion->save();

        return redirect()->route('institucion.show',$institucion );
    }   
    

    public function show(Institucion $institucion) {
        // Usa findOrFail para manejar el caso en que la institución no sea encontrada

        return view('instituciones.show', compact('institucion'));
    }

    public function edit(Institucion $institucion) {
        return view('instituciones.edit', compact('institucion'));
}

public function update(Request $request, Institucion $institucion) {
    
    $institucion->idInstitucion = $request->idInstitucion;
    $institucion->codigoInstitucion = $request->codigoInstitucion;
    $institucion->nombreInstitucion = $request->nombreInstitucion;
    $institucion->nivelInstitucion = $request->nivelInstitucion;
    $institucion->direccionInstitucion = $request->direccionInstitucion;
    $institucion->localidadInstitucion = $request->localidadInstitucion;
    $institucion->distritoInstitucion = $request->distritoInstitucion;
    $institucion->provinciaInstitucion = $request->provinciaInstitucion;
    $institucion->departamentoInstitucion = $request->departamentoInstitucion;

    // Guardar la nueva institución en la base de datos
    $institucion->save();

    return redirect()->route('institucion.show',$institucion );
}   

public function destroy(Institucion $institucion) {

    $institucion->delete();

    return redirect()->route('institucion.index');
}

}