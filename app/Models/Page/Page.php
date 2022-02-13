<?php

namespace App\Models\Page;

use App\Models\ModelTrait;
use Illuminate\Database\Eloquent\Model;
use App\Models\Page\Traits\PageAttribute;
use App\Models\Page\Traits\PageRelationship;

class Page extends Model
{
    use ModelTrait,
        PageAttribute,
    	PageRelationship {
            // PageAttribute::getEditButtonAttribute insteadof ModelTrait;
        }

    /**
     * NOTE : If you want to implement Soft Deletes in this model,
     * then follow the steps here : https://laravel.com/docs/8.x/eloquent#soft-deleting
     */

    /**
     * The database table used by the model.
     * @var string
     */
    protected $table = 'pages';

    /**
     * Mass Assignable fields of model
     * @var array
     */
    protected $fillable = [

    ];

    /**
     * Default values for model fields
     * @var array
     */
    protected $attributes = [

    ];


        /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
       
    ];

    /**
     * Dates
     * @var array
     */
    protected $dates = [
        'created_at',
        'updated_at'
    ];

    /**
     * Guarded fields of model
     * @var array
     */
    protected $guarded = [
        'id'
    ];

    /**
     * Constructor of Model
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
    }
}
