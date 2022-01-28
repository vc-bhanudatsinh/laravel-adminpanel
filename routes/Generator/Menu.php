<?php
/**
 * Menu
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Menu'], function () {
        Route::resource('menus', 'MenusController');
        //For Datatable
        Route::post('menus/get', 'MenusTableController')->name('menus.get');
    });
    
});