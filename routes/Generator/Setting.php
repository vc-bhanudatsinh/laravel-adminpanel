<?php
/**
 * Setting
 *
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'admin', 'as' => 'admin.', 'middleware' => 'admin'], function () {
    
    Route::group( ['namespace' => 'Setting'], function () {
        Route::resource('settings', 'SettingsController');
        //For Datatable
        Route::post('settings/get', 'SettingsTableController')->name('settings.get');
    });
    
});