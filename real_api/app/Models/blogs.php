<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use DB;

class blogs extends Model
{
    public $timestamps = FALSE;
	public $table = 'blogs';

    protected $fillable = ['id', 'blog_title', 'blog_date', 'blog_description', 'blog_img', 'blog_banner_img', 'is_active'];

}

?>
