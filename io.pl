print sort <>;

## diamond operator
while (<>) {
    chomp;
    print "Get line by diamond operator: $_\n";
}



## experiemnt with <STDIN>
##read from standard input line by line.

while(defined($line = <STDIN>)) {
    print "this is line: $line";
}

print "a concised programming for reading from stdin";

while(<STDIN>) {
    print "this is line: $_";
}

print "using foreach to get lines from input";
## here <STDIN> will be used as @_
foreach (<STDIN>) {
    print "I saw: $_";
}




