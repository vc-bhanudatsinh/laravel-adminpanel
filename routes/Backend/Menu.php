<?php
/**
 * Menu Management.
 */
Route::group(['namespace' => 'Menu'], function () {
    Route::resource('menu', 'MenuController', ['except' => []]);
    //For DataTables
    Route::post('menu/get', 'MenuTableController')->name('menu.get');
    // for Model Forms
    Route::get('menu/get-form/{name?}', 'MenuFormController@create')->name('menu.getform');
});
