<?php
namespace App\Modules\Parser\Presenter;

use App\Model\EpicModel;
use Nette;
use App\Model\ParserModel;
use GuzzleHttp\Client;
use GuzzleHttp\RequestOptions;

class EpicPresenter extends Nette\Application\UI\Presenter
{

    /**
     * @param EpicModel
     */
    public $model;

    public function __construct(EpicModel $model)
    {
        parent::__construct();
        $this->model = $model;
    }

    public function renderDefault()
    {
       $parse_model = $this->model->getPage('https://store.epicgames.com/en-US/browse?sortBy=relevancy&sortDir=DESC&priceTier=tierDiscouted&category=Game&count=40&start=0');
       var_dump($parse_model);
    }
}
