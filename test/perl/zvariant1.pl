#!/usr/bin/perl
use Unicode::Unihan;
use Encode;
$uh = Unicode::Unihan->new();
print $uh->ZVariant(decode(q(utf8), q(國)));
print "\n";
print $uh->ZVariant(decode(q(utf8), q(国)));
print "\n";
print $uh->ZVariant(decode(q(utf8), q(国)));
print "\n";
print $uh->ZVariant(decode(q(utf8), q(囯)));
print "\n";
print $uh->ZVariant(decode(q(utf8), q(囻)));
print "\n";
