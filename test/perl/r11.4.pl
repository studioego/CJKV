#!/usr/bin/perl
 use utf8;      # so literals and identifiers can be in UTF-8
 use v5.12;     # or later to get "unicode_strings" feature
 use strict;    # quote strings, declare variables
 use warnings;  # on by default
 use warnings  qw(FATAL utf8);    # fatalize encoding glitches
 use open      qw(:std :utf8);    # undeclared streams in UTF-8
 use charnames qw(:full :short);  # unneeded in v5.16


use Lingua::JA::Romanize::Japanese;
 my $k2r = Lingua::JA::Romanize::Japanese->new;
 my $str = "㐃";
 say "Japanese for $str is ", $k2r->chars($str);
