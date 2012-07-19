
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Install all Perinci:: modules",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Task-Perinci",
  "dist_version" => "0.07",
  "license" => "perl",
  "module_name" => "Task::Perinci",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Perinci" => 0,
    "Perinci::Access::HTTP::Client" => 0,
    "Perinci::Access::HTTP::Server" => 0,
    "Perinci::Access::TCP::Client" => 0,
    "Perinci::Access::TCP::Server" => 0,
    "Perinci::BashComplete" => 0,
    "Perinci::Examples" => 0,
    "Perinci::Object" => 0,
    "Perinci::Sub::ConvertArgs::Array" => 0,
    "Perinci::Sub::DepChecker" => 0,
    "Perinci::Sub::Gen::AccessTable" => 0,
    "Perinci::Sub::Gen::AccessTable::DBI" => 0,
    "Perinci::Sub::Gen::Undoable" => 0,
    "Perinci::Sub::GetArgs::Argv" => 0,
    "Perinci::Sub::GetArgs::Array" => 0,
    "Perinci::Sub::Wrapper" => 0,
    "Perinci::Sub::property::drops_privilege" => 0,
    "Perinci::Sub::property::result_postfilter" => 0,
    "Perinci::Sub::property::retry" => 0,
    "Perinci::Sub::property::timeout" => 0,
    "Perinci::To::HTML" => 0,
    "Perinci::To::POD" => 0,
    "Perinci::To::Text" => 0,
    "Perinci::Use" => 0,
    "Pod::Weaver::Plugin::Perinci" => 0,
    "Riap" => 0,
    "Rinci" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
