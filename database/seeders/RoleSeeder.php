<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Role;
use App\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Role::create([
            'name' => 'Administrator',
            'display_name' => 'Administrator', // optional
            'all' => 1, // optional
            'description' => 'Admin default created by Lblara', // optional
        ]);

        $executive = Role::create([
            'name' => 'Executive',
            'display_name' => 'Executive', // optional
            'description' => 'Executive default created by Lblara', // optional
        ]);
        $user = Role::create([
            'name' => 'User',
            'display_name' => 'User', // optional
            'description' => 'User default created  by Lblara', // optional
        ]);

        $viewUserPermission = Permission::create([
            'name' => 'view-user-management',
            'display_name' => 'View User Management'
        ]);
        $editUserPermission = Permission::create([
            'name' => 'edit-user',
            'display_name' => 'Edit User'
        ]);
        $createUserPermission = Permission::create([
            'name' => 'create-user',
            'display_name' => 'Create User'
        ]);
        $deleteUserPermission = Permission::create([
            'name' => 'delete-user',
            'display_name' => 'Delete User'
        ]);
        $showUserPermission = Permission::create([
            'name' => 'show-user',
            'display_name' => 'Show User'
        ]);

        $executive->attachPermission($viewUserPermission);
        $executive->attachPermission($editUserPermission);
        $executive->attachPermission($createUserPermission);
        $executive->attachPermission($deleteUserPermission);
        $executive->attachPermission($showUserPermission);
        
    }
}
