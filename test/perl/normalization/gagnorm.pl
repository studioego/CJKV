#!/usr/bin/perl
use utf8;      # so literals and identifiers can be in UTF-8
use strict;    # quote strings, declare variables
use warnings;  # on by default
use warnings  qw(FATAL utf8);    # fatalize encoding glitches
use open      qw(:std :utf8);    # undeclared streams in UTF-8
use charnames qw(:full :short);  # unneeded in v5.16
use Unicode::Normalize;
#NFD can be helpful on input
my $str = '각';
printf "original: %s 0x%X\n", $str, ord($str);
my $strNfd = NFD($str);
printf "NFD: %s\n", $strNfd;
my $strNfdConv = $strNfd;
$strNfdConv =~ s/(.)/sprintf("%c   0x%X\n", ord($1), ord($1))/eg;
print  $strNfdConv, "\n";
#NFC is recommended on output
my $strNfc = NFC($strNfd);
printf "NFC: %s 0x%X\n", $strNfc, ord($strNfc);
