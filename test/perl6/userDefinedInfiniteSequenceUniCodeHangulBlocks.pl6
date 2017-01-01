#!/usr/bin/env perl6
my %hash;

%hash<hangulJamo> := :16('1100') ... :16('11FF');
%hash<hangulSyllables> := :16('AC00') ... :16('D7AF');

#show( %hash{ 's'} );

#sub show ( $s ) {
#    .say  for |$s;
#}

for %hash<hangulJamo> {
    say  "U+",($_).base(16), " ",  chr($_);
}
for %hash<hangulSyllables> {
    say  "U+",($_).base(16), " ",  chr($_);
}
