@extends('layouts.site-body')

@section('content')

    @if( $promo->display == 1 )

        @include('includes.site.promo-popup')

    @endif

    <div style="background-image:url({{url('storage/images/home/'.$headerImage->image)}});"
         class="header-image">

        <div class="p-5">

            <div class="row">

                <div class="mx-auto text-center">

                    <a href="/services"
                       class="btn bg-dark text-white shadow px-5 my-auto">
                        {{ $mainSection->button }}
                    </a>

                </div>
            </div>

        </div>

    </div>

    <div class="container">

        <div class="row py-3">

            <div class="col mt-3">

                <h4 class="text-center">{{ $section2->title }}</h4>

                <p class="text-center">
                    {!! $section2->body !!}
                </p>

            </div>

        </div>

    </div>

    <hr>

    <div class="container">

        <div class="row py-3">

            <div class="col-md-6 col-sm-12 my-3 text-left">

                <p>
                    {!! $section3->body !!}
                </p>

            </div>

            <div class="col-md-6 col-sm-12 text-center my-auto">
                <img src="{{ url('storage/images/home/'.$section3->image) }}"
                     class="shadow"
                     width="75%"
                     alt="">
            </div>

        </div>

    </div>

    @if( $quotation->display == 1 )

        <hr>

        <div class="container">

            <div class="row py-5">

                <div class="my-auto mx-auto text-center">

                    <h3>{{ $quotation->description }}</h3>

                    <a href="/contact"
                       class="btn btn-color shadow py-3 px-5 my-3">
                        {{ $quotation->button }}
                    </a>

                </div>

            </div>

        </div>

    @endif

    <hr>

    <section class="p-5">

        <div class="container px-5">

            <div class="my-auto mx-auto text-center">

                <p>
                    <i class="fas fa-star text-gold"></i>
                    <i class="fas fa-star text-gold fa-lg"></i>
                    <i class="fas fa-star text-gold fa-2x"></i>
                    <i class="fas fa-star text-gold fa-lg"></i>
                    <i class="fas fa-star text-gold"></i>
                </p>

                @foreach($reviews as $review)

                    <h5>
                        "{{ $review->review }}"
                    </h5>

                    <br>

                    <p>
                        {{ $review->name }}
                    </p>

                @endforeach

            </div>

        </div>

    </section>

    <section class="py-3 contact-color">

        <div class="container">
            <div class="row">
                <h3 class="mx-auto">Get in contact today!</h3>
            </div>
            @include('includes.site.contact-form')
        </div>

    </section>

    <script>

        window.onload = setTimeout(function () {
            $('#myModal').modal('show');
        }, 500);

    </script>

@endsection