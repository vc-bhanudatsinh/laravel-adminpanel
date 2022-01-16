<?php

namespace App\Http\Controllers\Backend\Damini;

use App\Models\Damini\Damini;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Damini\DaminiRepository;
use App\Http\Requests\Backend\Damini\ManageDaminiRequest;
use App\Http\Requests\Backend\Damini\CreateDaminiRequest;
use App\Http\Requests\Backend\Damini\StoreDaminiRequest;
use App\Http\Requests\Backend\Damini\EditDaminiRequest;
use App\Http\Requests\Backend\Damini\UpdateDaminiRequest;
use App\Http\Requests\Backend\Damini\DeleteDaminiRequest;

/**
 * DaminisController
 */
class DaminisController extends Controller
{
    /**
     * variable to store the repository object
     * @var DaminiRepository
     */
    protected $repository;

    /**
     * contructor to initialize repository object
     * @param DaminiRepository $repository;
     */
    public function __construct(DaminiRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  App\Http\Requests\Backend\Damini\ManageDaminiRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function index(ManageDaminiRequest $request)
    {
        return view('backend.daminis.index');
    }
    /**
     * Show the form for creating a new resource.
     *
     * @param  CreateDaminiRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function create(CreateDaminiRequest $request)
    {
        return view('backend.daminis.create');
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  StoreDaminiRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDaminiRequest $request)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Create the model using repository create method
        $this->repository->create($input);
        //return with successfull message
        return redirect()->route('admin.daminis.index')->withFlashSuccess(trans('alerts.backend.daminis.created'));
    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  App\Models\Damini\Damini  $damini
     * @param  EditDaminiRequestNamespace  $request
     * @return \Illuminate\Http\Response
     */
    public function edit(Damini $damini, EditDaminiRequest $request)
    {
        return view('backend.daminis.edit', compact('damini'));
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  UpdateDaminiRequestNamespace  $request
     * @param  App\Models\Damini\Damini  $damini
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDaminiRequest $request, Damini $damini)
    {
        //Input received from the request
        $input = $request->except(['_token']);
        //Update the model using repository update method
        $this->repository->update( $damini, $input );
        //return with successfull message
        return redirect()->route('admin.daminis.index')->withFlashSuccess(trans('alerts.backend.daminis.updated'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  DeleteDaminiRequestNamespace  $request
     * @param  App\Models\Damini\Damini  $damini
     * @return \Illuminate\Http\Response
     */
    public function destroy(Damini $damini, DeleteDaminiRequest $request)
    {
        //Calling the delete method on repository
        $this->repository->delete($damini);
        //returning with successfull message
        return redirect()->route('admin.daminis.index')->withFlashSuccess(trans('alerts.backend.daminis.deleted'));
    }
    
}
