#!/usr/bin/perl
 use utf8;      # so literals and identifiers can be in UTF-8
 use v5.12;     # or later to get "unicode_strings" feature
 use strict;    # quote strings, declare variables
 use warnings;  # on by default
 use warnings  qw(FATAL utf8);    # fatalize encoding glitches
 use open      qw(:std :utf8);    # undeclared streams in UTF-8
 use charnames qw(:full :short);  # unneeded in v5.16


use Lingua::JA::Romanize::Japanese;
use Lingua::KO::Romanize::Korean;
use Lingua::ZH::Romanize::Pinyin;

my $j2r = Lingua::JA::Romanize::Japanese->new;
my $k2r = Lingua::KO::Romanize::Korean->new;
my $p2r = Lingua::ZH::Romanize::Pinyin->new;
 
my $str = "東京";
say "Japanese for $str is ", $j2r->chars($str);
say "Korean for $str is ", $k2r->chars($str);
say "Chinese for $str is ", $p2r->chars($str);
