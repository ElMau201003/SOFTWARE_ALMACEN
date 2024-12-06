<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreInstitucion extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'idInstitucion' => 'required', 'min:5',
            'codigoInstitucion' => 'required', 'min:7',
            'nombreInstitucion' => 'required', 'min:3',
            'nivelInstitucion' => 'required', 'min:2',
            'direccionInstitucion' => 'required', 'min:5',
            'localidadInstitucion' => 'required', 'min:5',
            'distritoInstitucion' => 'required', 'min:5',
            'provinciaInstitucion' => 'required', 'min:5',
            'departamentoInstitucion' => 'required', 'min:5'        ];
    }


    public function messages(): array
    {
        return [
            'idInstitucion.required' => 'El id es obligatoria',
            'idInstitucion.min' => 'El id institucional debe ser solo numeros',
            'codigoInstitucion.required' => 'El codigo  es obligatoria',
            'codigoInstitucion.min' => 'El codigo institucional debe contener como minimo 7 caracteres',
            'nombreInstitucion.required' => 'El nombre es obligatoria',
            'nivelInstitucion.required' => 'El nivel  es obligatoria',
            'direccionInstitucion.required' => 'La direccion  es obligatoria',
            'localidadInstitucion.required' => 'La localidad es obligatoria',
            'distritoInstitucion.required' => 'El distrito es obligatoria',
            'provinciaInstitucion.required' => 'La provincia es obligatoria',
            'departamentoInstitucion.required' => 'El departamento es obligatoria'        ];
    }




public function attributes(): array
{
    return [
            'idInstitucion' => 'Id de la institucion',
            'codigoInstitucion' => 'Codigo de la institucion',
            'nombreInstitucion' => 'Nombre de la institucion',
            'nivelInstitucion' => 'Nivel de la institucion',
            'direccionInstitucion' => 'Direccion de la institucion',
            'localidadInstitucion' => 'Localidad de la institucion',
            'distritoInstitucion' => 'Distrito de la institucion',
            'provinciaInstitucion' => 'Provincia de la institucion',
            'departamentoInstitucion' => 'Departamento de la institucion'        ];
}

}