# exerciese of hash for perl. 
## 1. hash initialization, we can use list to initialize the hash
%h = ('a',1,'b',2, 'c', 3);

## 2. access the hash by key;
print "$h{'a'}\n";

## 3. loop the hash by keys
foreach $k (keys %h) {
    print "$h{$k}\n";
}

## 4. delete the ke
delete $h{'a'};
print "values after deletion\n";
foreach $k (keys %h) {
    print "$h{$k}\n";
}

## 5. update 
$h{'c'} = 4;
print "values after updation\n";
foreach $k (keys %h) {
    print "$h{$k}\n";
}

## 6. get keys and values list from hash.
@k = keys %h;
@v = values %h;

print "keys is : @k\n";
print "values is: @v\n";

## 7. convert hash to list. 
@kvs = %h;

print "keys and values list are: @kvs\n";

## 8. hash used in scalar context

# here %hash is used in scalar context. 
if (%h) {
    print "the hash h is not empty \n";
}

## 9. each function for while loop.
while (($key, $val) = each %h) {
    print "$key, $val\n";
}