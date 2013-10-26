#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'RT::Extension::ShiftPlanning' ) || print "Bail out!\n";
}

diag( "Testing RT::Extension::ShiftPlanning $RT::Extension::ShiftPlanning::VERSION, Perl $], $^X" );
