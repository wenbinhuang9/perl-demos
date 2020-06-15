# Update multiple files by regular expression.
# we can update mutilpe files here by using regular expr substitution. 

print "@ARGV";
$^I= ".bat";

while (<>) {
    print "come here\n";
    print;
    s/world/perl/g;
}