<?php

namespace App\Http\Controllers\Admin\EditPages;

use App\GalleryCategory;
use App\GalleryImage;
use App\Http\Controllers\Controller;
use App\Maintenance;
use App\Page;
use Illuminate\Http\Request;

class EditGalleryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function viewGalleryEditScreen()
    {
        $page       = Page::where('id', 7)->first();
        $images     = $this->getImages();
        $categories = $this->getCategories();

        return view('admin.pages.edit.edit-gallery', [
            'page'       => $page,
            'images'     => $images,
            'categories' => $categories
        ]);
    }

    public function getImages()
    {
        return GalleryImage::join('gallery_category', 'gallery_category.id', '=', 'gallery_images.category')
            ->orderBy('category', 'asc')
            ->orderBy('gallery_images.description')
            ->get();
    }

    public function getCategories()
    {
        return GalleryCategory::get();
    }

    public function uploadImage($request)
    {
        if ($request->file('image')) {

            $fileName = $request->image->getClientOriginalName();

            $request->image->move(storage_path('/images/gallery'), $fileName);

        } else {

            $fileName = '';
        }

        return $fileName;
    }

    public function addImage(Request $request)
    {
        $image = $this->uploadImage($request);

        GalleryImage::create([
            'description' => $request->description,
            'image'       => $image,
            'category'    => $request->category,
        ]);

        return redirect()->back();
    }

    public function updateImage(Request $request, $id)
    {
        $image = $this->uploadImage($request);
        $edit  = GalleryImage::where('id', $id)->first();

        $edit->update([
            'description' => $request->description,
            'image'       => $image,
            'category'    => $request->category,
        ]);

        return redirect()->back();
    }
}
