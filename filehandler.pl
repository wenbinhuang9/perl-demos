
open HELLOPERL, "helloperl.txt";

while(<HELLOPERL>){
    print "$_";
}

## init a log file to append the log 
open LOG, ">>log.txt"; ## append to the log 

print LOG "first line for hello perl\n";
print LOG "second line for hello perl\n";


open IN, "<input.txt";
while(<STDIN>){
    print "$_";