@extends('layouts.front')
@section('title')
    Mobile shop Proizvodi
@endsection
@section('content')
    <div class="container-fluid">
        <div class="row flex p-4" id="proizvod">
            <div class="col-lg-4 slikaProizvod flex2">
                <img src='{{asset('images/proizvodi/'. $proizvod->slike[0]->putanja)}}'
                     alt='{{$proizvod->slike[0]->opis}}'>
            </div>
            <div class="col-lg-7 col-10 mx-auto">
                <div class="col-lg-12">
                    <h1><?=$proizvod->nazivMarka?> <?=$proizvod->naziv?></h1>
                    <ul class="my-4">
                        @foreach($proizvod->specifikacije as $spec)
                            {{$spec->karakteristika->naziv}}: {{$spec->vrednost}}<br/>
                        @endforeach
                    </ul>
                    <p class="naStanju">&bull; Na stanju</p>
                </div>
                <div class="cenaProizvod">
                    <p class="cenaProizvod"><?=preg_replace("/\B(?=(\d{3})+(?!\d))/", ".", substr($proizvod->cena, 0, -3))?>
                        RSD</p>
                    <h3 class="besplatnaDostava">+ Besplatna dostava</h3>
                    {{--                    <a href="#" data-id="<?=$proizvod->idProizvod?>" class="<?=$klasa?>"><i class="fas fa-shopping-cart"></i> Dodaj u korpu</a>--}}
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 pl-3 m-3"><h2 id="proizvodiTelefoni">Specifikacije</h2></div>
            <div class="col-12">
                <table class="col-11 mx-auto" id="specifikacije">
                    @foreach($proizvod->specifikacije as $spec)
                        <tr>
                            <td class="tdNaslov">{{$spec->karakteristika->naziv}}</td>
                            <td>{{$spec->vrednost}}</td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </div>
@endsection
