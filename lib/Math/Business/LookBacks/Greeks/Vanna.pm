package Math::Business::LookBacks::Greeks::Vanna;
use strict;
use warnings;

use List::Util qw(max min);
use Math::CDF qw(pnorm);

sub lbfixedcall {
    return 0.0;
}

sub lbfixedput {
    return 0.0;
}

sub lbfloatcall {
    return 0.0;
}

sub lbfloatput {
    return 0.0;
}

sub lbhighlow {
    return 0.0;
}

1;
