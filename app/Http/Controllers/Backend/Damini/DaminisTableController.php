<?php

namespace App\Http\Controllers\Backend\Damini;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Damini\DaminiRepository;
use App\Http\Requests\Backend\Damini\ManageDaminiRequest;

/**
 * Class DaminisTableController.
 */
class DaminisTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var DaminiRepository
     */
    protected $damini;

    /**
     * contructor to initialize repository object
     * @param DaminiRepository $damini;
     */
    public function __construct(DaminiRepository $damini)
    {
        $this->damini = $damini;
    }

    /**
     * This method return the data of the model
     * @param ManageDaminiRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageDaminiRequest $request)
    {
        return Datatables::of($this->damini->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('created_at', function ($damini) {
                return Carbon::parse($damini->created_at)->toDateString();
            })
            ->addColumn('actions', function ($damini) {
                return $damini->action_buttons;
            })
            ->make(true);
    }
}
