#!/usr/bin/perl
use strict;
use warnings;


#Assign variables accordingly 
my $fileName = $ARGV[0];
my $filetwo = $ARGV[1];

#open the file for reading
open(IN, $fileName) || die("Cannot Open File");
my(@data) = <IN>;
close IN;


#assign the first part of the file to attach extension
my $partone = $ARGV[0];
$partone =~ s/\.\w{3}$//;

#Output results to file with required attachment
open(OUT, ">$partone.dec") || die("Cannot Open File");

#perform operation for each line
foreach my $line (@data)
{
    #reverse the operation in the encryption file
    $line =~ tr/zyxwvutsrqponmlkjihgfedcba/abcdefghijklmnopqrstuvwxyz/;
    $line =~ tr/ZYXWVUTSRQPONMLKJIHGFEDCBA/ABCDEFGHIJKLMNOPQRSTUVWXYZ/;
    #print out the results
    print OUT $line;

}
#close the file
close OUT;
