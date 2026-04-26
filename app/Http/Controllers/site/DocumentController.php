<?php namespace App\Http\Controllers\site;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\Documents;
use App\Models\DocumentCategory;

class DocumentController extends BaseSiteController {

	public function index()
	{
		$categories = DocumentCategory::orderBy('id', 'DESC')->where('active',1)->paginate(10);
   		return view('site.publications.index', compact('categories',));
	}

	public function show($id)
	{
		$publications;
		$category = DocumentCategory::findBySlug($id);
		//$categories = DocumentCategory::orderBy('id', 'ASC')->get();

		if($category){
			$publications = Documents::where('category_id','=',$category->id)
			->orderBy('id', 'DESC')->where('active',1)->paginate(12);

			return view('site.publications.show', compact('publications','category'));
		}else{
			//if  content not found
			return view('site.default-not-found');
		}
	}

}
