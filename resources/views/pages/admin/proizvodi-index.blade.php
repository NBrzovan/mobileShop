@extends('layouts.front')
@section('title')
    Proizvodi (Admin)
@endsection
@section('content')
    <div class="container-fluid" id="proizvodi">
        <table id="tabela">
            <tr>
                <th>Slika</th>
                <th>Naziv</th>
                <th>Cena</th>
                <th>Datum postavljanja</th>
                <th>Podešavanja</th>
            </tr>
            @foreach($proizvodi as $p)
                <tr>
                    <td>
                        @if (!empty($p->slike[1]))
                            <img src='{{asset('images/proizvodi/thumbnail/'. $p->slike[1]->putanja)}}'
                             width="50" height="50"
                                 alt="{{$p->opis}}"/>
                        @endif
                    </td>
                    <td>{{$p->marka->naziv}} {{$p->naziv}}</td>
                    <td>{{preg_replace("/\B(?=(\d{3})+(?!\d))/", ".", preg_replace("/\./",",",$p->cena))}} RSD</td>
                    <td>{{$p->created_at}}</td>
                    <td>
                        <a href="{{url('admin/proizvodi/'.$p->id . '/delete')}}"> Obrisi</a>
                        <a href="{{url('admin/proizvodi/'.$p->id . '/edit')}}">Izmeni</a>
                    </td>
                </tr>
            @endforeach
        </table>
        <div id="paginacija">{{$proizvodi->links('pagination::bootstrap-4')}}</div>
        <div class="col-12 flex2" id="sadrzaj"><a href="{{route('proizvodi-admin-create')}}">
                Dodaj novi proizvod
            </a></div>
    </div>
@endsection
