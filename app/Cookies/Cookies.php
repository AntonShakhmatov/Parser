<?php

namespace App\Cookies;

class Cookies
{

    public function cleanFile(): void
    {
        file_put_contents( __DIR__ . '/cookies.txt', "");
//        fclose($f);
    }
}