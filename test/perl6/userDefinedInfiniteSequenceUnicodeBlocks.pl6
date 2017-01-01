my %hash;

%hash<s> := :16('1100') ... :16('11FF');

#show( %hash{ 's'} );

#sub show ( $s ) {
#    .say  for |$s;
#}

for %hash<s> {
    say chr($_);
}
