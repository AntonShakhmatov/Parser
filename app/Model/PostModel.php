<?php

namespace App\Model;

use Nette;
use Nette\Database\Explorer;

class PostModel extends BaseModel
{
    /**
     * @var Explorer
     */
    private $explorer;

    public function __construct(Explorer $explorer)
    {
        $this->explorer = $explorer;
    }

    public function getData()
    {
        return $this->explorer->table('posts')->fetchAll();
    }
}