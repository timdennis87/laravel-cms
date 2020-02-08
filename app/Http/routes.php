<?php

// --Pages-- //

//Home
Route::get('/', 'HomeScreenController@index');

//Join
Route::get('join', 'JoinController@index');

//Gallery
Route::get('gallery', 'GalleryController@index');
Route::post('gallery', 'GalleryController@updateCategory');

//Services
Route::get('services', 'ServiceController@index');

//About Me
Route::get('about-us', 'AboutController@index');

//Reviews
Route::get('reviews', 'ReviewController@index');

//Contact
Route::get('contact', 'ContactController@index');

// --Includes-- //

//Contact Form Section
Route::get('contact-form', 'ContactFormController@showForm');
Route::post('contact-form/submit', 'ContactFormController@submitContactForm');

//Join Form Section
Route::get('join-form', 'JoinFormController@showForm');
Route::post('join-form', 'JoinFormController@submitForm');


//Admin
Route::auth();
Route::get('admin', 'Admin\NavigationController@displayNavigation');

//Dashboard
Route::get('admin', 'Admin\NavigationController@viewDashboardScreen');

//Pages
Route::get('admin/pages', 'Admin\NavigationController@viewPagesScreen');

//EditPages

$editPages = 'Admin\EditPages';

//About
Route::get('admin/pages/about-us', $editPages.'\EditAboutController@viewEditScreen');
Route::post('admin/pages/about-us/update-info', $editPages.'\EditAboutController@updateAboutInformation');
Route::post('admin/pages/about-us/update-image', $editPages.'\EditAboutController@updateAboutImage');

//Contact
Route::get('admin/pages/contact', $editPages.'\EditContactController@viewContactEditScreen');
Route::post('admin/pages/contact/update', $editPages.'\EditContactController@updateEditScreen');

//Join
Route::get('admin/pages/join', $editPages.'\EditJoinController@viewJoinEditScreen');
Route::post('admin/pages/join/update', $editPages.'\EditJoinController@updateEditScreen');

//Gallery
Route::get('admin/pages/gallery', $editPages.'\EditGalleryController@viewGalleryEditScreen');
Route::post('admin/pages/gallery/create', $editPages.'\EditGalleryController@addImage');
Route::post('admin/pages/gallery/update/{id}', $editPages.'\EditGalleryController@updateImage');

//Home
Route::get('admin/pages/home', $editPages.'\EditHomeController@viewEditScreen');
Route::post('admin/pages/home/update', $editPages.'\EditHomeController@updateEditScreen');

//Services
Route::get('admin/pages/services', $editPages.'\EditServiceController@viewServiceEditScreen');
Route::post('admin/pages/services/update-message', $editPages.'\EditServiceController@editMessage');
Route::post('admin/settings/update-class-type', $editPages.'\EditServiceController@editClassType');
Route::post('admin/settings/update-class', $editPages.'\EditServiceController@editClass');
Route::post('admin/settings/new-class-type', $editPages.'\EditServiceController@newClassType');
Route::post('admin/settings/new-class', $editPages.'\EditServiceController@newClass');

//Social Links
Route::get('admin/social-links', 'Admin\NavigationController@viewSocialLinksScreen');
Route::post('admin/social-links/update', 'Admin\NavigationController@editSocialLinks');

//Reviews
Route::get('admin/pages/reviews', 'Admin\NavigationController@viewReviewScreen');
Route::post('admin/reviews/update', 'Admin\NavigationController@editReviews');
Route::post('admin/reviews/create', 'Admin\NavigationController@createReview');

//Settings
Route::get('admin/settings', 'Admin\NavigationController@viewSettingsScreen');
Route::post('admin/settings/update-contact', 'Admin\NavigationController@editMainContact');
Route::post('admin/settings/update-promo', 'Admin\NavigationController@editPromotions');