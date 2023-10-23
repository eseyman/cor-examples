#!/usr/bin/perl 

use feature 'class';
no warnings 'experimental::class';

class Point {
    use Types::Standard qw(is_Int);

    field ( $x, $y ) :reader :param;

    ADJUST {
        my @errors;
        is_Int($x) or push @errors => "x must be an integer, not $x.";
        is_Int($y) or push @errors => "y must be an integer, not $y.";
        if (@errors) {
            die join ', ' => @errors;
        }
    }
}
