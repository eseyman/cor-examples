#!/usr/bin/perl 

use v5.38;
use feature 'class';
no warnings 'experimental::class';

class Point {
    field ($x, $y) :reader :param;

    method invert () {
        ($x, $y) = ($y, $x);
    }

    method to_string () {
        return sprintf "(%d, %d)" => $x, $y;
    }
}

my $point = Point->new( x => 23, y => 42 );
say $point->to_string; # (23, 42)

$point->invert;
say $point->to_string; # (42, 23)
