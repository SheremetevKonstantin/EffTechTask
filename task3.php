<?php

   class Figure
    {
        protected $type = '';
        public function getSquare() {}
        public function getType()
        {
            if ($this->type == '') return 'Неопределен';
            else return $this->type;
        }
    }
    
    class Square extends Figure
    {
        private $side;
        function __construct($a = 0)
        {
            $this->type = '';
            $a = floatval($a);
            if ($a > 0)
            {
                $this->type = 'Square';
                $this->side = $a;
            }
        }
        public function getSquare()
        {
            if (!$this->type) return '';
            return $this->side * $this->side;
        }
       
    }
    
    class Circle extends Figure
    {
        private $radius;
        function __construct($r = 0)
        {
            $this->type = '';
            $r = floatval($r);
            if ($r > 0)
            {
                $this->type = 'Circle';
                $this->radius = $r;   
            }    
                
        } 
        public function getSquare()
        {
            if (!$this->type) return '';
            return M_PI * $this->radius * $this->radius;
        }
             
    }    
    
    class Triangle extends Figure
    {
        private $a, $b, $c;
        function __construct($a = 0, $b = 0, $c = 0)
        {
            $this->type = '';
            $a = floatval($a); $b = floatval($b); $c = floatval($c);
            if (($a > 0 ) && ($b > 0) && ($c > 0)) 
            {
                $p = ($a + $b + $c) / 2;
                if (($p > $a ) && ($p > $b) && ($p > $c)) 
                {
                    $this->type = 'Triangle';
                    $this->a = $a;                    
                    $this->b = $b;  
                    $this->c = $c;  
                }
            }    
        }
        
        public function getSquare()
        {
            if (!$this->type) return '';
            return 0; 
        }
        
              
    }
	
	$Square = new Square(10);
	$Circle = new Circle(10);
	$Triangle = new Triangle(3,4,5);
	
	ob_start();
		
	print $Square->getType();
	print(",");
	print $Square->getSquare();
	print("<br>");
	
	print $Circle->getType();
	print(",");
	print $Circle->getSquare();
	print("<br>");
	
	print $Triangle->getType();
	print(",");
	print $Triangle->getSquare();
	print("<br>");
	
	$output = ob_get_clean();
	file_put_contents('task3.txt', $output);
?>