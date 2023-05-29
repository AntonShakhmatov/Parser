<?php

namespace App\Model;

use Nette;
use Nette\Database\Connection;
use Facebook\WebDriver\Chrome\ChromeOptions;
use Facebook\WebDriver\Remote\RemoteWebDriver;
use Facebook\WebDriver\Remote\DesiredCapabilities;
use Facebook\WebDriver\WebDriverBy;

class EpicModel
{

    /**
     * @param Connection
     */
    private $database;
    public function __construct(Connection $database){
        $this->database = $database;
    }
    public static function getPage($url)
    {
        // Chromedriver (if started using --port=4444 as above)
        $serverUrl = "http://localhost:4444/wd/hub";

        $desiredCapabilities = DesiredCapabilities::chrome();

// Disable accepting SSL certificates
//        $desiredCapabilities->setCapability(FirefoxDriver::PROFILE, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.exe");

// Add arguments via ChromeOptions to start headless firefox
        $chromeOptions = new ChromeOptions();

        $chromeOptions->addArguments(["data:text/html;charset=utf-8, Chrome/107.0.5304.62"]);

        $desiredCapabilities->setCapability(ChromeOptions::CAPABILITY, $chromeOptions);

        $driver = RemoteWebDriver::create($serverUrl, $desiredCapabilities, 60000, 60000);

//        $driver = new FirefoxDriver;

        $urlDriver = $driver->get('https://store.epicgames.com/en-US/browse?sortBy=currentPrice&sortDir=ASC&priceTier=tierDiscouted&category=Game&count=40&start=0');

//        $driver->wait(5, 3000);

        $main = $urlDriver->findElement(WebDriverBy::tagName('main'));

        $posts = $main->findElement(WebDriverBy::cssSelector('section.css-1ufzxyu'));

        $post = $posts->findElement(WebDriverBy::cssSelector('section.css-zjpm9r'));

        $ul = $post->findElement(WebDriverBy::cssSelector('ul.css-cnqlhg'));

        $lis = $ul->findElements(WebDriverBy::cssSelector('li.css-lrwy1y'));


        foreach ($lis as $li){
            $titles[] = $li->findElement(WebDriverBy::cssSelector('div.css-n55ojx'))->getText();
            foreach($titles as $title){
                $tit[] = $title;
            }
            $prices[] = $li->findElement(WebDriverBy::cssSelector('.css-o1hbmr'))->getText();
            foreach($prices as $price){
                $pri[] = $price;
            }
            $discounts[] = $li->findElement(WebDriverBy::cssSelector('.css-l24hbj'))->getText() . '%';
            foreach($discounts as $discount){
                $disc[] = $discount;
            }
        }

        $delete = $this->database->query('TRUNCATE TABLE epic_price');
        for ($i = 0; $i <= 39; $i++) {
            $result = $this->database->query('INSERT INTO epic_prices', [ // here can be omitted question mark
                "id" => $i,
                "name" => $tit[$i],
                "price" => $pri[$i],
                "discount_price" => $disc[$i]
            ]);
        }

        }
    }

