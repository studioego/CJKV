my $str = "각";
say "original: ", $str;
my $strNfd = $str.NFD;
say "NFD:", $strNfd;
for $str.NFD -> $item {
  say chr($item);
}
my $strNfc = $strNfd.NFC;
say "NFC:", $strNfc;
for $strNfd.NFC -> $item {
  say chr($item);
}
