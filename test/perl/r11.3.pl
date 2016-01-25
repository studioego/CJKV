 use utf8;      # so literals and identifiers can be in UTF-8
 use v5.12;     # or later to get "unicode_strings" feature
 use strict;    # quote strings, declare variables
 use warnings;  # on by default
 use warnings  qw(FATAL utf8);    # fatalize encoding glitches
 use open      qw(:std :utf8);    # undeclared streams in UTF-8
 use charnames qw(:full :short);  # unneeded in v5.16

use Unicode::Unihan;
 my $str   = "漢字";
 my $unhan = Unicode::Unihan->new;
 for my $lang (qw(Mandarin Cantonese Korean JapaneseOn JapaneseKun)) {
     printf "CJK $str in %-12s is ", $lang;
     say $unhan->$lang($str);
 }
