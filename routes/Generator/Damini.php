<?php
/**
 * Damini
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Damini'], function () {
        Route::resource('daminis', 'DaminisController');
        //For Datatable
        Route::post('daminis/get', 'DaminisTableController')->name('daminis.get');
    });
    
});