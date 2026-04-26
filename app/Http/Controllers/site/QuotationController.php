<?php
namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Models\News;
use App\Models\Quotation;
use Cookie;

class QiotationController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$quotation_lists = Quotation::orderBy('id', 'DESC')->where('active',1)->paginate(12);
        return view('site.quotations.index', compact('quotation_lists'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$quotation = Quotation::findBySlug($slug);

		//if  content not found
		if(!$quotation) return view('site.default-not-found');

		return view('site.quotations.show', compact('quotation'));
	}



}
