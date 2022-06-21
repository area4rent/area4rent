<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\surroundings;
use DB;

class SurroundingsController extends Controller
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

    public function add(Request $request){

        $this->validate($request, [
            'surr_name' => 'required',
            'surr_address' => 'required',
            'surr_class' => 'required',
            'surr_distance' => 'required',
            'surr_contact' => 'required'
        ]);

        try {

                $add=surroundings::create([
                    'sur_name' => $request->surr_name,
                    'sur_address' => $request->surr_address,
                    'sur_class' => $request->surr_class,
                    'sur_distance' => $request->surr_distance,
                    'sur_contact' => $request->surr_contact
                ]);

                $data["all_surroundings"] = DB::select("SELECT * FROM surrondings order by id desc");

                return $this->responseRequestSuccess($data);


        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }

    public function all(){

        $data["all_surroundings"] = DB::select("SELECT * FROM surrondings order by id desc");
        return $this->responseRequestSuccess($data);
    }


    protected function responseRequestSuccess($data)
    {
        return response()->json(['status' => 'success', 'data' => $data], 200);
            // ->header('Access-Control-Allow-Origin', '*')
            // ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    }

    protected function responseRequestError($message, $statusCode = 200)
    {
        return response()->json(['status' => 'error', 'error' => $message], $statusCode);
            // ->header('Access-Control-Allow-Origin', '*')
            // ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    }

    //
}
