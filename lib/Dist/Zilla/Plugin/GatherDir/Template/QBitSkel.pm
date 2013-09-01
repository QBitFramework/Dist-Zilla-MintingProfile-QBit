package Dist::Zilla::Plugin::GatherDir::Template::QBitSkel;

use Moose;
extends 'Dist::Zilla::Plugin::GatherDir::Template';

sub package_name {
    my ($self) = @_;

    my $name = lc($self->zilla->name);
    $name =~ s/::/-/g;

    return "lib${name}-perl";
}

sub copyright {
    my ($self) = @_;

    return ([localtime(time)]->[5] + 1900) . ' ' . $self->zilla->authors->[0];
}

1;
