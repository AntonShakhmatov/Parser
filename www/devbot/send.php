<?php
$tmpdata = json_decode(file_get_contents("php://input"),true);

$arrdataapi = print_r($tmpdata, true);

file_put_contents('apidata.txt', "Данные от бота: $arrdataapi", FILE_APPEND);

//$parameters = array(
//    "chat_id" => '793314390',
////    "chat_id" => CHAT_ID,
//    "text"=> 'Hello',
////    "image" =>'',
//);
//
//send("sendMessage", $parameters);
//
//function send($method, $parameters){
//    $bot_token = '5615810071:AAGMIW8UA_RT8Dd1o5qV_-NoazcC6LzWzCM';
//    $url = "https://api.telegram.org/bot$bot_token/$method";
//
//    if(!$curl=curl_init()){
//        exit();
//    }
//
//    curl_setopt($curl, CURLOPT_POST, true);
//    curl_setopt($curl, CURLOPT_POSTFIELDS, $parameters);
//    curl_setopt($curl, CURLOPT_URL, $url);
//    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
//    $output = curl_exec($curl);
//    return $output;
//}