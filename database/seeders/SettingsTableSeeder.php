<?php

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
                'seo_title' => env('APP_NAME'),
            ],
        ];

        DB::table('settings')->insert($data);
    }
}
