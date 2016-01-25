#!/usr/bin/perl
use Unicode::Unihan;
use Encode;
$uh = Unicode::Unihan->new();
print $uh->ZVariant(decode(q(utf8), q(亮)));
print "\n";
## U+4EAE
print $uh->ZVariant(decode(q(utf8), q(亮)));
print "\n";
## U+F977

