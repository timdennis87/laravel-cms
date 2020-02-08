<style>
    .navbar-toggler {
        position: absolute;
        right: 40px;
        top: 40px;
    }
</style>

<div class="navbar navbar-expand-lg bg-dark text-white row px-5 d-none d-lg-block">

    <div class="navbar-collapse" id="navbarSupportedContent">

        Follow us :

        @foreach(\DB::table('social_links')->where('display', 1)->orderBy('display_order', 'asc')->get() as $social)

            <a style="color: {{ $social->color }};"
               href="{{ $social->url }}"
               target="_blank">
                {!! $social->icon !!}
            </a>

        @endforeach

        <form class="form-inline my-2 my-lg-0 ml-auto">
            @foreach(\DB::table('options')->where('type', 1)->where('display', 1)->orderBy('id', 'desc')->get() as $contact)
                <a class="btn btn-color mr-2" target="_blank"
                   href="{{ $contact->class }}:">
                    {{ $contact->description }}
                </a>
            @endforeach
        </form>

    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-light bg-light px-5 py-0">

    <div class="row">
        <div class="col d-flex justify-content-center d-md-flex justify-content-md-start">

            <img src="{{ url('storage/images/logo/'.App\Option::where('value', 'website_logo')->value('description')) }}"
                 width="20%"
                 style="min-width: 150px !important; max-height: 150px;">

        </div>
    </div>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">

            @foreach(App\Page::where('display', 1)->orderBy('display_order', 'asc')->get() as $link)

                <li class="nav-item">
                    <a class="nav-link"
                       href="{{ $link->url }}">
                        {{ $link->name }}
                    </a>
                </li>

            @endforeach

        </ul>

        <div class="d-lg-none d-md-block d-none">

            <div class=" my-2 my-lg-0 ml-auto d-sm-block d-lg-none">
                @foreach(\DB::table('options')->where('type', 1)->where('display', 1)->orderBy('id', 'desc')->get() as $contact)
                    <a class="btn btn-color mr-2" target="_blank"
                       href="{{ $contact->class }}:">
                        {{ $contact->description }}
                    </a>
                @endforeach
            </div>

            <hr>

            <div class="mb-3">
                @foreach(\DB::table('social_links')->where('display', 1)->orderBy('display_order', 'asc')->get() as $social)

                    <a style="color: {{ $social->color }};"
                       href="{{ $social->url }}"
                       target="_blank">
                        {!! $social->icon !!}
                    </a>

                @endforeach
            </div>
        </div>

    </div>
</nav>