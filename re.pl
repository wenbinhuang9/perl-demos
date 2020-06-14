# regular expression in perl
# regular expression is the most powerful functions provided by the perl. 
# And the implementation of re in perl is a standard for other language. 

## 1. sequence pattern 
$_ = "hellooooo perl perl perl perl";

if(/perl/) { ## we use two slashes to denote a regualr expression pattern, this is the most simle pattern called sequence. 
    print "matched \n";
}

## from the code above, we know that the pattern /perl/ will match $_ by default .

## 2. wildcard denoted by . , which means any single character. 

if (/per./) {
    print "matched \n";
}

## 3. repetition *, match the previsous char for zero or more times.
if (/hello*/) {
    print "matched \n";
}

## 3.1 repetition ?, match 0 or 1 times

## 3.2 {1,3} match 1 to 3 times.

## 3.3 {1,} match the minimum times of 1

## 3.4 {, 3} match the maxiumum times of 3

## 4. option  or denoted by |
if (/nohello|perl/) {
    print "matched\n";
}

## 5. charaters class, denoted by []
if (/[perl][perl]/) {
    print "matched\n";
}

## 5.1 [a-z] any lower charas, [0-9] any digits
## 5. short cur for character class .
## some useful shortcuts here, including \s any whitespace, \d any digits, \w any words?  
if (/\w/) {
    print "matched\n";
}

## 6 group, use a string as a group

if (/hello*(perl)*/) { ## here perl is used as a group, which is repeated for multiple times.
    print "matched\n";
}

## 7 another powerful functions ,repeated of groups
$_ = "abba";
if (/(b)\1/) { ## (b) is the first group, and \1 will repeat the first group by keeping the same characters with the chars matched by the first group.
    print "matched\n";
}

if (/(a)(b)\2\1/) { ## \2 will match b, and \1 match a.
    print "matched\n";
}

