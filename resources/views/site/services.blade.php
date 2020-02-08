@extends('layouts.site-body')

@section('content')

    <div class="banner-color">

        <div class="container p-3">

            <div class="row">
                <div class="mx-auto text-center">

                    <h1>{{ $pageName->name }}</h1>

                </div>
            </div>

        </div>

    </div>

    <div class="container">
        <div class="mt-5">
            {!! $message->body !!}
        </div>
    </div>

    @foreach($services as $serv)

        <section class="py-5">

            <div class="container">

                <div class="row">

                    @foreach($serv->services as $service)

                        <div class="col-12">

                            <div class="card mb-3">

                                <div class="card-header banner-color">
                                    <span class="mr-2">
                                        {!! $service->class !!}
                                    </span>
                                    {{ $service->name }}
                                </div>

                                <div class="card-body">
                                    {!! $service->description !!}
                                </div>

                                <div class="card-footer">
                                    <div class="row">
                                        <a href="/gallery?category={{ $service->category }}"
                                           class="ml-3 text-success"
                                           target="_blank">
                                            Click here to see more {{ $service->name }} images
                                        </a>
                                    </div>
                                </div>

                            </div>

                        </div>

                    @endforeach

                </div>

            </div>

        </section>

    @endforeach

    <section class="py-5 contact-color">

        <div class="container">
            <div class="row">
                <h3 class="mx-auto">Get in contact today!</h3>
            </div>
            @include('includes.site.contact-form')
        </div>

    </section>


@endsection