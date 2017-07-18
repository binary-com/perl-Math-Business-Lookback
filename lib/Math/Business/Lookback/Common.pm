package Math::Business::Lookback::Common;

use strict;
use warnings;

## VERSION

=head2 dnorm

Standard normal density function

=cut

sub dnorm {    # Standard normal density function
    my $x  = shift;
    my $pi = 3.14159265359;

    my $value = exp(-$x**2 / 2) / sqrt(2.0 * $pi);

    return $value;
}

1;
