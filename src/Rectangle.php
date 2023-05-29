<?php

namespace Src;

class Rectangle
{
    private $width;
    private $height;

    public function __construct(float $width, float $height)
    {
        if ($width < 0 || $height < 0) {
            throw new InvalidArgumentException('The dimension must not be negative.');
        }
        $this->width = $width;
        $this->height = $height;
    }

    public function getArea(): float
    {
        return $this->width * $this->height;
    }

    public function isSquare(): bool
    {
        return $this->width === $this->height;
    }
}