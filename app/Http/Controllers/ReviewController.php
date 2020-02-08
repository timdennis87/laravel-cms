<?php

namespace App\Http\Controllers;

use App\Review;
use App\Page;

class ReviewController extends Controller
{
    public function index()
    {
        $pageName = Page::where('id', 8)->first();
        $reviews  = $this->getReviews();

        return view('site.reviews', [
            'pageName' => $pageName,
            'reviews'  => $reviews
        ]);
    }

    public function getReviews()
    {
        return Review::get();
    }
}