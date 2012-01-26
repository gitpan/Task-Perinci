
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
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Task::Perinci",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Perinci" => 0,
    "Perinci::Examples" => 0,
    "Riap" => 0,
    "Rinci" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
