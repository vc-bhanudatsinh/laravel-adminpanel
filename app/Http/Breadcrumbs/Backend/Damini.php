<?php

Breadcrumbs::register('admin.daminis.index', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.dashboard');
    $breadcrumbs->push(trans('menus.backend.daminis.management'), route('admin.daminis.index'));
});

Breadcrumbs::register('admin.daminis.create', function ($breadcrumbs) {
    $breadcrumbs->parent('admin.daminis.index');
    $breadcrumbs->push(trans('menus.backend.daminis.create'), route('admin.daminis.create'));
});

Breadcrumbs::register('admin.daminis.edit', function ($breadcrumbs, $id) {
    $breadcrumbs->parent('admin.daminis.index');
    $breadcrumbs->push(trans('menus.backend.daminis.edit'), route('admin.daminis.edit', $id));
});
