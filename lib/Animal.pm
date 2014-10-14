package Animal;
our $VERSION = '0.01';

## Minimal code here, there should be documentation around the code bits. 

sub speak {
    my $class = shift;
    print "a $class goes ", $class->sound, "!\n";
}
1;
