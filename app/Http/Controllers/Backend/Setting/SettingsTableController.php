<?php

namespace App\Http\Controllers\Backend\Setting;

use Carbon\Carbon;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;
use App\Repositories\Backend\Setting\SettingRepository;
use App\Http\Requests\Backend\Setting\ManageSettingRequest;

/**
 * Class SettingsTableController.
 */
class SettingsTableController extends Controller
{
    /**
     * variable to store the repository object
     * @var SettingRepository
     */
    protected $setting;

    /**
     * contructor to initialize repository object
     * @param SettingRepository $setting;
     */
    public function __construct(SettingRepository $setting)
    {
        $this->setting = $setting;
    }

    /**
     * This method return the data of the model
     * @param ManageSettingRequest $request
     *
     * @return mixed
     */
    public function __invoke(ManageSettingRequest $request)
    {
        return Datatables::of($this->setting->getForDataTable())
            ->escapeColumns(['id'])
            ->addColumn('created_at', function ($setting) {
                return Carbon::parse($setting->created_at)->toDateString();
            })
            ->addColumn('actions', function ($setting) {
                return $setting->action_buttons;
            })
            ->make(true);
    }
}
