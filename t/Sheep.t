use Test::More;

BEGIN { use_ok 'Sheep' }

is( Sheep->sound, 'baaah', 'Sheep made the righ sound' );

done_testing;
