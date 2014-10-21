package TestApp::Schema::Result::Stations;
our $VERSION = '0.093350';


use parent 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components('Core');
__PACKAGE__->table('Station');
__PACKAGE__->add_columns(qw/ id bill ted /);
__PACKAGE__->set_primary_key('id');

sub TO_JSON {
   my $self = shift;
   return { map { $_ => $self->$_ } qw{id bill} };
}
1;
