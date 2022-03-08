<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\User\User;
use Illuminate\Http\Request;
use App\Http\Controllers\APIController;
use Illuminate\Support\Facades\Validator;

/**
 * UserController
 */
class UserController extends APIController
{


    public function index(Request $request)
    {
        $page_size = 10;
        if(isset($request->page_size))
            $page_size = $request->page_size;
        $User = User::paginate($page_size);
        return $this->respond(['data'=>$User]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->throwValidation($validator->messages()->first());
        }
        $data = $request->all();
        $User = User::create($data);
        if($User)
            return $this->respondCreatedWithData(['data'=>$User]);
        else
            return $this->setStatusCode(404)->respondWithError('Failed!');
    }

    public function show($id)
    {

        $User = User::where('id',$id)->first();
        if($User)
            return $this->setStatusCode(200)->respond(['data'=>$User]);
        else
            return $this->setStatusCode(404)->respondWithError('Not found!');
    }

    public function update(Request $request,$id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->throwValidation($validator->messages()->first());
        }

        $data = $request->all();
        $User = User::where('id',$id)->update($data);
        if($User)
            return $this->setStatusCode(203)->respond(['data'=>$User]);
        else
            return $this->setStatusCode(404)->respondWithError('Failed!');
    }

    public function destroy(Request $request,$id)
    {

        $User = User::where('id',$id)->delete();
        if($User)
            return $this->setStatusCode(202)->respond(['message'=>'Successful!']);
        else
            return $this->setStatusCode(404)->respondWithError('Failed!');
    }

}
