# hangul gag(각)  0xAC01
my $str = "각";
say "original: ", $str;
say "chars length:",$str.chars;
say "code point length:",$str.codes;
my $strNfd = $str.NFD;
say "NFD:", $strNfd;
my $strNfdResult = '';
for $str.NFD -> $item {
  say chr($item);
  $strNfdResult~=chr($item);
}
say "chars length:",$strNfdResult.chars;
say "code point length:",$strNfdResult.codes;
my $strNfc = $strNfd.NFC;
say "NFC:", $strNfc;
my $strNfcResult = '';
for $strNfd.NFC -> $item {
  say chr($item);
  $strNfcResult~=chr($item);
}
say "chars length:",$strNfcResult.chars;
say "code point length:",$strNfcResult.codes;
# modern hangul 월인천강(月印天江)
my $weolyincheongang = "월인천강";
say "original: ", $weolyincheongang;
say "chars length:",$weolyincheongang.chars;
say "code point length:",$weolyincheongang.codes;
my $weolyincheongangNfd = $weolyincheongang.NFD;
say "NFD:", $weolyincheongangNfd;
my $weolyincheongangNfdResult = '';
for $weolyincheongang.NFD -> $item {
  say chr($item);
  $weolyincheongangNfdResult~=chr($item);
}
say "chars length:",$weolyincheongangNfdResult.chars;
say "code point length:",$weolyincheongangNfdResult.codes;
my $weolyincheongangNfc = $weolyincheongangNfd.NFC;
say "NFC:", $weolyincheongangNfc;
my $weolyincheongangNfcResult = '';
for $weolyincheongangNfd.NFC -> $item {
  say chr($item);
  $weolyincheongangNfcResult~=chr($item);
}
say "chars length:",$weolyincheongangNfcResult.chars;
say "code point length:",$weolyincheongangNfcResult.codes;
# Archaic Hangul 월인천강(月印天江) 
say chr(:16('114C')),chr(:16('116F')),chr(:16('11D9')),chr(:16('1159')),chr(:16('1175')),chr(:16('11AB')),chr(:16('110E')),chr(:16('1167')),chr(:16('11AB')),chr(:16('1100')),chr(:16('1161')),chr(:16('11F0'));
my $oldKorean = chr(:16('114C'))~chr(:16('116F'))~chr(:16('11D9'))~chr(:16('1159'))~chr(:16('1175'))~chr(:16('11AB'))~chr(:16('110E'))~chr(:16('1167'))~chr(:16('11AB'))~chr(:16('1100'))~chr(:16('1161'))~chr(:16('11F0'));
say $oldKorean;
say "chars length:",$oldKorean.chars;
say "code point length:", $oldKorean.codes;
say $oldKorean.NFC;
my $oldKoreanNFCResult = '';
for $oldKorean.NFC -> $item {
  print(chr($item));
  $oldKoreanNFCResult~=chr($item);
}
say '';
say "chars length:", $oldKoreanNFCResult.chars;
say "code point length:", $oldKoreanNFCResult.codes;
