<?php

namespace App\Http\Controllers;

use App\GalleryCategory;
use App\GalleryImage;
use Illuminate\Http\Request;
use App\Page;

class GalleryController extends Controller
{
    public function index()
    {
        $pageName   = Page::where('id', 7)->first();
        $categories = $this->getCategories();
        $images     = $this->getImages();

        return view('site.gallery', [
            'pageName'   => $pageName,
            'categories' => $categories,
            'images'     => $images,
        ]);
    }

    public function getCategories()
    {
        return GalleryCategory::get();
    }

    public function getImages()
    {

        if($_GET['category'] != '0'){

            return GalleryImage::where('category', $_GET['category'])->get();

        } else {

            return GalleryImage::inRandomOrder()->get();
        }

    }

    public function updateCategory(Request $request)
    {
        return redirect('/gallery?category='.$request->category);
    }
}
