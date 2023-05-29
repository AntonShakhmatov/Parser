<?php

namespace App\Model;

use Nette;
use Nette\Database\Connection;
use PhpQuery\PhpQuery as phpQuery;

class SteamModel
{

    /**
     * @param Connection
     */
    private $database;
    public function __construct(Connection $database)
    {
        $this->database = $database;
    }

    public static function getPage($url)
    {
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Accept: text/javascript, text/html, application/xml, text/xml, */*',
            'Accept-Language: en-US,en;q=0.9,cs;q=0.8,ru;q=0.7',
            'Cache-Control: no-cache',
            'Connection: keep-alive',
            'Content-Type: text/html; charset=UTF-8',
            'Referer: https://store.steampowered.com/search/?specials=1',
            'X-Requested-With: XMLHttpRequest',
            'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36',
        ]);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_COOKIEJAR, __DIR__ . '../Cookies/cookies.txt');
        curl_setopt($ch, CURLOPT_COOKIEFILE, __DIR__ . '../Cookies/cookies.txt');
        $urlContent = curl_exec($ch);
        curl_close($ch);

        $doc = PhpQuery::newDocument($urlContent);
        foreach ($doc->find('#search_resultsRows') as $art) {
            $pq = PhpQuery::pq($art);

//                $name = $pq->find('.responsive_search_name_combined');

            foreach ($pq->find('.responsive_search_name_combined')->find('span.title') as $name) {
                $name = (PhpQuery::pq($name));
                $names[] = $name->html();
            }

            foreach ($pq->find('div.col.search_price.discounted.responsive_secondrow')->find('strike') as $price) {
                $price = (PhpQuery::pq($price));
                $prices[] = $price->text();
            }

            foreach ($pq->find('div.col.search_discount.responsive_secondrow')->find('span') as $discount) {
                $discount = (PhpQuery::pq($discount));
                $disc[] = $discount->text();
            }

            for ($j = 0; $j <= 48; $j++) {
                $discounts[$j] = (float)$prices[$j];
                $discounts[$j] -= ((float)$prices[$j] * -1 * (float)$disc[$j] / 100);
            }
            echo $pq;
        }

        $delete = $this->database->query('TRUNCATE TABLE steam_price');
            for ($i = 0; $i <= 48; $i++) {
                $result = $this->database->query('INSERT INTO steam_price', [ // here can be omitted question mark
                    "id" => $i,
                    "name" => strip_tags($names[$i]),
                    "price" => strip_tags($prices[$i]),
                    "discount_price" => strip_tags($discounts[$i]),
                ]);
            }
        return $url;
    }
}

