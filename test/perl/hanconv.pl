#!/usr/bin/perl
use Lingua::ZH::HanConvert qw(simple trad);
use utf8;
    
my $t = "國"; # Traditional symbol for "country", unicode 22283
      	      # or: my $t = v22283;
my $t2s = simple($t);
printf "Traditional Chinese Character  $t  - Simplified Chinese Character $t2s  \n "; # Simplified "country", å›½ (unicode 22269)
    
$s = "鱼"; # Simplified symbol for "fish", unicode 40060
           # or: $s = v40060;
$s2t = trad($s);
printf "Simplified Chinese Character  $s - Traditional Chinese Character $s2t  \n"; # Traditional "fish"
