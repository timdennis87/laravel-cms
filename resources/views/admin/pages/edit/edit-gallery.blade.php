@extends('layouts.admin-body')

@section('content')

    <div class="col">
        <div class="card shadow">
            <div class="card-header bg-info text-white pl-3">
                <div class="row">
                    <div class="col-12">
                        <i class="fas fa-edit mr-2"></i>
                        Edit | {{ $page->name }}
                    </div>
                </div>
            </div>

            <div class="card-body scroll-bar" style="height: 500px;">

                <div class="container">

                    <button type="button"
                            class="btn btn-success mb-3"
                            data-toggle="modal"
                            data-target="#addImage">
                        Add Image
                    </button>

                    <table class="table table-sm">

                        <thead>
                        <tr>
                            <th>Description</th>
                            <th>Category</th>
                            <th class="text-center">Image</th>
                            <th class="text-center">Edit</th>
                        </tr>
                        </thead>

                        <tbody>

                        @foreach($images as $image)

                            <tr>
                                <td width="60%">
                                    {{ $image->description }}
                                </td>
                                <td width="20%">
                                    {{ $image->name }}
                                </td>
                                <td class="text-center">
                                    @if($image->image)
                                        <img src="{{ url('storage/images/gallery/'.$image->image) }}"
                                             width="100px">
                                    @endif
                                </td>
                                <td class="text-center">
                                    <button type="button"
                                            class="btn btn-primary"
                                            data-toggle="modal"
                                            data-target="#image_{{ $image->id }}">
                                        Edit
                                    </button>
                                </td>
                            </tr>

                            <!-- Edit Modal -->
                            <div class="modal fade"
                                 id="image_{{ $image->id }}"
                                 tabindex="-1"
                                 role="dialog"
                                 aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">

                                            <h5 class="modal-title" id="exampleModalLabel">
                                                Edit Image
                                            </h5>

                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>

                                        </div>

                                        <form action="{{ url('admin/pages/gallery/update/'.$image->id) }}"
                                              method="post"
                                              enctype="multipart/form-data">

                                            {{ csrf_field() }}

                                            <div class="modal-body">

                                                <div class="form-group">

                                                    <div class="custom-file my-3">
                                                        <input type="file"
                                                               class="custom-file-input"
                                                               id="image"
                                                               value="{{ $image->image }}"
                                                               name="image">
                                                        <label class="custom-file-label"
                                                               for="image">{{ $image->image ? $image->image : 'Browse Image' }}</label>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="category">
                                                            Select Category
                                                        </label>
                                                        <select class="form-control"
                                                                id="category"
                                                                name="category">

                                                            @foreach($categories as $category)

                                                                <option value="{{ $category->id }}"
                                                                        {{ $category->id == $image->category ? 'selected' : '' }}>
                                                                    {{ $category->name }}
                                                                </option>

                                                            @endforeach

                                                        </select>
                                                    </div>

                                                    <label>Description</label>
                                                    <textarea class="form-control mb-3"
                                                              id="description"
                                                              name="description"
                                                              rows="3">{{ $image->description }}</textarea>
                                                </div>

                                            </div>

                                            <div class="modal-footer">

                                                <button type="button"
                                                        class="btn btn-secondary"
                                                        data-dismiss="modal">Close
                                                </button>

                                                <button type="submit"
                                                        class="btn btn-success">
                                                    Apply Changes
                                                    <i class="fas fa-save ml-2"></i>
                                                </button>

                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>

                        @endforeach

                        </tbody>

                    </table>

                </div>

            </div>

            <div class="card-footer">

                <div class="row">
                    <div class="ml-auto">

                        <a href="/admin/pages"
                           class="btn btn-secondary mr-3">
                            <i class="fas fa-arrow-left mr-2"></i>
                            Back
                        </a>

                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- Add Modal -->
    <div class="modal fade"
         id="addImage"
         tabindex="-1"
         role="dialog"
         aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">

                    <h5 class="modal-title" id="exampleModalLabel">
                        Add Image
                    </h5>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>

                </div>

                <form action="{{ url('admin/pages/gallery/create') }}"
                      method="post"
                      enctype="multipart/form-data">

                    {{ csrf_field() }}

                    <div class="modal-body">

                        <div class="form-group">

                            <div class="custom-file my-3">
                                <input type="file"
                                       class="custom-file-input"
                                       id="image"
                                       name="image">
                                <label class="custom-file-label"
                                       for="image"></label>
                            </div>

                            <div class="form-group">
                                <label for="category">
                                    Select Category
                                </label>
                                <select class="form-control"
                                        id="category"
                                        name="category">

                                    @foreach($categories as $category)

                                    <option value="{{ $category->id }}">
                                        {{ $category->name }}
                                    </option>

                                    @endforeach

                                </select>
                            </div>
                            
                            <label>Description</label>
                            <textarea class="form-control mb-3"
                                      id="description"
                                      name="description"
                                      rows="3"></textarea>
                        </div>

                    </div>

                    <div class="modal-footer">

                        <button type="button"
                                class="btn btn-secondary"
                                data-dismiss="modal">Close
                        </button>

                        <button type="submit"
                                class="btn btn-success">
                            Apply Changes
                            <i class="fas fa-save ml-2"></i>
                        </button>

                    </div>

                </form>

            </div>
        </div>
    </div>

    <script>
        tinymce.init({
            selector: '#body',
            menubar: false,
            height: 200,
            toolbar: ['undo redo']
        });
    </script>

@endsection