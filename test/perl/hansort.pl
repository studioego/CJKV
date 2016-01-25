#!/usr/bin/perl
use 5.010;
use utf8;
use Encode;
use Unicode::Unihan;
my $u = Unicode::Unihan->new;

say encode_utf8 sprintf "Character $_ has the radical #%s and %d residual strokes." , split /[.]/, $u->RSUnicode($_) for qw(工 然 一 人 三 古 二);
