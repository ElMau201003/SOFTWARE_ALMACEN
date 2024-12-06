<?php

namespace App\Http\Controllers;

use App\Mail\ContactanosMailable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;



class ContactanosController extends Controller
{
    public function index() {
        return view('contactanos.index'); // nombre de la carpeta seguido de nombre del archivo sin .blade.php
    }
    
    
    public function store(Request $request)  {
            $request->validate([
                'nombre' => 'required',
                'correo' => 'required|email',
                'mensaje' => 'required',

            ]);


        Mail::to('75774489@continental.edu.pe')->send(new ContactanosMailable ($request-> all()));
        return redirect()->route('contactanos.index')->with('info', 'Mensaje enviado');
    }
    

    
}

