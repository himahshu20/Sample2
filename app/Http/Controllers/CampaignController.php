<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Campaign;
use Illuminate\Support\Facades\Auth;
use App\Mail\CampaignEmail;
use App\Jobs\SendCampaignEmails;

class CampaignController extends Controller
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'subject' => 'required|string|max:255',
            'body' => 'required',
            'data' => 'required|array',
            'data.*.name' => 'required|string|max:255',
            'data.*.email' => 'required|email|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $campaign = Campaign::create([
            'user_id' => Auth::id(),
            'name' => $request->name,
            'subject' => $request->subject,
            'body' => $request->body,
            'data' => json_encode($request->data),
        ]);

        // Send emails in chunks
        $chunkSize = 50; // Number of emails per chunk
        $emails = array_map(function ($item) {
            return $item['email'];
        }, $request->data);

        foreach (array_chunk($emails, $chunkSize) as $chunk) {
            // Dispatch the SendCampaignEmails job
            SendCampaignEmails::dispatch($chunk, $request->subject, $request->body);
        }

        return redirect()->back()->with('success', 'Campaign created successfully!');
    }


    public function index()
{
    // Fetch all campaigns
    $campaigns = Campaign::all()->map(function ($campaign) {
        return [
            'id' => $campaign->id,
            'name' => $campaign->name,
            'subject' => $campaign->subject,
            'body' => $campaign->body,
            'recipient_count' => count(json_decode($campaign->data)), // Count recipients
            'created_at' => $campaign->created_at->format('d-m-Y H:i'),
        ];
    });

    return response()->json($campaigns);
}
}
