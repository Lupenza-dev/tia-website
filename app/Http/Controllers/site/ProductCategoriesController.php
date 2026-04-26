<?php

namespace App\Http\Controllers\site;

use App\Models\ProductCategory;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductCategoriesController extends BaseSiteController
{
    public function index()
	{
		$categories = ProductCategory::where('active',1)->orderBy('id','DESC')->paginate(12);
		return view('site.product-categories.index', compact('categories'));
	}


    public function show($slug)
    {
        $category = ProductCategory::findBySlug($slug);

        //if  content not found
		if(!$category) return view('site.default-not-found');

        // get the products
        $products = Product::where('category_id', $category->id)->where('active',1)->orderBy('id', 'DESC')->paginate(12);
        return view('site.product-categories.show', compact('category','products'));
    }


    public function product($slug, $product_slug)
    {
        $category = ProductCategory::findBySlug($slug);
        $product = Product::findBySlug($product_slug);

        //if  product content not found
		if(!$product) return view('site.default-not-found');

        return view('site.product-categories.product', compact('category','product'));
    }

}
