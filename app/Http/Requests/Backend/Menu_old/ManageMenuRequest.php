<?php

namespace App\Http\Requests\Backend\Menu;

use Illuminate\Foundation\Http\FormRequest;

/**
 * Class ManageMenuRequest.
 */
class ManageMenuRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return accessAllow('view-menu');
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
