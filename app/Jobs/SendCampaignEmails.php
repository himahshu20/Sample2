<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Mail;
use App\Mail\CampaignEmail;

class SendCampaignEmails implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $emails;
    protected $subject;
    protected $body;

    public function __construct(array $emails, $subject, $body)
    {
        $this->emails = $emails;
        $this->subject = $subject;
        $this->body = $body;
    }

    public function handle()
    {
        foreach ($this->emails as $email) {
            Mail::to($email)->send(new CampaignEmail($this->subject, $this->body));
        }
    }
}
