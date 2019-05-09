<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Paciente;
use App\Dieta;
use App\ComidaDieta;
use Carbon;

class DietaApiController extends Controller
{
    public function dieta($fecha, $paciente) {
        $dieta = 
            Dieta::where('inicio_semana',$fecha)->
                where('id_paciente',$paciente)->first();
            //SELECT * FROM dietas 
            //WHERE inicio_semana = 01-01-1900 
            //AND id_paciente = 6

            //if($dieta != NULL)
        if ($dieta) {
            $comidas =
                ComidaDieta::where('id_dieta', $dieta->id)->
                get(); 
            $dieta['comidas'] =
                $comidas;
        }
        return $dieta;
    }

    public function nueva_evidencia(Request $request, $dieta, $dia_semana, $tiempo_alimentacion) {
        $comida = 
            ComidaDieta::where('id_dieta',$dieta)
                ->where('id_dia_semana',$dia_semana)
                ->where('id_tiempo_alimentacion',$tiempo_alimentacion)
                ->first();
        if ($comida != NULL) {
            $comida->evidencia = $request->input('evidencia');
            $hoy = Carbon::now();
            $comida->tiempo_evidencia = $hoy->toDateTimeString();
        }

    }
}
