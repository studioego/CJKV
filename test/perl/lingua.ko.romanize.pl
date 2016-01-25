use 5.0.10;
 use Lingua::KO::Romanize::Hangul;

    my $conv = Lingua::KO::Romanize::Hangul->new();
my $hangul = "안"; 
   my $roman = $conv->char( $hangul );
    printf( "<ruby><rb>%s</rb><rt>%s</rt></ruby>", $hangul, $roman );
print "$hangul - $roman";
my $string = "안녕하세요";
    my @array = $conv->string( $string );
    foreach my $pair ( @array ) {
        my( $raw, $ruby ) = @$pair;
        if ( defined $ruby ) {
            printf( "<ruby><rb>%s</rb><rt>%s</rt></ruby>", $raw, $ruby );
        } else {
            print $raw;
        }
    }
