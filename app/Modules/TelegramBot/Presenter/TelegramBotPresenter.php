<?php

namespace App\Modules\TelegramBot\Presenter;

use Nette;
use Nette\Database\Connection;
use Nette\Database\Explorer;
use Nette\Application\UI\Presenter;

class TelegramBotPresenter extends Presenter
{

    /**
     * @param Connection
     */
   private $database;
   /**
    * @param Explorer
    */
    private $explorer;
   public function __construct(Connection $database, Explorer $explorer){
    $this->database = $database;
    $this->explorer = $explorer;
   }

   public function actionDefault()
   {
       $steam_prices = $this->database->query('SELECT * FROM steam_price');
       foreach ($steam_prices as $steam_price){
           $id = $steam_price->id;
           $name = $steam_price->name;
           $price = $steam_price->price;
           $discount_price = $steam_price->discount_price;
       }
       return $price;
   }
   function send($method, $parameters)
   {
    $keys = $this->database->table('test');
    foreach ($keys as $key) {
        $token = $key->token;
    }
       $bot_token = $token;
       $url = "https://api.telegram.org/bot$bot_token/$method";

       if (!$curl = curl_init()) {
           exit();
       }

       curl_setopt($curl, CURLOPT_POST, true);
       curl_setopt($curl, CURLOPT_POSTFIELDS, $parameters);
       curl_setopt($curl, CURLOPT_URL, $url);
       curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
       $output = curl_exec($curl);
       return $output;
   }
}
$parameters = array(
   "chat_id" => '793314390',
   'text' =>  TelegramBotPresenter::class->actionDefault(),
   //    "image" =>'',
);
TelegramBotPresenter::send('Privet', $parameters);