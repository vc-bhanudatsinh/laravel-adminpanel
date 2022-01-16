<?php

namespace App\Http\Requests\Backend\Menu;

use Illuminate\Foundation\Http\FormRequest;

/**
 * Class EditMenuRequest.
 */
class EditMenuRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return accessAllow('edit-menu');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
        ];
    }
}
