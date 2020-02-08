
<footer class="fixed-bottom">
    <div class="bg-dark text-white px-5 d-block d-sm-none py-2">
        <div class="">
            <div class="row">
                <div class="mx-auto">

                    <form class="ml-auto">
                        @foreach(\DB::table('options')->where('type', 1)->where('display', 1)->orderBy('id', 'desc')->get() as $contact)
                            <a class="btn btn-color mr-2" target="_blank"
                               href="{{ $contact->class }}:{{ $contact->description }}">
                                {{ $contact->name }}
                            </a>
                        @endforeach
                    </form>

                </div>
            </div>
        </div>
    </div>
</footer>



<div class="footer-color py-3">

    <div class="container">

        <div class="row">
            <p class="mb-0 mx-auto text-gold">
                &copy; {{ App\Option::where('value', 'site_name')->value('description') }} |
                PixlQuick Websites {{ date('Y') }}
            </p>
        </div>

    </div>

</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

<script src="/public/js/dashboard.js"></script>

</body>
</html>