<?php

Breadcrumbs::register('admin.dashboard', function ($breadcrumbs) {
    $breadcrumbs->push(__('navs.backend.dashboard'), route('admin.dashboard'));
});


require __DIR__.'/User.php';