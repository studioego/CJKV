#!/usr/bin/perl
 use Unicode::Unihan;
  my $uh = Unicode::Unihan->new;
  print join("," => $uh->Mandarin("\x{5c0f}\x{98fc}\x{5f3e}")), "\n";
