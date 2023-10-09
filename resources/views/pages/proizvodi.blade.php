@extends('layouts.front')
@section('title')
    Mobile shop Proizvodi
@endsection
@section('content')
    <div class="container-fluid" id="proizvodi">
        <div class="row naslov">
            <div class="col-lg-3 col-12">
                <h1 id="proizvodiTelefoni">Smart telefoni</h1>
            </div>
            <div id="searchSortFilter" class="col-lg-9 col-12 flex mt-4">
                <form id="pretragaProizvoda" action="{{ route('proizvodi-korisnik') }}" method="GET" class="col-md-4">
                    <input type="text"
                           name="search"
                           value="{{request()->query->get('search')}}"
                           placeholder="Unesite pojam za pretragu"
                           id="search">
                    <p id="pretraga"><i id="faSearch" class="fa fa-search"></i></p>
                    <div id="filterDd" class="col-md-4 col-9 d-lg-none mx-auto">
                        <h2 id="filteri" class="prikazi flex">Filteri <i class="fas fa-angle-down"></i></h2>
                        <div id="filteriMd" class="nevidljiv col-12">
                            <div class="col-11 blokFilter">
                                <h4 class="flex prikazi">Robna marka <i class="fas fa-angle-down"></i></h4>
                                <div class="divRobneMarke nevidljiv"></div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <div class="row">
            <div class="col-3 d-none d-lg-block filteri">
                <div class="col-11 blokFilter">
                    <h2 class="flex prikazi">Robna marka </i></h2>
                    <div class="divRobneMarke">
                        <input type="radio" name="marka" value=""/> Sve
                        @foreach($marke as $marka)
                            <span>
                                <input type="radio" name="marka" value="{{ $marka->id }}"
                                {{ request()->query->get('marka') == $marka->id ? 'checked' :''}}/>
                            {{$marka->naziv}}
                            </span>
                        @endforeach
                        <button type="submit">Primeni filter
                        </button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-12 flex" id="sadrzajProizvodi">
                @foreach($proizvodi as $proizvod)
                    <div class='col-lg-3 col-md-5 col-8  flex2 proizvod'>
                        @if (!empty($proizvod->slike[0]))
                            <img src='{{asset('images/proizvodi/'. $proizvod->slike[0]->putanja)}}'
                                 alt='{{$proizvod->slike[0]->opis}}'
                                 class='slikaProizvod'>
                        @endif
                        <h3>{{$proizvod->naziv}}</h3>
                        @foreach($proizvod->specifikacije as $spec)
                            {{$spec->karakteristika->naziv}}: {{$spec->vrednost}}<br/>
                        @endforeach
                        <p class='naStanju'> Na stanju</p>
                        <h4 class='cena'>{{$proizvod->cena}} RSD</h4>
                        <div class='flex4'>
                            <a href='{{ url('proizvodi/' . $proizvod->id) }}' class='detaljnije'>Detaljnije</a>
                            {{--                            <a href='#' class='${klasa}' data-id='${el.idProizvod}'><i class='fas fa-shopping-cart'></i> Kupi</a>--}}
                        </div>
                    </div>
                @endforeach
            </div>
            <div class="col-lg-9 col-12 flex mx-auto" id="paginacija">
              {{$proizvodi->links('pagination::bootstrap-4')}}
            </div>
        </div>
    </div>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
@endsection
