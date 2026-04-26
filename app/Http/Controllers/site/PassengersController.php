<?php namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Passenger;

class PassengersController extends BaseSiteController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$passengers = Passenger::orderBy('id', 'DESC')->where('active',1)->paginate(10);
        return view('site.passengers.index', compact('passengers'));
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($slug)
	{
		$passenger = Passenger::findBySlug($slug);

		//if  content not found
		if(!$passenger) return view('site.default-not-found');

		return view('site.passengers.show', compact('passenger'));
	}

}
