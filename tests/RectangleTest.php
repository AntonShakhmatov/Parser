<?php

use Tester\Assert;
use Src\Rectangle;

require __DIR__ . '\bootstrap.php';

// obecný oblong
$rect = new Rectangle(10, 20);
Assert::same(200.0, $rect->getArea());  # ověříme očekávané výsledky
Assert::false($rect->isSquare());