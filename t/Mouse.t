use Test::More;

BEGIN { use_ok 'Mouse' }

is( Mouse->sound, 'beep', 'Mouse made the righ sound' );

done_testing;
