use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Nagios::Monitoring::Plugin',
    VERSION_FROM      => 'lib/Nagios/Monitoring/Plugin/Functions.pm', # finds $VERSION
    PREREQ_PM         => {
        'LICENSE'  => 'perl',
        Params::Validate    => 0,
        Class::Accessor     => 0,
        Test::More 	        => 0.62,
        Carp                => 0,
        Config::Tiny        => 0,
        File::Spec          => 0,
        File::Basename      => 0,
        IO::File            => 0,
        Math::Calc::Units   => 0,           # used in N::P::Performance
    }, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Nagios/Monitoring/Plugin.pm', # retrieve abstract from module
       AUTHOR         => 'Nagios Plugin Development Team <nagiosplug-devel@lists.sourceforge.net>') : ()),
    ($ExtUtils::MakeMaker::VERSION >= 6.3002 ? ('LICENSE'  => 'perl_5', ) : ()),
);
