@extends('layouts.front')
@section('title')
    Autor
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 mt-5">
                <img src="{{asset('images/profile.png')}}" alt="Nikola Brzovan" id="autor"/>
            </div>
            <div class="col-lg-6 col-md-6  my-auto mt-4 mr-auto p-5 align-text-middle">
                <p>Zovem se Nikola Brzovan, potičem iz jednog sela nadomak Pančeva, student sam Visoke ICT škole, završio sam Gimnaziju, oduvek sam se interesovao za računare i modernu tehnologiju. Na taj način sam zavoleo programiranje i sebe vidim kao budućeg web programera.</p>
            </div>
        </div>
    </div>
@endsection
