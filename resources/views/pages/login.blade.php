@extends('layouts.front')
@section('title')
    Login
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <h2 class="naslov2">Logovanje</h2>
            </div>
            <div class="col-12">
                <form id="logovanje" action="{{route('logovanje')}}" method="POST" class="col-lg-4 col-sm-7 col-11">
                    @csrf
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email"/>
                    <span class='greska'>Pogrešan format</span>

                    <label for="lozinka">Lozinka</label>
                    <input type="password" id="password" name="password"/>
                    <span class='greska'>Pogrešan format <br/> Format (lozinka mora sadržati 6 karaktera)</span>

                    <button id="posalji" name="log" type="submit" value="login">Login</button>
                    <div class="cistac"></div>
                </form>
                <div id="poruka" class="col-10 mx-auto p-4">
                    @if(session()->has('logError'))
                        {{session()->get('logError')}}
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection

