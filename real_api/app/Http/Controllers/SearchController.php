<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\properties;
use App\Models\pro_amen_feat_sur;
use App\Models\prop_gallery;
use DB;

class SearchController extends Controller
{

    // test
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function findProperty($val){
        $val2 = rawurldecode($val);
        $data["prop_search"] = DB::select("SELECT id, property_address FROM property WHERE property_address LIKE '%$val2%' ORDER by id DESC;");
        return $this->responseRequestSuccess($data);
    }


    public function SearchFilter(Request $request){

        $avail = $request->data['avail'];
        $coming = $request->data['coming'];
        $cons = $request->data['cons'];
        $move = $request->data['move'];

        $monthly_price = $request->data['monthly_price'];
        $baths = $request->data['baths'];
        $beds = $request->data['beds'];
        $search = $request->data['search'];

        if($avail ==null && $coming ==false && $cons==false && $move==false){
            $data["prop_search"] = DB::select("SELECT * From property WHERE property_address LIKE '%$search%' AND monthly_rent >= $monthly_price AND rooms >= $beds AND bath_rooms >= $baths;");
        }else{
            $data["prop_search"] = DB::select("SELECT * From property WHERE property_address LIKE '%$search%' AND monthly_rent >= $monthly_price AND rooms >= $beds AND bath_rooms >= $baths  AND ready_option IN ('$cons','$avail','$coming','$move');");
        }

         return $this->responseRequestSuccess($data);
    }

    public function add(Request $request){

        $this->validate($request, [
            'property_name' => 'required',
            'property_address' => 'required',
            'property_desc' => 'required',
            'img' => 'required',
            'rooms' => 'required',
            'space_size' => 'required',
            'bath_rooms' => 'required',
            'monthly_rent' => 'required'
        ]);

        try {

            if ($request->hasFile('img')) {
                $original_filename = $request->file('img')->getClientOriginalName();
                $original_filename_arr = explode('.', $original_filename);
                $file_ext = end($original_filename_arr);
                $destination_path = './public/img_prop';
                $image = 'U-' . time() . '.' . $file_ext;
                $request->file('img')->move($destination_path, $image);
                $host = $_SERVER['HTTP_HOST'];
                $path = "http://$host/real_api/public/img_prop/" . $image;

                $prop=properties::create([
                    'property_name' => $request->property_name,
                    'property_address' => $request->property_address,
                    'property_desc' => $request->property_desc,
                    'img' => $path,
                    'rooms' => $request->rooms,
                    'space_size' => $request->space_size,
                    'bath_rooms' => $request->bath_rooms,
                    'monthly_rent' => $request->monthly_rent,
                ]);

                $fet_arry = json_decode($request->features);
                $amen_arry = json_decode($request->amenities);
                $surr_arry = json_decode($request->surrondings);

                foreach($fet_arry as $key => $value){
                    $link_table=pro_amen_feat_sur::create([
                        'pro_id' => $prop->id,
                        'feat_id' => $value
                     ]);
                }
                foreach($amen_arry as $key => $value){
                    $link_table=pro_amen_feat_sur::create([
                        'pro_id' => $prop->id,
                        'amen_id' => $value
                     ]);
                }
                foreach($surr_arry as $key => $value){
                    $link_table=pro_amen_feat_sur::create([
                        'pro_id' => $prop->id,
                        'sur_id' => $value
                     ]);
                }

                foreach($request['files'] as $single_file){
                    $original_filename = $single_file->getClientOriginalName();
                    $original_filename_arr = explode('.', $original_filename);
                    $file_ext = end($original_filename_arr);
                    $destination_path = './public/img_prop';
                    $image = 'U-' . time() . '.' . $file_ext;
                    $single_file->move($destination_path, $image);
                    $host = $_SERVER['HTTP_HOST'];
                    $path2 = "http://$host/real_api/public/img_prop/" . $image;

                    $gallery=prop_gallery::create([
                        'prop_id' => $prop->id,
                        'prop_img' => $path2]);
                }

                $data["all_property"] = DB::select("SELECT * FROM property  Order by id desc");
                return $this->responseRequestSuccess($data);
            }

        }
        catch(\Throwable $e) {
            return $this->responseRequestSuccess($e);
        }
    }

    public function all(){

        $data["all_property"] = DB::select("SELECT * FROM property Order by id desc");
        $data["all_fet"] = DB::select("SELECT id, feature_name FROM features Order by id desc");
        $data["all_surr"] = DB::select("SELECT id, sur_name FROM surrondings Order by id desc");
        $data["all_amen"] = DB::select("SELECT id, amen_name FROM amenities Order by id desc");
        return $this->responseRequestSuccess($data);
    }

    public function browseOurListing(){
        $data["all_prop_limit"] = DB::select("SELECT * FROM property Order by id desc limit 4");
        return $this->responseRequestSuccess($data);
    }

    public function browseOurListingAll(){
        $data["all_prop_all"] = DB::select("SELECT * FROM property Order by id desc");
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
