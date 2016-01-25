#!/usr/bin/perl
use utf8;      # so literals and identifiers can be in UTF-8
use v5.12;     # or later to get "unicode_strings" feature
use strict;    # quote strings, declare variables
use warnings;  # on by default
use warnings  qw(FATAL utf8);    # fatalize encoding glitches
use open      qw(:std :utf8);    # undeclared streams in UTF-8
use charnames qw(:full :short);  # unneeded in v5.16
use Unicode::Normalize;
#NFD can be helpful on input
my $str = NFD("위");
#NFC is recommended on output
my $output = NFC($str);
print $output;
print "\n";
