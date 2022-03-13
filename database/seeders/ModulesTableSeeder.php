<?php
namespace Database\Seeders;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ModulesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('modules')->truncate();

        $modules = [
            [
                'name'                  => trans('labels.backend.users.management'),
                'url'                   => 'admin.users.index',
                'view_permission_id'    => 'manage-user',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.roles.management'),
                'url'                   => 'admin.roles.index',
                'view_permission_id'    => 'manage-role',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.permissions.management'),
                'url'                   => 'admin.permissions.index',
                'view_permission_id'    => 'manage-permissions',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.menus.management'),
                'url'                   => 'admin.menus.index',
                'view_permission_id'    => 'manage-menu',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.modules.management'),
                'url'                   => 'admin.modules.index',
                'view_permission_id'    => 'manage-module',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.settings.title'),
                'url'                   => 'admin.settings.edit',
                'view_permission_id'    => 'edit-settings',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.pages.management'),
                'url'                   => 'admin.pages.index',
                'view_permission_id'    => 'manage-page',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
            [
                'name'                  => trans('labels.backend.apis.management'),
                'url'                   => 'admin.apis.index',
                'view_permission_id'    => 'manage-api',
                'created_by'            => 1,
                'created_at'            => Carbon::now(),
            ],
        ];

        DB::table('modules')->insert($modules);

    }
}
