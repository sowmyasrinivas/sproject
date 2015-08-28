#!/usr/bin/perl

use strict;
use warnings;

my $var   = 'name';
my @array = split m//xms, $var;
my $c     = 0;
my %hash  = (
    'a' => 1,
    'e' => 2,
    'i' => 3,
    'o' => 4,
    'u' => 5,
);

foreach (@array) {
    if ( exists $hash{$_} ) {
        $c++;
    }
}

if ( !$c ) {
    print "There are no vowels\n";
}
else {
    print "Total number of vowels: $c \n";
}
