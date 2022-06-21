<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class amenities extends Model
{
    public $timestamps = FALSE;
	public $table = 'amenities';

    protected $fillable = ['id', 'amen_name', 'icon'];

}

?>
