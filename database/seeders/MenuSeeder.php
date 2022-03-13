<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Menu\Menu;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $menu = Menu::create([
            'type' => 'backend',
            'name' => 'Backend Sidebar Menu',
            // 'items' => '[{"view_permission_id":"manage-user","icon":"fa-user","open_in_new_tab":0,"url_type":"route","url":"admin.users.index","name":"User Management","id":1,"content":"User Management"},{"id":7,"name":"Settings","url":"admin.settings.edit","url_type":"route","open_in_new_tab":0,"icon":"fa-cogs","view_permission_id":"edit-settings","content":"Settings","children":[{"id":2,"name":"Module Management","url":"admin.modules.index","url_type":"route","open_in_new_tab":0,"icon":"fa-wrench","view_permission_id":"manage-module","content":"Module Management"},{"id":3,"name":"Permission Management","url":"admin.permissions.index","url_type":"route","open_in_new_tab":0,"icon":"fa-code-fork","view_permission_id":"view-permission-management","content":"Permission Management"},{"id":4,"name":"Role Management","url":"admin.roles.index","url_type":"route","open_in_new_tab":0,"icon":"fa-star","view_permission_id":"manage-role","content":"Role Management"},{"id":5,"name":"Menu Management","url":"admin.menus.index","url_type":"route","open_in_new_tab":0,"icon":"fa-bars","view_permission_id":"manage-menu","content":"Menu Management"},{"id":6,"name":"Setting management","url":"admin.settings.edit?setting=1","url_type":"route","open_in_new_tab":0,"icon":"fa-gear","view_permission_id":"edit-setting","content":"Setting management"}]}]',
            'items' => '[{"view_permission_id":"manage-user","icon":"fa-user","open_in_new_tab":0,"url_type":"route","url":"admin.users.index","name":"User Management","id":1,"content":"User Management"},{"id":7,"name":"Settings","url":"admin.settings.edit","url_type":"route","open_in_new_tab":0,"icon":"fa-cogs","view_permission_id":"edit-settings","content":"Settings","children":[{"id":2,"name":"Module Management","url":"admin.modules.index","url_type":"route","open_in_new_tab":0,"icon":"fa-wrench","view_permission_id":"manage-module","content":"Module Management"},{"id":3,"name":"Permission Management","url":"admin.permissions.index","url_type":"route","open_in_new_tab":0,"icon":"fa-code-fork","view_permission_id":"view-permission-management","content":"Permission Management"},{"id":4,"name":"Role Management","url":"admin.roles.index","url_type":"route","open_in_new_tab":0,"icon":"fa-star","view_permission_id":"manage-role","content":"Role Management"},{"id":5,"name":"Menu Management","url":"admin.menus.index","url_type":"route","open_in_new_tab":0,"icon":"fa-bars","view_permission_id":"manage-menu","content":"Menu Management"},{"id":6,"name":"Setting management","url":"admin.settings.edit?setting=1","url_type":"route","open_in_new_tab":0,"icon":"fa-gear","view_permission_id":"edit-setting","content":"Setting management"},{"view_permission_id":"manage-api","icon":"fa-reddit-alien","open_in_new_tab":0,"url_type":"route","url":"admin.apis.index","name":"Api Management","id":8,"content":"Api Management"},{"view_permission_id":"view-page-permission","icon":"fa-file-text-o","open_in_new_tab":0,"url_type":"route","url":"admin.pages.index","name":"Page Management","id":9,"content":"Page Management"}]}]',
            'created_by' => 1
        ]);
    }
}
