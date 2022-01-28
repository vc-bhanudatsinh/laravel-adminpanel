<?php

namespace App\Http\Controllers\Backend\Setting;

use App\Models\Setting\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Setting\SettingRepository;
use App\Http\Requests\Backend\Setting\ManageSettingRequest;
use RealRashid\SweetAlert\Facades\Alert;
use App\Http\Requests\Backend\Setting\CreateSettingRequest;
use App\Http\Requests\Backend\Setting\StoreSettingRequest;
use App\Http\Requests\Backend\Setting\EditSettingRequest;
use App\Http\Requests\Backend\Setting\UpdateSettingRequest;
use App\Http\Requests\Backend\Setting\DeleteSettingRequest;

/**
 * SettingsController
 */
class SettingsController extends Controller
{
    /**
     * variable to store the repository object
     * @var SettingRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param SettingRepository $repository;
     */
    public function __construct(SettingRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Setting\ManageSettingRequest  $request
     * 
     */
    public function index(ManageSettingRequest $request)
    {
        return view('backend.settings.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateSettingRequestNamespace  $request
     * 
     */
    public function create(CreateSettingRequest $request)
    {
        return view('backend.settings.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreSettingRequestNamespace  $request
     * 
     */
    public function store(StoreSettingRequest $request)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Create the model using repository create method
        $this->repository->create($input);
        //return with successfull message
        Alert::toast(trans('alerts.backend.settings.created'), 'success');
        return redirect()->route('admin.settings.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Setting\Setting  $setting
     * @param  EditSettingRequestNamespace  $request
     * 
     */
    public function edit(Setting $setting, EditSettingRequest $request)
    {
        return view('backend.settings.edit', compact('setting'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateSettingRequestNamespace  $request
     * @param  App\Models\Setting\Setting  $setting
     * 
     */
    public function update(UpdateSettingRequest $request, Setting $setting)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $setting, $input );
        //return with successfull message
        Alert::toast(trans('alerts.backend.settings.updated'), 'success');
        return redirect()->route('admin.settings.index');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteSettingRequestNamespace  $request
     * @param  App\Models\Setting\Setting  $setting
     * 
     */
    public function destroy(Setting $setting, DeleteSettingRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($setting);
        //returning with successfull message
        Alert::toast(trans('alerts.backend.settings.deleted'), 'success');
        return redirect()->route('admin.settings.index');
    }
    
}
