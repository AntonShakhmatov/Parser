<?php

namespace App\Presenters;

use App\Model\PostModel;
use Nette\Application\UI\Presenter;

class PostPresenter extends Presenter
{
    /**
     * @var PostModel
     */
    private $model;

    public function __construct(PostModel $model)
    {
        parent::__construct();
        $this->model = $model;
    }
    public function renderDefault()
    {
        var_dump(json_encode($this->model->getData()));
    }
}