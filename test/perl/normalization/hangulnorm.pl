#!/usr/bin/perl
use utf8;      # so literals and identifiers can be in UTF-8
use strict;    # quote strings, declare variables
use warnings;  # on by default
use warnings  qw(FATAL utf8);    # fatalize encoding glitches
use open      qw(:std :utf8);    # undeclared streams in UTF-8
use charnames qw(:full :short);  # unneeded in v5.16
use open ':std', ':encoding(UTF-8)';
use Unicode::Normalize;
#NFD can be helpful on input
my $str = '한글';
printf "original: %s\n", $str;
my $originStr = $str;
$originStr =~ s/(.)/sprintf("0x%X ",ord($1))/eg;
print $originStr, "\n";
my $strNfd = NFD($str);
printf "NFD: %s\n", $strNfd;
my $confStrNfd = $strNfd;
$confStrNfd =~ s/(.)/sprintf("0x%X ",ord($1))/eg;
print $confStrNfd, "\n";
#NFC is recommended on output
my $strNfc = NFC($strNfd);
printf "NFC: %s\n", $strNfc;
my $confStrNfc = $strNfc;
$confStrNfc =~ s/(.)/sprintf("0x%X ",ord($1))/eg;
print $confStrNfc, "\n";


