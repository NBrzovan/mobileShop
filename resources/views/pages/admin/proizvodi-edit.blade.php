@extends('layouts.front')
@section('title')
    Proizvodi (Admin) edit
@endsection
@section('content')
    <div class="container-fluid" id="proizvodi">
        <div id="poruka" class="col-10 mx-auto p-4">
            @if($errors->any())
                <ul>
                    @foreach($errors->all() as $e)
                        <li>{{$e}}</li>
                    @endforeach
                </ul>
            @endif
        </div>
        <form id="registracija"
            action='/admin/proizvodi/{{$proizvod->id}}/update'
            method="POST"
              class="col-lg-10 col-11 flex3"
              enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="proizvod_id" id="proizvod_id" value="{{$proizvod->id}}"/>
            <div class="col-12 m-3">
                <h4>Proizvod</h4>
            </div> 
            <div class="col-10 col-sm-5">
                <label for="naziv">Naziv</label>
                <input type="text" id="naziv" required name="naziv" value="{{$proizvod->naziv}}"/>
                <span class='greska'>Pogrešan format</span>
            </div>

            <div class="col-10 col-sm-5">
                <label for="cena">Cena: </label>
                <input type="number" id="cena" required name="cena" value="{{$proizvod->cena}}">
                <span class='greska'>Pogrešan format (Morate uneti cenu)</span>
            </div>

            <div class="col-10 col-sm-5">
                <label for="marka">Marka</label>
                <select id="id_marka" required name="id_marka">
                    @foreach($marke as $marka)
                        <option value="{{$marka->id}}">{{$marka->naziv}}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-11">
                <button id="posaljiUpd" name="izmeniUpd" type="submit">Potvrdi</button>
            </div>
        </form>
    </div>
@endsection
