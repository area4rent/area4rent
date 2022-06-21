<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\amenities;
use DB;

class AmenitiesController extends Controller
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
            'amen_name' => 'required',
            'amen_file' => 'required'
        ]);

        try {

            if ($request->hasFile('amen_file')) {
                $original_filename = $request->file('amen_file')->getClientOriginalName();
                $original_filename_arr = explode('.', $original_filename);
                $file_ext = end($original_filename_arr);
                $destination_path = './public/img_amen';
                $image = 'U-' . time() . '.' . $file_ext;
                $request->file('amen_file')->move($destination_path, $image);
                $host = $_SERVER['HTTP_HOST'];
                $path = "http://$host/real_api/public/img_amen/" . $image;

                $add=amenities::create([
                    'amen_name' => $request->amen_name,
                    'icon' => $path,
                ]);
                $data["all_amenities"] = DB::select("SELECT * FROM amenities order by id desc");
                return $this->responseRequestSuccess($data);
            }

        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }

    public function all(){

        $data["all_amenities"] = DB::select("SELECT * FROM amenities order by id desc");
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
}
