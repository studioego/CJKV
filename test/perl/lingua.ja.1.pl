#!/usr/bin/perl
use Lingua::JA::Romanize::Japanese;

my $conv = Lingua::JA::Romanize::Japanese->new();

my $kanji = "字";  # one CJK character
my $roman = $conv->char($kanji);
printf(" %s - %s \n", $kanji, $roman);

