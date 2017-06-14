package Math::Business::LookBacks::Greeks::Delta;
use strict;
use warnings;

use List::Util qw(max min);
use Math::CDF qw(pnorm);

=head2 lbfixedcall

Delta of a Lookback Fixed Call

=cut

sub lbfixedcall {
    return 0.0;
}

=head2 lbfixedput

Delta of a Lookback Fixed Put

=cut

sub lbfixedput {
    return 0.0;
}

=head2 lbfloatcall

Delta of a Lookback Float Call

=cut

sub lbfloatcall {
    return 0.0;
}

=head2 lbfloatput

Delta of a Lookback Float Put

=cut

sub lbfloatput {
    return 0.0;
}

=head2 lbhighlow

Delta of a Lookback HighLow

=cut

sub lbhighlow {
    return 0.0;
}

sub _l_min_delta {
    my ($S, $K, $t, $r_q, $mu, $sigma, $S_min) = @_;

    my $a1 = (log($S / $S_min) + ($mu + 0.5 * ($sigma ^ 2)) * $t) / ($sigma * sqrt($t));
    my $a2 = (log($S / $S_min) + ($mu - 0.5 * ($sigma ^ 2)) * $t) / ($sigma * sqrt($t));

    my $l_min_delta;

    if ($mu == 0) {
        $l_min_delta = exp(-$r_q * $t) * $sigma * sqrt($t) * dnorm(-$a1);
        $l_min_delta = $l_min_delta + exp(-$r_q * $t) * (pnorm($a1) - 1) * (log($S / $S_min) + 1 + (0.5 * ($sigma ^ 2) * $t));
    } else {
        $l_min_delta = (exp(($mu - $r_q) * $t) * 0.5 * $sigma ^ 2 * pnorm(-$a1)) / $mu;
        $l_min_delta = $l_min_delta - 1 +
            0.5 * $sigma ^ 2 * exp(-$r_q * $t) * ($S / $S_min) ^ (-2 * $mu / ($sigma ^ 2)) * pnorm(-$a1 + (2 * $mu * sqrt($t)) / $sigma);
    }

    return $l_min_delta;
}

sub _l_max_delta {
    my ($S, $K, $t, $r_q, $mu, $sigma, $S_max) = @_;

    my $b1 = (log($S / $S_max) + ($mu + 0.5 * ($sigma ^ 2)) * $t) / ($sigma * sqrt($t));
    my $b2 = (log($S / $S_max) + ($mu - 0.5 * ($sigma ^ 2)) * $t) / ($sigma * sqrt($t));

    my $l_max_delta;

    if ($mu == 0) {
        $l_max_delta = exp(-$r_q * $t) * $sigma * sqrt($t) * dnorm($b1);
        $l_max_delta = $l_max_delta + exp(-$r_q * $t) * pnorm($a1) * (log($S / $S_max) + 1 + (0.5 * ($sigma ^ 2) * $t));
    } else {
        $l_max_delta =
            1 + 0.5 * $sigma ^ 2 * exp(-$r_q * $t) * ($S / $S_max) ^ (-2 * $mu / ($sigma ^ 2)) * pnorm($b1 - (2 * $mu * sqrt($t)) / $sigma);
    }

    return $l_max_delta;
}

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
