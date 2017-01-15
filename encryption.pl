#!/usr/bin/env perl                                                             
use warnings;
use strict;



#This program does encryption of a text file. The chosen letters are a and b.

#assign variables accordingly for the first, second argument
my $fileName = $ARGV[0];
my $filetwo = $ARGV[1];

#we open the file for reading
open(IN, $fileName) || die("Cannot Open File");
my(@data) = <IN>;
close IN;

#We assign the first part of the file for attachment
my $partone = $ARGV[0];
$partone =~ s/\.\w{3}$//;

#Output results accordingly to the file with the required attachment and close
open(OUT, ">$partone.enc") || die("Cannot Open File");
foreach my $line (@data)
{
        #perform the requested operation for a, b.
	$line =~ tr/abcdefghijklmnopqrstuvwxyz/zyxwvutsrqponmlkjihgfedcba/;
        $line =~ tr/ABCDEFGHIJKLMNOPQRSTUVWXYZ/ZYXWVUTSRQPONMLKJIHGFEDCBA/;
	print OUT $line;       
}
close OUT;

