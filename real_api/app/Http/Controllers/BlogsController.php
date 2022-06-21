<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\blogs;
use DB;

class BlogsController extends Controller
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
            'blog_title' => 'required',
            'blog_description' => 'required',
            'blog_date' => 'required',
            'blog_img' => 'required',
            'blog_banner_img' => 'required'
        ]);

        try {

            if ($request->hasFile('blog_img')) {
                $original_filename = $request->file('blog_img')->getClientOriginalName();
                $original_filename_arr = explode('.', $original_filename);
                $file_ext = end($original_filename_arr);
                $destination_path = './public/img_blog';
                $image = 'U-' . time() . '.' . $file_ext;
                $request->file('blog_img')->move($destination_path, $image);
                $host = $_SERVER['HTTP_HOST'];
                $img_path = "http://$host/real_api/public/img_blog/" . $image;

                $add=blogs::create([
                    'blog_title' => $request->blog_title,
                    'blog_description' => $request->blog_description,
                    'blog_date' => $request->blog_date,
                    'blog_img' => $img_path,
                    'blog_banner_img' => $img_path,
                    'is_active' => 1
                ]);
                $data["all_blogs"] = DB::select("SELECT * FROM blogs  Order by id desc");
                return $this->responseRequestSuccess($data);
            }

        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }
    
     public function single_blog($id){

        $data["blog_detail"] = DB::select("SELECT * FROM blogs Where id = $id");
        return $this->responseRequestSuccess($data);
    }

    public function all(){

        $data["all_blogs"] = DB::select("SELECT id,blog_title,blog_date,blog_img FROM blogs Order by id desc");
        return $this->responseRequestSuccess($data);
    }

    public function limited(){

        $data["limit_blogs"] = DB::select("SELECT id,blog_title,blog_date,blog_img FROM blogs Order by id desc LIMIT 4");
        return $this->responseRequestSuccess($data);
    }
    
    public function deleteBlog($id){
        
        $del = blogs::where('id', $id)->delete();
         $data["all_blogs"] = DB::select("SELECT id,blog_title,blog_date,blog_img FROM blogs Order by id desc");
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
