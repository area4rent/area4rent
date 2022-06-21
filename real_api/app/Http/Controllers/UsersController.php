<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;
use DB;

class UsersController extends Controller
{

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function register(Request $request){

        $this->validate($request, [
            'user_email' => 'required|email|unique:users,user_email',
            'password' => 'required'
        ]);

        try {
                $tokken = uniqid();
                $add=User::create([
                    'user_email' => $request->user_email,
                    'password' => $request->password,
                    'role' => $request->role,
                    'is_active' => 1,
                    'tokken' => $tokken
                ]);

                $data["login_tokken"] = DB::select("SELECT * FROM users where user_email = '$request->user_email' AND password = '$request->password'");
                return $this->responseRequestSuccess($data);
        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }
    
    public function login(Request $request){

        $this->validate($request, [
            'user_email' => 'required',
            'password' => 'required'
        ]);

        try {
               
                $data["login_tokken"] = DB::select("SELECT * FROM users where user_email = '$request->user_email' AND password = '$request->password'");

                return $this->responseRequestSuccess($data);
        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }
    
     public function all(){

        try {
            $data["user"] = DB::select("SELECT * FROM users order by id desc");
            return $this->responseRequestSuccess($data);
        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }


    protected function responseRequestSuccess($data)
    {
        return response()->json(['status' => 'success', 'data' => $data], 200);
    }

    protected function responseRequestError($message, $statusCode = 200)
    {
        return response()->json(['status' => 'error', 'error' => $message], $statusCode);
    }
}
