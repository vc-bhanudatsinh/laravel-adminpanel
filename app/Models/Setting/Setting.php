<?php

namespace App\Models\Setting;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    
    // protected $table = 'settings';

  
    protected $fillable = ['logo', 'favicon', 'seo_title', 'seo_keyword', 'seo_description', 'company_contact', 'company_address', 'from_name', 'from_email', 'footer_text', 'copyright_text', 'terms', 'disclaimer', 'google_analytics','name','version','description','mobile','email','timing','contact_description','location'];

  
}
