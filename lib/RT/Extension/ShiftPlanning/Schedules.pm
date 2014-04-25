#!/usr/bin/perl

use strict;
use warnings;
use 5.10.1;

package RT::Extension::ShiftPlanning::Schedules;

use base 'RT::SearchBuilder';

use RT::Extension::ShiftPlanning::Schedule;

=head1 NAME

  RT::Extension::ShiftPlanning::Schedules - Search class for ::Schedule

See perldoc DBIx::SearchBuilder

=cut

sub _Init {
    my $self = shift;
    $self->Table( RT::Extension::ShiftPlanning::Schedule->Table() );
    return $self->SUPER::_Init(@_);
}

sub NewItem {
    my $self = shift;
    return(RT::Extension::ShiftPlanning::Schedule->new($self->CurrentUser));
}

1;
