
@array = 5..6;
print "@array\n";

## push and pop operation used for stack , push and pop works with the end of the element
$last = pop(@array);
print "poping elment is " . $last . "\n";

push(@array, 10);

print "pushing 10, and new array is @array\n";

## shift and unshift operators, shift and unshift is operated on the first element.
## if shift occurs, it will delete the first element in list and return the deleted element.
## if unshift occurs, it adds the element into the current array.
@array = qw#dino fred barney #;
$a = shift(@array);
print "$a\n";
$b = shift(@array);
print "$b\n";
shift @array; ## now the array is empty
$c = shift(@array);  ## $c gets undef.
print "$c \n";

unshift(@array, qw(1 2 3));
print "@array\n";

## splice operator, slice accepting 4 arguments, first is array, second is a start postion, the rest of two are optional.
@array = qw( pebbles dino fred barney betty );
@removed = splice @array, 2;
print "array after removeing: @array\n";
print "removed array is: @removed\n";

@array = qw( pebbles dino fred barney betty );
@remove = splice @array, 1, 2;  ## the sec param is start postion to remove , the third is the length;
print "removed array is: @remove \n";

@array = qw( pebbles dino fred barney betty );

@remove = splice @array, 1, 2, qw(banana);  ## the sec param is start postion to remove , the third is the length;
## the fourth is to replace the removed one.

print "array after removed is: @array\n";

## get the element from perl by index. 
print "the second element in array is: $array[1] \n";

# for each control

foreach $i (@array){
    print "the current element in arrays is : $i\n";
}

# reverse and sorted
@array = 1..5;
print "the current array is: @array\n";

@array = reverse(@array);
print "the array after reverse is : @array\n";

@array = sort(@array);
print "the array after sort is :@array\n";

## scalar and list context. The list can be operated as scalar or list, which depends on the specific expression, we call it context of expression.

@people = qw(fre barney betty);
@sored = sort( @people);  #list context
print "sorted people: @sored\n";
$number = @people;
print "num of people is :  $number\n"; # scalar context.

## scalar and list context in reverse

@fruit = qw( Apple Banana Cherries);
@r_fruit = reverse(@fruit); ## list context 
print "reversed fruit in list context: @r_fruit\n";
$scalar_fruit = reverse(@fruit);  ## list expression in scalar context 
print "reversed fruit in scalar context: $scalar_fruit\n";

## Here are exercises. 
@lines = <STDIN>;
@reverse_lines = reverse(@lines);
print "this is reverse of inputs: @reverse_lines\n";


