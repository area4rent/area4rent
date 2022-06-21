<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class surroundings extends Model
{
    public $timestamps = FALSE;
	public $table = 'surrondings';

    protected $fillable = ['id', 'sur_name', 'sur_address', 'sur_class', 'sur_distance', 'sur_contact', 'icon'];

}

?>
