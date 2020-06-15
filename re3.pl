# application of regular expression in perl. Re is the most powerful function in perl

## 1. substitution , substitution is hugely used in text processing. 
## using s/// operator

$_ = "hello world";
s/world/perl/;
print ; # $_ has been replaced to "hello perl"
print "\n";

## 1.1 How about we want to replace all the word that is world .
$_  = "hello world world";
s/world/perl/g;
print;
print "\n";

## 2. split 

@l = split ",", "123,456,789";
print "@l\n";


## 3. Join 

$s = join "-", @l;
print $s;


