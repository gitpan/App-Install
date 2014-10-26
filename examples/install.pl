#!/usr/bin/perl

use strict;
use warnings;
use MyInstall;
use File::Temp qw(tempdir);

my $template_dir = "templates/";
my $install_dir  = tempdir();
print "Templates are in directory $template_dir\n";
print "Installing into temporary directory $install_dir\n";

MyInstall->install(
    install_dir => $install_dir,
    template_dir => $template_dir,
    data => { baz => 'quux' },
);

