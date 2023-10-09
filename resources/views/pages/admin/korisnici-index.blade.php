@extends('layouts.front')
@section('title')
    Korisnici
@endsection
@section('content')
    <div>
        <div class="container-fluid" id="proizvodi">
            <table id="tabela">
                <tr>
                    <th>Identifikacija</th>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Email</th>
                    <th>Uloga</th>
                    <th>Podešavanja</th>
                </tr>
                @foreach($korisnici as $k)
                    <tr>
                        <td>{{$k->id}}</td>
                        <td>{{$k->ime}}</td>
                        <td>{{$k->prezime}}</td>
                        <td>{{$k->email}}</td>
                        <td>{{$k->uloga->naziv}}</td>
                        <td>
                            <a href="{{url('admin/korisnici/'.$k->id)}}"> Izmeni</a>
                            <a href="{{url('admin/korisnici/'.$k->id . '/delete')}}"> Obrisi</a>
                        </td>
                    </tr>
                @endforeach
            </table>
        </div>
        <div class="col-lg-9 col-12 flex mx-auto" id="paginacija">
            {{ $korisnici->links('pagination::bootstrap-4') }}
        </div>
    </div>
@endsection
