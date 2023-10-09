@extends('layouts.front')
@section('title')
    Korisnici form
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12" id="sadrzaj">
                <form id="registracija" action="{{ url('admin/korisnici/'.$korisnik->id.'/update' )}}"
                      method="POST"
                      class="col-lg-10 col-11 flex3">
                    @csrf
                    {{ method_field('PUT') }}

                    <div class="col-10 col-sm-5">
                        <label for="ime">Ime</label>
                        <input type="text" id="ime" required name="ime" value="{{$korisnik->ime}}"/>
{{--                        <span class='greska'>Pogrešan format <br/> Format (prvo veliko slovo, ime ne sme biti duže od 20 karaktera)</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="prezime">Prezime</label>
                        <input type="text" id="prezime" required name="prezime" value="{{$korisnik->prezime}}"/>
{{--                        <span class='greska'>Pogrešan format <br/> Format (prvo veliko slovo, prezime ne sme biti duže od 20 karaktera, osoba može imati više prezimena)</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="email">Email</label>
                        <input type="text" id="email" required name="email" value="{{$korisnik->email}}"/>
{{--                        <span class='greska'>Pogrešan format</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="password">Lozinka</label>
                        <input type="password" required id="password" name="password"/>
{{--                        <span class='greska'>Pogrešan format <br/> Format (lozinka mora sadržati 6 karaktera)</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="telefon">Broj telefona</label>
                        <input type="text" id="telefon" name="telefon" value="{{$korisnik->telefon}}"/>
{{--                        <span class='greska'>Pogrešan format <br/> Format (06********, ukupno cifara 9/10)</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="adresa">Adresa</label>
                        <input type="text" id="adresa" name="adresa" value="{{$korisnik->adresa}}"/>
{{--                        <span class='greska'>Pogrešan format</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="grad">Grad/Mesto</label>
                        <input type="text" id="grad" name="grad" value="{{$korisnik->grad}}"/>
{{--                        <span class='greska'>Pogrešan format <br/> Format (prvo veliko slovo, naziv ne sme biti duži od 16 karaktera)</span>--}}
                    </div>

                    <div class="col-10 col-sm-5">
                        <label for="postanskiBroj">Poštanski broj</label>
                        <input type="text" id="postanskiBroj" name="postanskiBroj"
                               value="{{$korisnik->postanskiBroj}}"/>
{{--                        <span class='greska'>Pogrešan format <br/> Format (poštanski broj sme sadržati samo brojeve)</span>--}}
                    </div>

                    <div class="col-11 mt-4">
                        <label for="uloga">Uloga</label>
                        <select id="uloga" name="id_uloga">
                            @foreach($uloge as $u)
                                <option value="{{$u->id}}">{{$u->naziv}}</option>
                            @endforeach
                        </select>
{{--                        <span class='greska'>Pogrešan format <br/> Format (poštanski broj sme sadržati samo brojeve)</span>--}}
                    </div>

                    <div class="col-11">
                        <button id="posalji" name="reg" type="submit">Izmeni</button>
                    </div>
                </form>
                <div id="poruka" class="col-10 mx-auto p-4">
                    @if($errors->any())
                        <ul>
                            @foreach($errors->all() as $e)
                                <li>{{$e}}</li>
                            @endforeach
                        </ul>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
