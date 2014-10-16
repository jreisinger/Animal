#!perl
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

BEGIN { use_ok 'Animal' or print "Bail out!\n" }

diag("Testing Animal $Animal::VERSION, Perl $], $^X");

# They have to be defined in Animal.pm
ok( defined &Animal::speak, 'Animal::speak is defined' );
ok( defined &Animal::sound, 'Animal::sound is defined' );

# Check that sound() dies
eval { my $duck = Animal->sound } or my $at = $@;
like $at, qr/all Animals should define a sound/,
  'sound() dies if not defined in the subclass';

# Check that speak() dies
eval { my $duck = Animal->speak } or $at = $@;
like $at, qr/all Animals should define a sound/,
  'speak() dies if sound() not defined in the subclass';

{

    package Duck;
    use parent qw(Animal);
    sub sound { 'quack' }
}

ok( Duck->speak, 'An Animal subclass does the right thing' );

done_testing;
