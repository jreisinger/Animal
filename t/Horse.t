use Test::More;

BEGIN { use_ok 'Horse' }

is( Horse->sound, 'neigh', 'Horse made the righ sound' );

done_testing;
