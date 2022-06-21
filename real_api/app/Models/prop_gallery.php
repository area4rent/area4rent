<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class prop_gallery extends Model
{
    public $timestamps = FALSE;
	public $table = 'prop_gallery';

    protected $fillable = ['id', 'prop_id', 'prop_img'];

}

?>
