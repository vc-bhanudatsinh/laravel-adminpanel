<?php
namespace Database\Seeders;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        if (env('DB_CONNECTION') == 'mysql') {
            DB::table('settings')->truncate();
        }

        $data = [

            [
                'logo'=>"images/setting/logo.png",
                'seo_title' => env('APP_NAME'),
                'copyright_text'=>"Lb madesia",
                'name'=>"Lb madesia",
                "version"=>"1.0.0",
                'mobile'=>"7739261027",
                "email"=>"lbmadesia@gmail.com",
                "timing"=>"09:00 AM TO 6:00 PM CT",
                "contact_description"=>"Lb madesia, lbmadesia@gmail.com, 7739261027",
                "location"=>"India"
            ],
        ];

        DB::table('settings')->insert($data);
    }
}
