package Animal;
our $VERSION = '0.01';
use parent qw(LivingCreature);
use Carp qw(croak);

## Minimal code here, there should be documentation around the code bits.

sub speak {
    my $class = shift;
    my $what  = shift;

    # this isn't Dr. Doolittle! :-)
    die "animals can't talk!" if $what;
    $class->SUPER::speak;
}

sub named {

    # restrict to class method - we expect string (name) argument
    ref( my $class = shift ) and "class name needed";

    my $name = shift;
    my $self = { Name => $name, Color => default_color };
    bless $self, $class;
}

# backstops (should be overridden)
sub default_color { 'brown' }
sub sound         { croak "all Animals (subclasses) should define a sound" }

sub set_name {

    # restict to instance method
    ref( my $self = shift ) or croak "instance variable needed";

    my $name = shift;
    $self->{Name} = $name;
}

sub set_color {

    # restict to instance method
    ref( my $self = shift ) or croak "instance variable needed";

    my $color = shift;
    $self->{Color} = $color;
}

sub name {
    my $either = shift;
    ref $either ? $either->{Name} : "an unnamed $either";
}

sub color {
    my $either = shift;
    ref $either ? $either->{Color} : $either->default_color;
}

1;
