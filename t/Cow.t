use Test::More;

BEGIN { use_ok 'Cow' }

is( Cow->sound, 'mooo', 'Cow made the righ sound' );

done_testing;
