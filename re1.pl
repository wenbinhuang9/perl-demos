
# another functions of regular expression provided by perl. 
## 1. m// operator. In normal, we use // to denote this is perl re. But actually we can use m&&, m.., m%%
## the existence of m// operator is used to ease the pain when the pattern includes special characters like //
## and make the re more readable.
$_ = "http://";

if (m%//%) { ## here // becomes a sequence pattern
    print "matched\n";
}

## Modifier, there are multiple modifiers provided by perl to enable different functions.
## 2  /i,  case insensitive
$_ = "bred";
if (/bRed/i) {
    print "matched\n";
}

## 2.1 make dot can be used to match newline too.
$_= "hello\n";
if(/hello./s) {
    print "matched newline\n"
}

## 2.2 /x , adding whitespace , white space in the pattern will be ignored. 

$_ = "hello world";
if(/ hello \s world /x) {
    print "matched when white space is ignored\n"
}

## 3. Not using default variable $_ , if we don't wan to use default variable, what do we need to do?
$s = "hello world";
if($s =~ /hello/) {
    print "matched when using =~ operator\n";
}

## 4. Multiple line matching 
$s = "first line
second line
third line";

if($s =~ /third/) {
    print "matched when there are multiple lines\n";
}

## match variables, the parenthese can be used to capture the value.
## There are default variable $1, $2, $3 to get the capture.
$s = "hello world";

if($s =~ /(\w*) (\w*)/) {
    print "captured values $1, $2\n";
}

## sometimes we don't want to capture the value when using parenthese.
## we can use ?:

if($s =~ /(?:\w*) (\w*)/) {
    print "captured values $1\n";
}
## somtime we want to give the capture value name.
if($s =~ /(?:\w*) (?<WORLD>\w*)/) {
    print "captured values $+{WORLD}\n";
}

## precedence, this  a regular expression ,it is normal that it also has a precedence.
# first leve, ()
# second level, repetition, *, ?, +, {}
# third , anchors and sequence. What is anchors 
# alternation, |
# atoms, a, 1, [a-z], \w, \d