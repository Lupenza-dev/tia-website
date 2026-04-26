<?php namespace App\Http\Controllers\site;

use App\Http\Controllers\site\BaseSiteController;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Models\SalesPoint;

use Response;
class SalesPointsController extends BaseSiteController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sales_points = SalesPoint::where('active',1)->orderBy('title'.curlang(), 'ASC')->paginate(12);
        // dd($sales_points);
        return view('site.sales-points.index', compact('sales_points'));
    }

}
