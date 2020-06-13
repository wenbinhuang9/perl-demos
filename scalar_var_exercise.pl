$circle_area = 2 * 3.14159265 * 12.5;

print "the circle area with radius of 12.5 is" . $circle_area . "\n";

print "please input a radius \n";
$radius = <STDIN>;

$circle_area = $radius * 2 * 3.14159265;

print 'circle area is'. $circle_area;

print 'please input a string';
$str = <STDIN>;

print 'please input a number';
$num = <STDIN> ;

$res = $str x $num;

print $res