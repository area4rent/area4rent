<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class pro_amen_feat_sur extends Model
{
    public $timestamps = FALSE;
	public $table = 'pro_amen_feat_sur';

    protected $fillable = ['id', 'pro_id', 'amen_id', 'feat_id', 'sur_id'];

}

?>
