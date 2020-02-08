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

        <div class="form-group my-5">

            <form action="gallery" method="POST">
                {{ csrf_field() }}

                <select class="form-control"
                        id="category"
                        name="category"
                        onchange="$(this).closest('form').submit();">

                    <option value="0">- All Images -</option>

                    @foreach($categories as $category)

                        <option value="{{ $category->id }}" {{ $category->id == $_GET['category'] ? 'selected' : '' }}>
                            {{ $category->name }}
                        </option>

                    @endforeach

                </select>

            </form>
        </div>

        <div class="row">

            @foreach($images as $image)

                <div class="col-md-4 col-sm-6 col-12 mb-3">
                    <p class="text-center">
                        <img class="pointer mx-auto shadow"
                             data-toggle="modal"
                             data-id="{{ $image->id }}"
                             data-title="{{ $image->description }}"
                             data-target="#image_{{ $image->id }}"
                             src="{{ url('storage/images/gallery/'.$image->image) }}"
                             width="100%" style="height: auto;">
                    </p>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="image_{{ $image->id }}" tabindex="-1" role="dialog"
                     aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <p class="text-center">
                                    <img src="{{ url('storage/images/gallery/'.$image->image) }}"
                                         width="100%">
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

            @endforeach

        </div>

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