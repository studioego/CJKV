my %hash;

%hash<s> := 7 ... 10;
%hash<t> := 0 ...  3;
%hash<u> := 137 ...  *;

show( %hash{ time %% 2 ?? 't' !! 's' } );

sub show ( $s ) {
	.say for |$s;
	}
