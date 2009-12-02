
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'TraitFor-Catalyst-Controller-DoesExtPaging',
  NAME      => 'TraitFor::Catalyst::Controller::DoesExtPaging',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Paginate\ DBIx\:\:Class\:\:ResultSets\ for\ ExtJS\ consumption",
  VERSION   => '0.093350',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Catalyst::Controller::Role::DBIC::DoesPaging" => '0.093200',
    "Catalyst::Runtime" => '5.8',
  },
  test => {TESTS => 't/*.t'}
);

