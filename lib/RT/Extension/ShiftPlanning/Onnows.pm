#!/usr/bin/perl

use strict;
use warnings;
use 5.10.1;

package RT::Extension::ShiftPlanning::Onnows;

use base 'RT::SearchBuilder';

use RT::Extension::ShiftPlanning::Onnow;

=head1 NAME

  RT::Extension::ShiftPlanning::Onnows - Search class for ::Onnow

See perldoc DBIx::SearchBuilder

=cut

sub _Init {
    my $self = shift;
    $self->Table( RT::Extension::ShiftPlanning::Onnow->Table() );
    return $self->SUPER::_Init(@_);
}

sub NewItem {
    my $self = shift;
    return(RT::Extension::ShiftPlanning::Onnow->new($self->CurrentUser));
}

1;
