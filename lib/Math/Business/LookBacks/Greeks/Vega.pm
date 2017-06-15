package Math::Business::LookBacks::Greeks::Vega;
use strict;
use warnings;

use List::Util qw(max min);
use Math::CDF qw(pnorm);

our $VERSION = '0.01';

=head2 lbfixedcall

Vega of a Lookback Fixed Call

=cut

sub lbfixedcall {
    return 0.0;
}

=head2 lbfixedput

Vega of a Lookback Fixed Put

=cut

sub lbfixedput {
    return 0.0;
}

=head2 lbfloatcall

Vega of a Lookback Float Call

=cut

sub lbfloatcall {
    return 0.0;
}

=head2 lbfloatput

Vega of a Lookback Float Put

=cut

sub lbfloatput {
    return 0.0;
}

=head2 lbhighlow

Vega of a Lookback High Low

=cut

sub lbhighlow {
    return 0.0;
}

1;
