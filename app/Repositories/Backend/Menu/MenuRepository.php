<?php

namespace App\Repositories\Backend\Menu;

use DB;
use Carbon\Carbon;
use App\Models\Menu\Menu;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class MenuRepository.
 */
class MenuRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Menu::class;

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
                config('module.menus.table').'.id',
                config('module.menus.table').'.created_at',
                config('module.menus.table').'.updated_at',
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
        if ($Menu::create($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.menus.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Menu $menu
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Menu $menu, array $input)
    {
    	if ($menu->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.menus.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Menu $menu
     * @throws GeneralException
     * @return bool
     */
    public function delete(Menu $menu)
    {
        if ($menu->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.menus.delete_error'));
    }
}
