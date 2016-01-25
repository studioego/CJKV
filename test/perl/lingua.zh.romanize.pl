#!/usr/bin/perluse utf8;     
use v5.12;  
use strict;   
use utf8;
use warnings; 
use warnings  qw(FATAL utf8);   
use open      qw(:std :utf8);   
use Lingua::ZH::Romanize::Pinyin;

my $conv = Lingua::ZH::Romanize::Pinyin->new();
my $hanji = "中";
my $roman = $conv->char( $hanji );
printf( " %s - %s \n", $hanji, $roman );
my $string = "韓國 韩国 漢語汉语 東京 东京";
my @array = $conv->string( $string );
foreach my $pair ( @array ) {
    my( $raw, $ruby ) = @$pair;
    if ( defined $ruby ) {
        printf( " %s － %s \n", $raw, $ruby );
    } else {
        print $raw;
    }
}
