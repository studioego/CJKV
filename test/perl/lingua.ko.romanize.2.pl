#!/usr/bin/perl
#!/usr/bin/perl
use utf8;      
use v5.12;   
use strict;    
use warnings;  
use warnings  qw(FATAL utf8);    
use open      qw(:std :utf8);    
use Lingua::KO::Romanize::Hangul;
my $hangul= "한";
my $string = "나랏말씀이 중국(中國)과 달라";
my $conv = Lingua::KO::Romanize::Hangul->new();
my $roman = $conv->char( $hangul );
printf("한글: %s - Romanized: %s \n", $hangul, $roman );
my @array = $conv->string( $string );
foreach my $pair ( @array ) {
    my( $han, $roman ) = @$pair;
    if ( defined $roman ) {
        printf( "한글: %s - Romanized: %s \n", $han, $roman );
    } else {
        print $han;
    }
}

