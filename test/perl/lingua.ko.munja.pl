use Lingua::KO::Munja qw/roman2hangul hangul2roman/;
    my $roman = hangul2roman("유사쿠");
    my $hangul = roman2hangul("yusaku");
print "$roman \n";
print "$hangul \n";
