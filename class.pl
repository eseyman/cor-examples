#!/usr/bin/perl

use v5.38;
use feature 'class';
no warnings 'experimental::class';

class My::Example 1.234 {
    field $x;

    ADJUST {
        $x = "Hello, world";
    }

    method print_message {
        say $x;
    }
}

My::Example->new->print_message;
