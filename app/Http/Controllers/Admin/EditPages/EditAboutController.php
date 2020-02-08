<?php

namespace App\Http\Controllers\Admin\EditPages;

use App\Http\Controllers\Controller;
use App\Maintenance;
use App\Page;
use Illuminate\Http\Request;

class EditAboutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function viewEditScreen()
    {
        $page       = Page::where('id', 3)->first();
        $aboutInfo  = $this->getAboutInformation();
        $aboutImage = $this->getAboutImage();

        return view('admin.pages.edit.edit-about', [
            'page'  => $page,
            'about' => $aboutInfo,
            'image' => $aboutImage
        ]);
    }

    public function getAboutInformation()
    {
        return Maintenance::where('value', 'about_us')->first();
    }

    public function getAboutImage()
    {
        return Maintenance::where('value', 'about_us_image')->first();
    }

    public function uploadImage($request)
    {
        if ($request->file('image')) {

            $fileName = $request->image->getClientOriginalName();

            $request->image->move(storage_path('/images/about-me'), $fileName);

        } else {

            $fileName = '';
        }

        return $fileName;
    }

    public function updateAboutInformation(Request $request)
    {
        $editPage = Maintenance::where('value', 'about_us')->first();

        $editPage->update([
            'title' => $request->title,
            'body'  => $request->body,
        ]);

        return redirect()->back();
    }

    public function updateAboutImage(Request $request)
    {
        $image = $this->uploadImage($request);

        $editPage = Maintenance::where('value', 'about_us_image')->first();

        $editPage->update([
            'image' => $image,
        ]);

        return redirect()->back();
    }
}
