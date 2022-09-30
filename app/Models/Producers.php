<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Support\Facades\DB;

class TestModel
{
    public function producers()
    {
        return DB::table('producers')->get();
    }

}
