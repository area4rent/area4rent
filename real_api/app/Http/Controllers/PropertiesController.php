<?php

namespace App\Http\Controllers;


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\properties;
use App\Models\pro_amen_feat_sur;
use App\Models\prop_gallery;
use DB;

class PropertiesController extends Controller
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

    public function singleProperty($id){
        $data["prop_single"] = DB::select("SELECT * FROM property WHERE id = $id");
        $data["prop_fet"] = DB::select("SELECT pro_amen_feat_sur.pro_id, features.id, features.feature_name, features.icon FROM pro_amen_feat_sur INNER JOIN features ON pro_amen_feat_sur.feat_id = features.id WHERE pro_amen_feat_sur.pro_id = $id");
        $data["prop_amen"] = DB::select("SELECT pro_amen_feat_sur.pro_id, amenities.id, amenities.amen_name, amenities.icon FROM pro_amen_feat_sur INNER JOIN amenities ON pro_amen_feat_sur.amen_id = amenities.id WHERE pro_amen_feat_sur.pro_id = $id");
        $data["prop_surr"] = DB::select("SELECT pro_amen_feat_sur.pro_id, surrondings.id, surrondings.sur_name, surrondings.sur_address, surrondings.sur_class, surrondings.sur_distance, surrondings.sur_contact FROM pro_amen_feat_sur INNER JOIN surrondings ON pro_amen_feat_sur.sur_id = surrondings.id WHERE pro_amen_feat_sur.pro_id = $id");
        $data["gallery_limited"] = DB::select("SELECT * FROM `prop_gallery` WHERE prop_id = $id ORDER BY id DESC LIMIT 2");
        $data["gallery_all"] = DB::select("SELECT * FROM `prop_gallery` WHERE prop_id = $id ORDER BY id DESC");
        return $this->responseRequestSuccess($data);
    }

    public function add(Request $request){

        $this->validate($request, [
            'property_name' => 'required',
            'property_address' => 'required',
            'property_desc' => 'required',
            'ready_option' => 'required',
            'img' => 'required',
            'rooms' => 'required',
            'space_size' => 'required',
            'bath_rooms' => 'required',
            'monthly_rent' => 'required',
            'location' => 'required',
            'move_in_date' => 'required'
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
                    'ready_option' => $request->ready_option,
                    'space_size' => $request->space_size,
                    'bath_rooms' => $request->bath_rooms,
                    'monthly_rent' => $request->monthly_rent,
                    'move_in_date' => $request->move_in_date,
                    'location' => $request->location,
                    'user_id' => $request->user_id
                ]);

                $fet_arry = json_decode($request->features);
                $amen_arry = json_decode($request->amenities);
                $surr_arry = json_decode($request->surrondings);

                foreach($fet_arry as $key => $value){
                    $link_table=pro_amen_feat_sur::create([
                        'pro_id' => $prop->id,
                        'feat_id' => $value->id
                     ]);
                }
                foreach($amen_arry as $key => $value){
                    $link_table=pro_amen_feat_sur::create([
                        'pro_id' => $prop->id,
                        'amen_id' => $value->id
                     ]);
                }
                foreach($surr_arry as $key => $value){
                    $link_table=pro_amen_feat_sur::create([
                        'pro_id' => $prop->id,
                        'sur_id' => $value->id
                     ]);
                }


                $file_ary = array();
                $file_count  = count($request->file('files') );
                $a=($request->file('files'));
                $finalArray=array();
                $file_count;
                $host = $_SERVER['HTTP_HOST'];
                for ($i=0; $i<$file_count; $i++) {
                         $fileName = time().$a[$i]->getClientOriginalName();
                         $destinationPath = './public/img_prop';
                         $finalArray[$i]['files']=$destinationPath.$fileName;
                         $a[$i]->move($destinationPath,$fileName);

                         $path_db = "http://$host/real_api/public/img_prop/" . $fileName;
                         $gallery=prop_gallery::create([
                            'prop_id' => $prop->id,
                            'prop_img' => $path_db
                        ]);
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


    public function edit(Request $request){

        if ($request->hasFile('img')) {
            $original_filename = $request->file('img')->getClientOriginalName();
            $original_filename_arr = explode('.', $original_filename);
            $file_ext = end($original_filename_arr);
            $destination_path = './public/img_prop';
            $image = 'U-' . time() . '.' . $file_ext;
            $request->file('img')->move($destination_path, $image);
            $host = $_SERVER['HTTP_HOST'];
            $path = "http://$host/real_api/public/img_prop/" . $image;
        }
        else{
            $path = $request->single_image;
        }

        $property_id = $request->property_id;
        $prop = properties::firstOrNew(['id' => $property_id]);
        $prop->property_name = $request->property_name;
        $prop->property_address = $request->property_address;
        $prop->property_desc = $request->property_desc;
        $prop->img = $path;
        $prop->rooms = $request->rooms;
        $prop->ready_option = $request->ready_option;
        $prop->space_size = $request->space_size;
        $prop->bath_rooms = $request->bath_rooms;
        $prop->monthly_rent = $request->monthly_rent;
        $prop->move_in_date = $request->move_in_date;
        $prop->location = $request->location;
        $prop->save();

        $res=pro_amen_feat_sur::where('pro_id', $property_id)->delete();

        $fet_arry = json_decode($request->features);
        $amen_arry = json_decode($request->amenities);
        $surr_arry = json_decode($request->surrondings);

        foreach($fet_arry as $key => $value){
            $link_table=pro_amen_feat_sur::create([
                'pro_id' => $prop->id,
                'feat_id' => $value->id
             ]);
        }
        foreach($amen_arry as $key => $value){
            $link_table=pro_amen_feat_sur::create([
                'pro_id' => $prop->id,
                'amen_id' => $value->id
             ]);
        }
        foreach($surr_arry as $key => $value){
            $link_table=pro_amen_feat_sur::create([
                'pro_id' => $prop->id,
                'sur_id' => $value->id
             ]);
        }

        return $this->responseRequestSuccess('record saved');
    }


    public function edit_property(){

        $data["all_property"] = DB::select("SELECT * FROM property Order by id desc");
        $data["all_fet"] = DB::select("SELECT id, feature_name FROM features Order by id desc");
        $data["all_surr"] = DB::select("SELECT id, sur_name FROM surrondings Order by id desc");
        $data["all_amen"] = DB::select("SELECT id, amen_name FROM amenities Order by id desc");
        return $this->responseRequestSuccess($data);
    }
    
    
    public function deleteProperty($id){
        
        
        
        $pafs=pro_amen_feat_sur::where('pro_id', $id)->delete();
        $properties=properties::where('id', $id)->delete();
        $gallery = prop_gallery::where('prop_id', $id)->delete();
         return $this->responseRequestSuccess('deleted');
         
    }
    
     public function user_properties($id){
        
         $data["all_property"] = DB::select("SELECT * FROM property WHERE user_id = '$id' Order by id desc");
         return $this->responseRequestSuccess($data);
         
    }





    public function browseOurListing(){
        $data["all_prop_limit"] = DB::select("SELECT * FROM property Order by id desc limit 4");
        return $this->responseRequestSuccess($data);
    }

    public function browseOurListingAll(){
        $data["all_prop_all"] = DB::select("SELECT id, property_name, img, rooms, monthly_rent, bath_rooms, space_size, ready_option FROM property Order by id desc");
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
