
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Install all Perinci-related modules",
  "AUTHOR" => "Steven Haryanto <stevenharyanto\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-Perinci",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::Perinci",
  "PREREQ_PM" => {
    "Gen::Test::Rinci::FuncResult" => 0,
    "Perinci" => 0,
    "Perinci::Access" => 0,
    "Perinci::Access::Base" => 0,
    "Perinci::Access::HTTP::Client" => 0,
    "Perinci::Access::HTTP::Server" => 0,
    "Perinci::Access::Perl" => 0,
    "Perinci::Access::Simple::Client" => 0,
    "Perinci::Access::Simple::Server" => 0,
    "Perinci::BashComplete" => 0,
    "Perinci::CmdLine" => 0,
    "Perinci::Easy" => 0,
    "Perinci::Examples" => 0,
    "Perinci::Examples::Bin" => 0,
    "Perinci::Exporter" => 0,
    "Perinci::Gen::ForModule" => 0,
    "Perinci::Object" => 0,
    "Perinci::Result::Format" => 0,
    "Perinci::Sub::ConvertArgs::Array" => 0,
    "Perinci::Sub::Dep::pm" => 0,
    "Perinci::Sub::DepChecker" => 0,
    "Perinci::Sub::Gen" => 0,
    "Perinci::Sub::Gen::AccessTable" => 0,
    "Perinci::Sub::Gen::AccessTable::DBI" => 0,
    "Perinci::Sub::GetArgs::Argv" => 0,
    "Perinci::Sub::GetArgs::Array" => 0,
    "Perinci::Sub::Property::curry" => 0,
    "Perinci::Sub::Property::dies_on_error" => 0,
    "Perinci::Sub::Property::drops_privilege" => 0,
    "Perinci::Sub::Property::retry" => 0,
    "Perinci::Sub::Property::timeout" => 0,
    "Perinci::Sub::PropertyUtil" => 0,
    "Perinci::Sub::Wrapper" => 0,
    "Perinci::To::HTML" => 0,
    "Perinci::To::POD" => 0,
    "Perinci::To::Text" => 0,
    "Perinci::Tx::Manager" => 0,
    "Perinci::Use" => 0,
    "Perinci::Util" => 0,
    "Perinci::Web" => 0,
    "Pod::Weaver::Plugin::Perinci" => 0,
    "Riap" => 0,
    "Rinci" => 0,
    "Rinci::Schema" => 0,
    "Test::Rinci" => 0
  },
  "TEST_REQUIRES" => {
    "Capture::Tiny" => 0,
    "Test::More" => "0.88",
    "blib" => 0
  },
  "VERSION" => "0.15",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



