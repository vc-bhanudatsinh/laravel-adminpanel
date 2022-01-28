<?php

namespace App\Http\Controllers\Backend\Menu;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Menu\MenuRepository;
use App\Http\Requests\Backend\Menu\ManageMenuRequest;

/**
 * Class MenusTableController.
 */
class MenusTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var MenuRepository
     */
    protected $menu;

    /**
     * contructor to initialize repository object
     * @param MenuRepository $menu;
     */
    public function __construct(MenuRepository $menu)
    {
        $this->menu = $menu;
    }

    /**
     * This method return the data of the model
     * @param ManageMenuRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageMenuRequest $request)
    {
        return Datatables::of($this->menu->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('created_at', function ($menu) {
                return Carbon::parse($menu->created_at)->toDateString();
            })
            ->addColumn('actions', function ($menu) {
                return $menu->action_buttons;
            })
            ->make(true);
    }
}
