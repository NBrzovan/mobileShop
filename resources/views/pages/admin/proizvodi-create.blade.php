@extends('layouts.front')
@section('title')
    Proizvodi (Admin) create
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
              action="{{route('proizvodi-admin-store')}}"
              method="POST"
              class="col-lg-10 col-11 flex3"
              enctype="multipart/form-data">
            @csrf
            <div class="col-12 m-3">
                <h4>Proizvod</h4>
            </div>
            <div class="col-10 col-sm-5">
                <label for="naziv">Naziv</label>
                <input type="text" id="naziv" required name="naziv"/>
                <span class='greska'>Pogrešan format</span>
            </div>

            <div class="col-10 col-sm-5">
                <label for="cena">Cena: </label>
                <input type="number" id="cena" required name="cena">
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
            <div class="col-12 m-3">
                <h4>Specifikacije</h4>
            </div>
            @foreach($karakteristike as $s)
                <div class="col-10 col-sm-5">
                    <label for="spec-{{$s->id}}">{{$s->naziv}}</label>
                    <input type="text" id="spec-{{$s->id}}"
                           name="specifikacije[{{$s->id}}]"/>
                </div>
            @endforeach
            <div class="col-12 m-3">
                <h4>Slike</h4>
            </div>
            <div class="col-10 col-sm-5">
                <label for="slika">Slika : </label>
                <input type="file" id="slika" name="slika"/>
            </div>

            <div class="col-10 col-sm-5">
                <label for="thumbnail">Slika thumbnail : </label>
                <input type="file" id="thumbnail" name="slicica"/>
            </div>

            <div class="col-11">
                <button id="posalji" name="izmeni" type="submit">Potvrdi</button>
            </div>
        </form>
    </div>
@endsection
