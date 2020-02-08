<?php

namespace App\Http\Controllers;

use App\Maintenance;
use App\Page;
use Illuminate\Support\Facades\Storage;

class AboutController extends Controller
{
    public function index()
    {
        $pageName   = Page::where('id', 3)->first();
        $about      = $this->getAboutUsInformation();
        $aboutImage = $this->getAboutUsImage();

        return view('site.about', [
            'pageName'   => $pageName,
            'about'      => $about,
            'aboutImage' => $aboutImage
        ]);
    }

    public function getAboutUsInformation()
    {
        return Maintenance::where('value', 'about_us')->first();
    }

    public function getAboutUsImage()
    {
        return Maintenance::where('value', 'about_us_image')->first();
    }
}