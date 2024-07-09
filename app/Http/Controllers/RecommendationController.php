<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RecommendationController extends Controller
{
    public function index()
    {
        // Query to get the most used programId
        $topPrograms = DB::table('residents')
            ->select('programId', DB::raw('COUNT(programId) as usage_count'))
            ->groupBy('programId')
            ->orderByDesc('usage_count')
            ->limit(10)
            ->get();

        if ($topPrograms->isEmpty()) {
            return view('recommendation.index', ['message' => 'No programs found.']);
        }

        // Fetch details for each top programId from programtbl
        $programDetails = [];
        foreach ($topPrograms as $program) {
            $programDetail = DB::table('recommendations')
                ->select('programId', 'programName', 'programDescription', 'priority')
                ->where('programId', $program->programId)
                ->first();

            if ($programDetail) {
                $programDetail->usage_count = $program->usage_count;
                $programDetails[] = $programDetail;
            }
        }

        // Pass the data to the view
        return view('recommendation.index', ['programDetails' => $programDetails]);
    }
}
