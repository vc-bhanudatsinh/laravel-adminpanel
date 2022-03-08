<?php

// route with auth

Route::post('logout', 'Auth\AuthController@logout');

Route::apiResource('user', 'UserController');
