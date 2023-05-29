<?php

namespace App\Modules\CleanCookies\Presenter;

use App\Cookies\Cookies;
use Nette;

class CleanCookiesPresenter extends Nette\Application\UI\Presenter
{

     /**
      * @param Cookies
      */

     private $cookies;

public function __construct(Cookies $cookies)
{
    $this->cookies = $cookies;
}

public function renderDefault()
{
    $this->cookies->cleanFile();
}

}
