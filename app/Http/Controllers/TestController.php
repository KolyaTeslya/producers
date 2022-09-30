<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Producers;

class TestController extends Controller
{
    public function test()
    {
        $model = new Producers();

        echo '<pre>';
        var_dump($model);
        echo '</pre>';
        die();
    }
}
