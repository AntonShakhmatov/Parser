<?php

namespace App\Modules\Parser\Presenter;

use Nette;
use App\Model\SteamModel;

class SteamPresenter extends Nette\Application\UI\Presenter
{
    /**
     * @var SteamModel
     */
    public $model;
    public function __construct(SteamModel $model)
    {
        parent::__construct();
        $this->model = $model;
    }

    public function renderDefault()
    {
        $parse_model = $this->model->getPage('https://store.steampowered.com/search/?specials=1');
    }
}
