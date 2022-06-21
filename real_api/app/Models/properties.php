<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class properties extends Model
{
    public $timestamps = FALSE;
	public $table = 'property';

    protected $fillable = ['id', 'user_id', 'property_name', 'property_address', 'property_desc', 'img', 'rooms', 'space_size', 'bath_rooms', 'monthly_rent', 'ready_option','move_in_date','location'];

}

?>
