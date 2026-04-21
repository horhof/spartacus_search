#!/usr/bin/env perl
use strict;
use warnings;

sub spartacus_search {
    my ($haystack, $needle) = @_;
    print "$_\n" for @$haystack;
    return [@$haystack];
}

my $r1 = spartacus_search([1, 2, 3, 4, 5], 3);
print "[@$r1]\n";
my $r2 = spartacus_search(['a', 'b', 'c'], 'z');
print "[@$r2]\n";
