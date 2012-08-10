
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
  "dist_version" => "0.09",
  "license" => "perl",
  "module_name" => "Task::Perinci",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Perinci" => 0,
    "Perinci::Access" => 0,
    "Perinci::Access::Base" => 0,
    "Perinci::Access::HTTP::Client" => 0,
    "Perinci::Access::HTTP::Server" => 0,
    "Perinci::Access::InProcess" => 0,
    "Perinci::Access::Simple::Client" => 0,
    "Perinci::Access::Simple::Server::Pipe" => 0,
    "Perinci::Access::Simple::Server::Socket" => 0,
    "Perinci::BashComplete" => 0,
    "Perinci::Easy" => 0,
    "Perinci::Examples" => 0,
    "Perinci::Exporter" => 0,
    "Perinci::Object" => 0,
    "Perinci::Result::Format" => 0,
    "Perinci::Sub::ConvertArgs::Array" => 0,
    "Perinci::Sub::Dep::pm" => 0,
    "Perinci::Sub::DepChecker" => 0,
    "Perinci::Sub::Gen" => 0,
    "Perinci::Sub::Gen::AccessTable" => 0,
    "Perinci::Sub::Gen::AccessTable::DBI" => 0,
    "Perinci::Sub::Gen::Undoable" => 0,
    "Perinci::Sub::GetArgs::Argv" => 0,
    "Perinci::Sub::GetArgs::Array" => 0,
    "Perinci::Sub::Property::curry" => 0,
    "Perinci::Sub::Property::dies_on_error" => 0,
    "Perinci::Sub::Property::drops_privilege" => 0,
    "Perinci::Sub::Property::result_postfilter" => 0,
    "Perinci::Sub::Property::retry" => 0,
    "Perinci::Sub::Property::timeout" => 0,
    "Perinci::Sub::Wrapper" => 0,
    "Perinci::To::HTML" => 0,
    "Perinci::To::POD" => 0,
    "Perinci::To::Text" => 0,
    "Perinci::Tx::Manager" => 0,
    "Perinci::Use" => 0,
    "Perinci::Util" => 0,
    "Pod::Weaver::Plugin::Perinci" => 0,
    "Riap" => 0,
    "Rinci" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
