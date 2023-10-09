<script type="text/javascript" src="{{ asset('js/jquery-3.4.1.min.js')}}"></script>
<script>
    const BASE_URL = '{{ url("/") }}';
    const TOKEN = '{{ csrf_token() }}';
</script>
<script type="text/javascript" src="{{asset('js/main.js')}}"></script>
{{--    <script type="text/javascript" src="{{ asset('js/main.min.js"')}}></script>--}}
{{--<script type="text/javascript" src="{{asset('js/')}}"></script>--}}
@yield('appendScripts')
