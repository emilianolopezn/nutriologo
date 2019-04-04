@extends('layouts.default')
@section('titulo_pagina','Nutriólogo | Asignar dieta')
@section('titulo','Nutriólogo')
@section('subtitulo','Asignar dieta')
@section('contenido')
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Información de la dieta</h3>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <label>Paciente</label>
                    <select class="form-control" 
                        name="paciente" required>
                        <option selected disabled value="">
                            Elige un paciente
                        </option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Semana</label>
                    <input type="date" name="semana" 
                        class="form-control" required> 
                    <small class="form-text text-muted">
                        Elige solo días lunes
                    </small>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Lunes</h3>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <label>Desayuno</label>
                    <input type="text" 
                        class="form-control"
                        placeholder="Título del desayuno" 
                        required name="desayuno_lunes">
                    <textarea 
                        class="form-control"
                        rows="6"
                        placeholder="Descripción del desayuno"
                        name="descripcion_desayuno_lunes"
                        ></textarea>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection