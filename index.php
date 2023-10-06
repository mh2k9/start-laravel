<?php

class MyClass {

    public $number1;
    public $number2;
    private $sum;

    public function __construct()
    {
        $this->sum = $this->number1 + $this->number2;
    }

    public function getSum() {
        print "<pre>";
        echo "The sum of $this->number1 and $this->number2 is $this->sum.";
        print "</pre>";
    }
}


$obj = new MyClass;
$obj->number1 = rand(1, 100);
$obj->number2 = rand(1, 100);
$obj->getSum();

?>