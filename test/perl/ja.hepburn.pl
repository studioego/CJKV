#!/usr/bin/perl
use strict; use warnings;

use utf8;
use Lingua::JA::Hepburn::Passport;


my $hepburn = Lingua::JA::Hepburn::Passport->new;

print $hepburn->romanize("みやがわ"), "\n"; # MIYAGAWA
print $hepburn->romanize("おおの"), "\n"; # ONO
print $hepburn->romanize("かとう"), "\n"; # KATO
print $hepburn->romanize("ゆうこ"), "\n"; # YUKO
print $hepburn->romanize("なんば"), "\n"; # NAMBA
print $hepburn->romanize("はっちょう"), "\n"; # HATCHO
print $hepburn->romanize("東京"), "\n"; #TOKYO
print $hepburn->romanize("とうきょう"), "\n"; #TOKYO
