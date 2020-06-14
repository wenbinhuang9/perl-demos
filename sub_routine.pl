

##subroutine in perl , subroutine is nothing more than a function. 
## Today , I am going to keep doing the perl learning.

sub printHelloWorld {
    print "hello world \n";
}
&printHelloWorld;


sub returnHelloWorld {
    "hello world\n";
}

$h = &returnHelloWorld;
print "$h\n";

## $_ is name for default list, and $_ can be used to parameter assignment of functions. 
sub add {
    my($a, $b);
    ($a, $b) = @_;
    $a + $b;
}
$val = &add(10, 20);
print "$val\n";

sub addlist {
    $val  =  0;
    foreach (@_) {
        $val += $_;
    }
    $val;
}
$val = addlist(1,2,3,4,5);
print "$val \n";

sub max {
    $val = $_[0];
    foreach $i (@_) {
        if ($i > $val) {
            $val = $i;
        }
    }
    $val;
}

$val = &max(4,2,1,10);

print "$val\n";


sub globalAdd{
    ## $n is a global variable here 
    $n = 1;
    $n += 1;
    print "n inner the routine is: $n \n";
}
&globalAdd;
$n += 1;
print "n outside the routine is : $n \n";

## test of local variable
sub localAdd {
    my($nn);
    $nn = 1;
    $nn += 1;
    
    print "n inner the routine is: $n \n";
}
&localAdd;

$nn += 1; ## should be 1 because $nn is local variable here. 
print "n outside the routine is: $nn\n";

