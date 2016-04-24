
create table UNIHAN_DICTIONARY_INDICES (
codePoint	text	primary key not NULL,
kCheungBauerIndex	text,
kCowles	text,
kDaeJaweon	text,
kFennIndex	text,
kGSR	text,
kHanYu	text,
kIRGDaeJaweon	text,
kIRGDaiKanwaZiten	text,
kIRGHanyuDaZidian	text,
kIRGKangXi	text,
kKangXi	text,
kKarlgren	text,
kLau	text,
kMatthews	text,
kMeyerWempe	text,
kMorohashi	text,
kNelson	text,
kSBGY	text
);

create table UNIHAN_DICTIONARY_LIKE_DATA (
codePoint	text	primary key not NULL,        
kCangjie	text,
kCheungBauer	text,
kCihaiT	text,
kFenn	text,
kFourCornerCode	text,
kFrequency	text,
kGradeLevel	text,
kHDZRadBreak	text,
kHKGlyph	text,
kPhonetic	text,
kTotalStrokes	text
);

create table UNIHAN_IRG_SOURCES (
codePoint	text	primary key not NULL,        
kCompatibilityVariant	text,
kIICore	text,
kIRG_GSource	text,
kIRG_HSource	text,
kIRG_JSource	text,
kIRG_KPSource	text,
kIRG_KSource	text,
kIRG_MSource	text,
kIRG_TSource	text,
kIRG_USource	text,
kIRG_VSource	text,
kRSUnicode	text
);

create table UNIHAN_NUMERIC_VALUES (
codePoint	text	primary key not NULL,        
kAccountingNumeric	text,
kOtherNumeric	text,
kPrimaryNumeric	text
);

create table UNIHAN_OTHER_MAPPINGS (
codePoint	text	primary key not NULL,        
kBigFive	text,
kCCCII	text,
kCNS1986	text,
kCNS1992	text,
kEACC	text,
kGB0	text,
kGB1	text,
kGB3	text,
kGB5	text,
kGB7	text,
kGB8	text,
kHKSCS	text,
kIBMJapan	text,
kJa	text,
kJis0	text,
kJis1	text,
kJIS0213	text,
kKPS0	text,
kKPS1	text,
kKSC0	text,
kKSC1	text,
kMainlandTelegraph	text,
kPseudoGB1	text,
kTaiwanTelegraph	text,
kXerox	text
);

create table UNIHAN_RADICAL_STROKE_COUNTS (
codePoint	text	primary key not NULL,        
kRSAdobe_Japan1_6	text,
kRSJapanese	text,
kRSKangXi	text,
kRSKanWa	text,
kRSKorean	text
);

create table UNIHAN_READINGS (
codePoint	text	primary key not NULL,        
kCantonese	text,
kDefinition	text,
kHangul	text,
kHanyuPinlu	text,
kHanyuPinyin	text,
kJapaneseKun	text,
kJapaneseOn	text,
kKorean	text,
kMandarin	text,
kTang	text,
kVietnamese	text,
kXHC1983	text
);

create table UNIHAN_VARIANTS (
codePoint	text	primary key not NULL,        
kSemanticVariant	text,
kSimplifiedVariant	text,
kSpecializedSemanticVariant	text,
kTraditionalVariant	text,
kZVariant	text
);
