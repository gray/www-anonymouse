use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'WWW::Anonymouse',
    AUTHOR        => 'gray <gray@cpan.org>',
    LICENSE       => 'perl',
    VERSION_FROM  => 'lib/WWW/Anonymouse.pm',
    ABSTRACT_FROM => 'lib/WWW/Anonymouse.pm',
    PREREQ_PM     => {
        'Carp'                  => 0,
        'LWP::UserAgent'        => 0,
        'Test::More'            => 0,
        'URI'                   => 0,
    },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (
        META_MERGE => {
            resources => {
                repository => 'http://github.com/gray/www-anonymouse',
            }
        }
    ) : () ),
    dist          => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean         => { FILES => 'WWW-Anonymouse-*' },
);
