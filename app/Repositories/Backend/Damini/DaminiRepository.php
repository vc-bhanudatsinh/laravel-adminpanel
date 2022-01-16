<?php

namespace App\Repositories\Backend\Damini;

use DB;
use Carbon\Carbon;
use App\Models\Damini\Damini;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class DaminiRepository.
 */
class DaminiRepository extends BaseRepository
{
    /**
     * Associated Repository Model.
     */
    const MODEL = Damini::class;

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
                config('module.daminis.table').'.id',
                config('module.daminis.table').'.created_at',
                config('module.daminis.table').'.updated_at',
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
        if ($Damini::create($input)) {
            return true;
        }
        throw new GeneralException(trans('exceptions.backend.daminis.create_error'));
    }

    /**
     * For updating the respective Model in storage
     *
     * @param Damini $damini
     * @param  $input
     * @throws GeneralException
     * return bool
     */
    public function update(Damini $damini, array $input)
    {
    	if ($damini->update($input))
            return true;

        throw new GeneralException(trans('exceptions.backend.daminis.update_error'));
    }

    /**
     * For deleting the respective model from storage
     *
     * @param Damini $damini
     * @throws GeneralException
     * @return bool
     */
    public function delete(Damini $damini)
    {
        if ($damini->delete()) {
            return true;
        }

        throw new GeneralException(trans('exceptions.backend.daminis.delete_error'));
    }
}
