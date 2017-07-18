package Math::Business::Lookback::Greeks::Theta;
use strict;
use warnings;

use List::Util qw(max min);
use Math::CDF qw(pnorm);

## VERSION

=head2 lbfixedcall

Theta of a Lookback Fixed Call

=cut

sub lbfixedcall {
    return 0.0;
}

=head2 lbfixedput

Theta of a Lookback Fixed Put

=cut

sub lbfixedput {
    return 0.0;
}

=head2 lbfloatcall

Theta of a Lookback Float Call

=cut

sub lbfloatcall {
    return 0.0;
}

=head2 lbfloatput

Theta of a Lookback Float Put

=cut

sub lbfloatput {
    return 0.0;
}

=head2 lbhighlow

Theta of a Lookback High Low

=cut

sub lbhighlow {
    return 0.0;
}

1;
