<?php

namespace App\Http\Controllers\Backend\Menu;

use App\Models\Menu\Menu;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Menu\MenuRepository;
use App\Http\Requests\Backend\Menu\ManageMenuRequest;
use RealRashid\SweetAlert\Facades\Alert;
use App\Http\Requests\Backend\Menu\CreateMenuRequest;
use App\Http\Requests\Backend\Menu\StoreMenuRequest;
use App\Http\Requests\Backend\Menu\EditMenuRequest;
use App\Http\Requests\Backend\Menu\UpdateMenuRequest;
use App\Http\Requests\Backend\Menu\DeleteMenuRequest;

/**
 * MenusController
 */
class MenusController extends Controller
{
    /**
     * variable to store the repository object
     * @var MenuRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param MenuRepository $repository;
     */
    public function __construct(MenuRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Menu\ManageMenuRequest  $request
     * 
     */
    public function index(ManageMenuRequest $request)
    {
        return view('backend.menus.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateMenuRequestNamespace  $request
     * 
     */
    public function create(CreateMenuRequest $request)
    {
        return view('backend.menus.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreMenuRequestNamespace  $request
     * 
     */
    public function store(StoreMenuRequest $request)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Create the model using repository create method
        $this->repository->create($input);
        //return with successfull message
        Alert::toast(trans('alerts.backend.menus.created'), 'success');
        return redirect()->route('admin.menus.index');
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Menu\Menu  $menu
     * @param  EditMenuRequestNamespace  $request
     * 
     */
    public function edit(Menu $menu, EditMenuRequest $request)
    {
        return view('backend.menus.edit', compact('menu'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateMenuRequestNamespace  $request
     * @param  App\Models\Menu\Menu  $menu
     * 
     */
    public function update(UpdateMenuRequest $request, Menu $menu)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $menu, $input );
        //return with successfull message
        Alert::toast(trans('alerts.backend.menus.updated'), 'success');
        return redirect()->route('admin.menus.index');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteMenuRequestNamespace  $request
     * @param  App\Models\Menu\Menu  $menu
     * 
     */
    public function destroy(Menu $menu, DeleteMenuRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($menu);
        //returning with successfull message
        Alert::toast(trans('alerts.backend.menus.deleted'), 'success');
        return redirect()->route('admin.menus.index');
    }
    
}
