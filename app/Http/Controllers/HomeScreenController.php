<?php

namespace App\Http\Controllers;

use App\ClassBox;
use App\Maintenance;
use App\Message;
use App\Option;
use App\Review;

class HomeScreenController extends Controller
{
    public function index()
    {
        $classType     = 'no_type';
        $promotionBar  = $this->getPromotionPopup();
        $mainSection   = $this->getMainTitleSection();
        $headerImage   = $this->getHeaderBannerImage();
        $services      = $this->getServiceInformation();
        $section2      = $this->getSection2();
        $section3      = $this->getSection3();
        $quotation     = $this->getQuotation();
        $reviews       = $this->getReviews();
        $mainBgColor   = $this->getMainBackgroundColor();
        $mainFontColor = $this->getMainFontColor();

        return view('site.home', [
            'classType'     => $classType,
            'promo'         => $promotionBar,
            'mainSection'   => $mainSection,
            'headerImage'   => $headerImage,
            'services'      => $services,
            'section2'      => $section2,
            'section3'      => $section3,
            'quotation'     => $quotation,
            'reviews'       => $reviews,
            'mainBgColor'   => $mainBgColor,
            'mainFontColor' => $mainFontColor,
        ]);
    }

    public function getHeaderBannerImage()
    {
        return Maintenance::where('value', 'header_image')->first();
    }

    public function getMainBackgroundColor()
    {
        return Option::where('value', 'main_bg_color')->first();
    }

    public function getMainFontColor()
    {
        return Option::where('value', 'main_font_color')->first();
    }

    public function getPromotionPopup()
    {
        return Message::where('value', 'promo_bar')->first();
    }

    public function getServiceInformation()
    {
        return ClassBox::get();
    }

    public function getMainTitleSection()
    {
        return Message::where('value', 'services')->first();
    }

    public function getSection2()
    {
        return Maintenance::where('value', 'section_2')->first();
    }

    public function getSection3()
    {
        return Maintenance::where('value', 'section_3')->first();
    }

    public function getQuotation()
    {
        return Message::where('value', 'quote')->first();
    }

    public function getReviews()
    {
        return Review::inRandomOrder()->take(1)->get();
    }
}
