<?php

namespace App\Repositories\Backend\Setting;

use DB;
use Carbon\Carbon;
use App\Models\Setting\Setting;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class SettingRepository.
 */
class SettingRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Setting::class;

    /**
     * This method is used by Table Controller
     * For getting the table data to show in
     * the grid
     * @return mixed
     */
    public function getForDataTable()
    {
        return $this->query()
            ->select([
                config('module.settings.table').'.id',
                config('module.settings.table').'.created_at',
                config('module.settings.table').'.updated_at',
            ]);
    }

    /**
     * For Creating the respective model in storage
     *
     * @param array $input
     * @throws GeneralException
     * @return bool
     */
    public function create(array $input)
    {
        if ($Setting::create($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.settings.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Setting $setting
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Setting $setting, array $input)
    {
    	if ($setting->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.settings.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Setting $setting
     * @throws GeneralException
     * @return bool
     */
    public function delete(Setting $setting)
    {
        if ($setting->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.settings.delete_error'));
    }
}
