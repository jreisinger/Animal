package LivingCreature;
our $VERSION = '0.01';

sub speak {
    my $class = shift;
    my $what  = shift;
    if ($what) {
        print "a $class goes $what!\n";
    } else {
        print "a $class goes ", $class->sound, "!\n";
    }
}

1;
