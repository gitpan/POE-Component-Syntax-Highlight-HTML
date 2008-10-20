use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::Syntax::Highlight::HTML',
    license             => 'perl',
    dist_author         => q|Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/POE/Component/Syntax/Highlight/HTML.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'POE'                                      => 0.9999,
        'POE::Component::NonBlockingWrapper::Base' => 0.002,
        'Syntax::Highlight::HTML'                  => 0.04,
    },
    add_to_cleanup      => [ 'POE-Component-Syntax-Highlight-HTML-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
