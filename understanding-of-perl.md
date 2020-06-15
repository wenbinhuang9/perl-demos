
## What is perl
perl is a language, which is powerful in string processing. And the regular expression in Perl is also a standard implementation.

## Data Type
The data type supported by perl is not that much. There are only two types in Perl, that is number and string. And  number and string are scalar data type, the value of which is single. 

And the perl uses symbol $ to declare a variable ,which is a scalar variable.

## Data Structure
Two data types are supported by Perl, which are list and hashes.  The declaration of list is using % symbol. And the declaration of hash is using @ symbol.

Perl likes using special symbols to denote the data types. 

## Scalar and List Context.
For the expression in Perl, it has two contexts, one is scalar context, another is list context. Different contexts have different meaning , so we should be careful about the context. For example:

$a = %l; ## this is a scalar context, so %l will returns the length of list.

%r = %l; ## this is a list context; 

## subroutine

Subroutine in perl is declared by sub. And the arguments are implicitely sent into the subroutine by default list variable @_ 

As for the return value ,the last statement in subroutine will be evaluated as the return value. 

## IO 

\<STDIN> is the standinput. There are several ways that we can get info from \<STDIN>

1. $line = \<STDIN>
2. @lines = \<STDIN> ## where all lines will be in the list variable
3. while(\<STDIN>) {
    print; 
}

Sure, we can also get info from file .  We can use open function.  There are three types of opening function we can use. 

1. OPEN f1, "fielname"
2. OPEN f1, ">filename";
3. OPEN log, ">>filename";  ## writing to the log by appending. 

## regular expression

Regular expression is the most powerful function provided by Perl. 

Regular expression can be used to match the string, substitue the matched string. 

Here is my summary of regular expression

1. (), can be used for capture and also grouping, when used as grouping , we need to add ?: inner the group, that is (?:)
2. repetition, ?, *, {m, n}
3. sequence and shortcut, abc, \d, \w, \s
4. alternation | 
5. atoms, a, . , [a-zA-Z]
6. Modifiers, /i insensitive, /x ignore whitespace,  and what? 
7. substitue  s/pattern/replacement/g 
