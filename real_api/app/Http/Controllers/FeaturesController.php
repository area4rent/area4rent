<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\features;
use DB;

class FeaturesController extends Controller
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
            'fet_name' => 'required',
            'fet_file' => 'required'
        ]);

        try {

            if ($request->hasFile('fet_file')) {
                $original_filename = $request->file('fet_file')->getClientOriginalName();
                $original_filename_arr = explode('.', $original_filename);
                $file_ext = end($original_filename_arr);
                $destination_path = './public/img_fet';
                $image = 'U-' . time() . '.' . $file_ext;
                $request->file('fet_file')->move($destination_path, $image);
                $host = $_SERVER['HTTP_HOST'];
                $path = "http://$host/real_api/public/img_fet/" . $image;

                $add=features::create([
                    'feature_name' => $request->fet_name,
                    'icon' => $path,
                ]);
                $data["all_features"] = DB::select("SELECT * FROM features  Order by id desc");
                return $this->responseRequestSuccess($data);
            }

        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }

    public function all(){

        $data["all_features"] = DB::select("SELECT * FROM features Order by id desc");
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
