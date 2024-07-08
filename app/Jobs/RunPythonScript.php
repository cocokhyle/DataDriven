<?php

// app/Jobs/RunPythonScript.php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class RunPythonScript implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public function handle()
    {
        // Path to Python script
        $scriptPath = public_path('python/recommended_program.py');

        // Execute Python script
        $command = escapeshellcmd("python $scriptPath");
        shell_exec($command);

        // Optionally log output or handle errors
        // \Illuminate\Support\Facades\Log::info("Python script executed: $output");
    }
}
