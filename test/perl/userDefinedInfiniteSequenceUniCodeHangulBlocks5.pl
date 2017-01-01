#!/usr/bin/env perl
#use open ":std", ":encoding(UTF-8)"; 
my @blocks = ( hex('AC00') ... hex('D7AF') );

foreach  $item(0 .. $#blocks)  {
    printf("U+%X %s\n", $blocks[$item], chr($blocks[$item]));
}

