<?php

require_once '../../vendor/autoload.php';

use Nette\Database\Connection;

function actionDefault()
{
    $db = new Connection('mysql:host=db;dbname=test', 'test', 'test');
    $steam_prices[] = array();
    $steam_prices = $db->query('SELECT * FROM steam_price');
    foreach ($steam_prices as $steam_price => $value) {
            $full_array[] = $value['name'] . '   ' . $value['price'] . '   ' . $value['discount_price'] . "\n" . "\n";
    }
    $result = array_merge_recursive($full_array);

    return implode(' ',$result);
}

$parameters = array(
    "chat_id" => 793314390,

    "text"=> actionDefault(),

    'reply_markup' => json_encode(array(
        'inline_keyboard' => array(
            array(
                array(
                    'text' => 'Button 1',
                    'callback_data' => actionDefault(),
                ),

                array(
                    'text' => 'Button 2',
                    'callback_data' => actionDefault(),
                ),
            )
        ),
    )),
);

send("sendMessage", $parameters);

function send($method, $parameters){
    $bot_token = '5615810071:AAGMIW8UA_RT8Dd1o5qV_-NoazcC6LzWzCM';
    $url = "https://api.telegram.org/bot$bot_token/$method";

    if(!$curl=curl_init()){
        exit();
    }

    curl_setopt($curl, CURLOPT_POST, true);
    curl_setopt($curl, CURLOPT_POSTFIELDS, $parameters);
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    $output = curl_exec($curl);
    return $output;
}
