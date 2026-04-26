<?php

/*
|--------------------------------------------------------------------------
| Website Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


use App\Http\Controllers\site\BiographiesController;
use Illuminate\Support\Facades\Route;

Route::namespace('site')->group(function () {

        Route::get('/', 'HomeController@index');

        Route::get('news/', 'NewsController@index');
        
        Route::get('news/{slug}', 'NewsController@show');

        Route::get('events/', 'EventsController@index');
        
        Route::get('events/{slug}', 'EventsController@show');

        Route::get('welcome', 'WelcomeNoteController@show');

        Route::resource('faqs', 'FaqsController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('announcements', 'AnnouncementsController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);
      
        Route::resource('press-releases', 'PressReleasesController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        // Route::resource('notices', 'NoticesController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);
       
        Route::resource('speeches', 'SpeechesController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('pages', 'PagesController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('campuses', 'CampusController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('quotations', 'QuotationController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('courses', 'CourseController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('short_courses', 'ShortCourseController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        Route::resource('long_courses', 'LongCourseController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        //Route::get('pages/show/{slug}', 'PagesController@show');

        // Route::get('pages/s/{slug}', 'PagesController@special');

        // Route::get('services/', 'ServicesController@index');
        
        // Route::get('services/{slug}', 'ServicesController@show');
        
        // Route::get('related-links', 'RelatedLinksController@index');

        // Route::get('important-links', 'ImportantLinksController@index');

        // Route::get('quick-links', 'QuickLinksController@index');

        // Route::get('customer-centers', 'CustomerCentersController@index');

        // Route::get('sales-points', 'SalesPointsController@index');

        // Route::get('product-categories', 'ProductCategoriesController@index');

        // Route::get('product-categories/{slug}', 'ProductCategoriesController@show');

        // Route::get('product-categories/{slug}/{product_slug}', 'ProductCategoriesController@product');

        Route::get('online-services/', 'OnlineServicesController@index');

        Route::get('howdois', 'HowDoIsController@index');

        Route::get('howdois/{slug}', 'HowDoIsController@show');

        Route::get('passengers', 'PassengersController@index');

        Route::get('passengers/{slug}', 'PassengersController@show');
        
        // Route::get('sponsor-links', 'SponsorLinksController@index');
        
        // Route::post('save-suggestion', 'SuggestionsController@store')->name('save-suggestion');

        // Route::get('suggestions', 'SuggestionsController@index');

        // Route::get('offices', 'RegionalOfficesController@index');
        
        Route::get('contacts', 'ContactUsController@index');

        Route::get('complaints', 'ComplaintsController@index');
        Route::post('complaints', 'ComplaintsController@store')->name('complaints.store');
        // Route::get('complaints/success', 'ComplaintsController@success');

        Route::get('search', 'SearchController@search');

        //Route::resource('departments', 'DepartmentsController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);
        
        //Route::resource('research', 'ResearchController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);
       
        Route::resource('publications', 'DocumentController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);
        
        //Route::resource('program-categories', 'ProgramCategoriesController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);
        
        //Route::resource('programs', 'ProgramController',['except' => [ 'store', 'edit', 'store', 'destroy', 'update']]);

        //Route::get('organogram', 'OrganogramController@index');

        // Route::get('members', 'AdministrationController@members');
        
        Route::get('administration/{slug}', 'AdministrationController@index');

        Route::get('administration/{slug}/{id}/{ajax?}', 'AdministrationController@show');

        //Route::resource('biographies', 'BiographiesController', ['except' => ['index', 'store', 'edit', 'store', 'destroy', 'update']]);

        // Route::resource('galleries', 'GalleriesController', ['except' => ['index']]);

        Route::get('galleries/listing/{type}', ['as' => 'galleries.index', 'uses' => 'GalleriesController@index']);

        // Route::get('galleries/listing/{type}/{id}', ['as' => 'galleries.index', 'uses' => 'GalleriesController@index']);

        Route::get('videos/{slug}', 'GalleriesController@videos');

        Route::get('photos/{slug}', 'GalleriesController@photos');

        // Route::get('videos/video/{id}', 'GalleriesController@video');

        Route::get('sitemap', 'SitemapController@index');

    });

Route::get('sitemap-xml', 'site\SitemapController@xml');

Route::post('visitorsLog','site\VisitorsLogController@log');
