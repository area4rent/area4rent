<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class features extends Model
{
    public $timestamps = FALSE;
	public $table = 'features';

    protected $fillable = ['id', 'feature_name', 'icon'];

}

?>
