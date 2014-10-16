package Mouse;
our $VERSION = '0.01';

use parent qw(Animal);
## ... the same as:
# use Animal;
# our @ISA = qw(Animal);

sub sound { 'beep' }

sub speak {
    my $class = shift;

    # search all superclasses (classed listed in @ISA)
    $class->SUPER::speak;

    print "[but you can barely hear i!]\n";
}
1;
