<?php

namespace App\Models\Damini\Traits;

/**
 * Class DaminiAttribute.
 */
trait DaminiAttribute
{
    // Make your attributes functions here
    // Further, see the documentation : https://laravel.com/docs/5.4/eloquent-mutators#defining-an-accessor


    /**
     * Action Button Attribute to show in grid
     * @return string
     */
    public function getActionButtonsAttribute()
    {
        return '<div class="btn-group action-btn">
                '.$this->getEditButtonAttribute("edit-damini", "admin.daminis.edit").'
                '.$this->getDeleteButtonAttribute("delete-damini", "admin.daminis.destroy").'
                </div>';
    }
}
