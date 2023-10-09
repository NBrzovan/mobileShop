<div id="header" class="container-fluid">
    <div class="row">
        <div class="col-lg-3 col-10">
            <a href="{{route('index')}}" id="logo"><img src="{{asset('images/logo.png')}}">
                <h1>Mobile Shop</h1></a>
        </div>
        <div id="meni" class="col-lg-9 my-auto d-none d-lg-flex flex">
            <ul>
                @foreach($nav as $n)
                    @if($n->name != 'login' && $n->name != 'registracija' && $n->name != 'logout')
                        <li><a href="{{ route($n->name) }}">{{ $n->tekst }}</a></li>
                    @endif
{{--                    {{dd(session()->get('user'))}}--}}
                @endforeach
                @if(session()->get('user') && session()->get('user')->uloga &&
                    session()->get('user')->uloga->naziv == 'admin')
                    <li><a href="{{ route("korsnici-admin") }}">Korisnici</a></li>
                    <li><a href="{{ route("proizvodi-admin") }}">Proizvodi(Admin)</a></li>
                @endif
            </ul>

            <ul>
                @if(session()->has('user'))
                    <li><a href="{{ route("logout") }}">Logout</a></li>
                @else
                    <li><a href="{{ route("login") }}">Login</a></li>
                    <li><a href="{{ route("registracija") }}">Register</a></li>
                @endif
            </ul>
        </div>
        <div class="col-2 d-lg-none">
            <div id="bars">
                <div class="bar1"></div>
                <div class="bar2"></div>
                <div class="bar3"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div id="podMeni" class="col-12 d-lg-none nevidljiv">
            <!--                --><?//=prikaziMeni();?>
        </div>
    </div>
</div>
