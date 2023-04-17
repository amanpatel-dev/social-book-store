<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {
        $sliders = Slider::all();
        $trendingProducts = Product::where('trending', '1')->latest()->take(15)->get();
        $newArrivalProducts = Product::latest()->take(16)->get();
        return view('frontend.index', compact('sliders', 'trendingProducts', 'newArrivalProducts'));
    }
    public function categories()
    {
        $categories = Category::where('status', '0')->get();
        return view('Frontend.collection.category.index', compact('categories'));
    }
    public function products($category_slug)
    {
        $category = Category::where('slug', $category_slug)->first();
        if ($category) {


            return view('Frontend.collection.products.index', compact('category'));
        } else {
            return redirect()->back();
        }
    }

    public function productView(string $category_slug, string $product_slug)
    {
        $category = Category::where('slug', $category_slug)->first();
        if ($category) {

            $product = $category->products()->where('slug', $product_slug)->where('status', '0')->first();
            if ($product) {
                return view('Frontend.collection.products.view', compact('product', 'category'));
            } else {
                return redirect()->back();
            }
        } else {
            return redirect()->back();
        }
    }
    public function newArrival()
    {
        $newArrivalProducts = Product::latest()->take(5)->get();
        dd($newArrivalProducts );
        return view('frontend.pages.new-arrival', compact('newArrivalProducts'));
    }
    public function featuredProduct()
    {
        $featuredProducts = Product::where('featured', '1')->latest()->take(6)->get();
        return view('frontend.pages.featured-product', compact('featuredProducts'));
    }
    public function searchProducts(Request $request)
    {
        if ($request->search) {
            $searchKeyword=$request->search;
            $searchProducts = Product::where('name', 'LIKE', '%'.$request->search.'%')->latest()->paginate(15);
            return view('frontend.pages.search',compact('searchProducts','searchKeyword'));
        } else {
            return redirect()->back()->with('message','Empty Search');
        }
    }
    public function thankyou()
    {
        return view('frontend.thank-you');
    }
}
