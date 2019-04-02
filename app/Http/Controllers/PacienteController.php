<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Paciente;
use App\User;

class PacienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pacientes = Paciente::all();
        $argumentos = array();
        $argumentos['pacientes'] = $pacientes;

        return view('pacientes.index',$argumentos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pacientes.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $nuevoPaciente =
            new Paciente();
        $nuevoPaciente->nombre =
            $request->input('nombre');
        $nuevoPaciente->apellidos =
            $request->input('apellidos');
        $nuevoPaciente->nacimiento =
            $request->input('nacimiento');
        if($nuevoPaciente->save()) {
            $nuevoUsuario = new User();
            $nuevoUsuario->name = 
                $request->input('nombre');
            $nuevoUsuario->email =
                $request->input('email');
            $nuevoUsuario->password =
                bcrypt($request->input('password'));
            $nuevoUsuario->id_tipo_usuario =
                2;
            $nuevoUsuario->id_paciente = 
                $nuevoPaciente->id;
            if ($nuevoUsuario->save()) {
                return redirect()->
                    route('pacientes.index')->
                    with('exito','Paciente agregado');
            }
        } 
        return redirect()->
            route('pacientes.index')->
            with('error','No se pudo agregar paciente');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
