<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class videos extends Model
{
    public $timestamps = FALSE;
	public $table = 'videos';

    protected $fillable = ['id', 'video_title', 'video_link'];

}

?>
