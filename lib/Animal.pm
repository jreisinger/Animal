package Animal;
our $VERSION = '0.01';
use parent qw(LivingCreature);

## Minimal code here, there should be documentation around the code bits.

sub sound { die "all Animals should define a sound" }

sub speak {
    my $class = shift;
    my $what  = shift;

    # this isn't Dr. Doolittle! :-)
    die "animals can't talk!" if $what;
    $class->SUPER::speak;
}

1;
