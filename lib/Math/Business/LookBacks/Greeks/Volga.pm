package Math::Business::LookBacks::Greeks::Volga;
use strict;
use warnings;

use List::Util qw(max min);
use Math::CDF qw(pnorm);

our $VERSION = '0.01';

=head2 lbfixedcall

Volga of a Lookback Fixed Call

=cut

sub lbfixedcall {
    return 0.0;
}

=head2 lbfixedput

Volga of a Lookback Fixed Put

=cut

sub lbfixedput {
    return 0.0;
}

=head2 lbfloatcall

Volga of a Lookback Float Call

=cut

sub lbfloatcall {
    return 0.0;
}

=head2 lbfloatput

Volga of a Lookback Float Put

=cut

sub lbfloatput {
    return 0.0;
}

=head2 lbhighlow

Volga of a Lookback High Low

=cut

sub lbhighlow {
    return 0.0;
}

1;
