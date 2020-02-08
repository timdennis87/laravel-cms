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

        @foreach($reviews as $review)

            <div class="row my-5 px-5">

                <div class="my-auto mx-auto text-center">

                    <p>
                        <i class="fas fa-star text-gold"></i>
                        <i class="fas fa-star text-gold fa-lg"></i>
                        <i class="fas fa-star text-gold fa-2x"></i>
                        <i class="fas fa-star text-gold fa-lg"></i>
                        <i class="fas fa-star text-gold"></i>
                    </p>

                    <h5>
                        "{{ $review->review }}"
                    </h5>

                    <br>

                    <p>
                        {{ $review->name }}
                    </p>

                </div>

            </div>

            <hr>

        @endforeach

    </div>

    <section class="py-5 contact-color">

        <div class="container">
            <div class="row">
                <h3 class="mx-auto">Get in contact today!</h3>
            </div>
            @include('includes.site.contact-form')
        </div>

    </section>

@endsection