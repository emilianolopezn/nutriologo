<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Paciente;
use App\Dieta;
use App\ComidaDieta;

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
}
