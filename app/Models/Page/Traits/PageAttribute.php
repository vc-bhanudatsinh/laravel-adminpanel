<?php

namespace App\Models\Page\Traits;

/**
 * Class PageAttribute.
 */
trait PageAttribute
{
    // Make your attributes functions here
    // Further, see the documentation : https://laravel.com/docs/8.x/eloquent-mutators#defining-an-accessor


    /**
     * Action Button Attribute to show in grid
     * @return string
     */
    public function getActionButtonsAttribute()
    {
        return '<div class="btn-group action-btn">
                '.$this->getEditButtonAttribute("edit-page", "admin.pages.edit").'
                '.$this->getDeleteButtonAttribute("delete-page", "admin.pages.destroy").'
                </div>';
    }
}
