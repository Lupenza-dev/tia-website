<?php
namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Models\News;
use Cookie;

class NewsController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$news_list = News::orderBy('id', 'DESC')->where('active',1)->paginate(12);
        return view('site.news.index', compact('news_list'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$news = News::findBySlug($slug);

		//if  content not found
		if(!$news) return view('site.default-not-found');

		return view('site.news.show', compact('news'));
	}



}
