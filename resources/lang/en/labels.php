<?php
return [
	"backend" => [
	"users" => [
	"create" => "Create User",
	"edit" => "Edit User",
	"management" => "User Management",
	"title" => "Users",
	"table" => [
	"id" => "Id",
	"createdat" => "Created At",
	],
	],
	"permissions" => [
	"create" => "Create Permission",
	"edit" => "Edit Permission",
	"management" => "Permission Management",
	"title" => "Permissions",
	"table" => [
	"id" => "Id",
	"createdat" => "Created At",
    "permission"=>"Permission",
    "display_name"=>"Display Name",
    "sort"=>"Sort",
	],
	],
	"roles" => [
	"create" => "Create Role",
	"edit" => "Edit Role",
	"management" => "Role Management",
	"title" => "Roles",
	"table" => [
	"id" => "Id",
    "role"=>"Role",
    "permissions"=>"Permissions",
    "number_of_users"=>"Number Of Users",
    "sort"=>"Sort",
	"createdat" => "Created At",
	],
	],
	"menus" => [
	"create" => "Create Menu",
	"edit" => "Edit Menu",
	"management" => "Menu Management",
	"title" => "Menus",
	"table" => [
	"id" => "Id",
    'name'=>'Name',
    'type'=>'Type',
	"createdat" => "Created At",
	],
    "field"=>[
        "type"=>"Type",
        'name'=>'Name',
    ]
	],
	"settings" => [
	"create" => "Create Setting",
	"edit" => "Edit Setting",
	"management" => "Setting Management",
	"title" => "Settings",
    "seo"=>"SEO Settings",
    "companydetails"=>"Company Details",
    "mail"=>"Mail Settings",
    "footer"=>"Footer Settings",
    "about"=>"About",
    "terms"=>"Terms",
    "google"=>"Google Analytics Track Code",
	"table" => [
	"id" => "Id",
	"createdat" => "Created At",
	],
	],
    // "modules"=>[
    //     'table'=>[
    //       'name'=>'Name',
    //       'view_permission_id'=>'View Permission Name',
    //       'url'=>'URL',
    //       'created_by'=>'Created by'
    //     ],
    // ],
	],
    "general"=>[
        "actions"=>"Action",
        "all"=>"All",
        "custom"=>"Custom",
    ]
];
