<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\videos;
use DB;

class VideosController extends Controller
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

            'video_link' => 'required',
        ]);
        
        
        
        // preg_match("#(?<=v=)[a-zA-Z0-9-]+(?=&)|(?<=v\/)[^&\n]+(?=\?)|(?<=v=)[^&\n]+|(?<=youtu.be/)[^&\n]+#", $request->video_link, $matches);

            
         //  $vid = 'https://www.youtube.com/embed/'.$matches[0];
               
       $affectedRows = videos::where("id", 1)->update(["video_link" => $request->video_link]);
            
           $data["vlink"] = DB::select("SELECT * FROM videos where id=1");

               return $this->responseRequestSuccess($data);

    }

    public function all(){
        $data["vlink"] = DB::select("SELECT * FROM videos where id=1");
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
