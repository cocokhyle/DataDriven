<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Recommendation;

class RecommendationController extends Controller
{

    public function index(){

        $reco = Recommendation::orderBy('created_at','desc')->get();
        return view('recommendation.index',compact('reco'));
    }

}
