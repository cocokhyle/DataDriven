<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Recommendation;
use App\Jobs\RunPythonScript;

class RecommendationController extends Controller
{
    public function index()
    {
        // Dispatch job to run Python script in the background
        RunPythonScript::dispatch();

        // Fetch recommendations
        $reco = Recommendation::orderBy('created_at', 'desc')->get();
        return view('recommendation.index', compact('reco'));
    }
}
