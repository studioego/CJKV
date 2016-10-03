#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# Author: DaeHyun Sung(sungdh86+git@gmail.com)


import unicodedata

NAVER_HANJA_DIC_HANJA_QUERY_URL = "http://hanja.naver.com/hanja?q="
NAVER_HANJA_DIC_EXCEPT_HANJA_QUERY_URL = "http://hanja.naver.com/search?query="
JISHO_DIC_QUERY_URL = "http://jisho.org/search/"
MOEDICT_URL = "https://www.moedict.tw/"
CHUNOM_URL = "http://www.chunom.org/pages/"
CHISE_URL = "http://www.chise.org/est/view/char/"
UNIHAN_URL = "http://www.unicode.org/cgi-bin/GetUnihanData.pl?codepoint="
GLYPHWIKI_EN_URL = "http://en.glyphwiki.org/wiki/u"
GLYPHWIKI_KO_URL = "http://ko.glyphwiki.org/wiki/u"
GLYPHWIKI_JP_URL = "http://glyphwiki.org/wiki/u"
GLYPHWIKI_ZHS_URL = "http://zhs.glyphwiki.org/wiki/u"
GLYPHWIKI_ZHT_URL = "http://zht.glyphwiki.org/wiki/u"
ZDIC_URL = "http://www.zdic.net/z/jd/?u="
WEBLIO_URL = "http://ejje.weblio.jp/content/"

# Listing of Characters Covered by the Unihan Database
unihan_ranges = [
    {"from": ord(u"\u3400"), "to": ord(u"\u4DB5")},  # CJK Unified Ideographs Extension A	3.0
    {"from": ord(u"\u4E00"), "to": ord(u"\u9FA5")},  # CJK Unified Ideographs	1.1
    {"from": ord(u"\u9FA6"), "to": ord(u"\u9FBB")},  # CJK Unified Ideographs	4.1
    {"from": ord(u"\u9FBC"), "to": ord(u"\u9FC3")},  # CJK Unified Ideographs	5.1
    {"from": ord(u"\u9FC4"), "to": ord(u"\u9FCB")},  # CJK Unified Ideographs	5.2
    {"from": ord(u"\u9FCC"), "to": ord(u"\u9FCC")},  # CJK Unified Ideographs	6.1
    {"from": ord(u"\u9FCD"), "to": ord(u"\u9FD5")},  # CJK Unified Ideographs	8.0
    {"from": ord(u"\uF900"), "to": ord(u"\uFA2D")},  # CJK Compatibility Ideographs
    {"from": ord(u"\uFA2E"), "to": ord(u"\uFA2F")},  # CJK Compatibility Ideographs	6.1
    {"from": ord(u"\uFA30"), "to": ord(u"\uFA6A")},  # CJK Compatibility Ideographs	3.2
    {"from": ord(u"\uFA6B"), "to": ord(u"\uFA6D")},  # CJK Compatibility Ideographs	5.2
    {"from": ord(u"\uFA70"), "to": ord(u"\uFAD9")},  # CJK Compatibility Ideographs	4.1
    {"from": ord(u"\U00020000"), "to": ord(u"\U0002A6D6")},  # CJK Unified Ideographs Extension B	3.1
    {"from": ord(u"\U0002A700"), "to": ord(u"\U0002B734")},  # CJK Unified Ideographs Extension C	5.2
    {"from": ord(u"\U0002B740"), "to": ord(u"\U0002B81D")},  # CJK Unified Ideographs Extension D	6.0
    {"from": ord(u"\U0002B820"), "to": ord(u"\U0002CEAF")},  # CJK Unified Ideographs Extension E	8.0
    {"from": ord(u"\U0002F800"), "to": ord(u"\U0002FA1D")}  # CJK Compatibility Supplement	3.1
]


def is_unihan(ch):
    return any([range_item["from"] <= ord(ch) <= range_item["to"] for range_item in unihan_ranges])


# naver hanja dictionary link
def hanja_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        # Unihan check
        if is_unihan(item):
            send_message += NAVER_HANJA_DIC_HANJA_QUERY_URL + item + "\n"
        else:
            send_message += NAVER_HANJA_DIC_EXCEPT_HANJA_QUERY_URL + item + "\n"  # Unicode check
    return send_message


# jisho dictionary link (日本語辞書)
def kanji_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += JISHO_DIC_QUERY_URL + item + "\n"
    return send_message


# taiwan moedict link
def moedict_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += MOEDICT_URL + item + "\n"
    return send_message


# vietnamese
def chunom_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += CHUNOM_URL + "{:04X}".format(ord(item)) + "\n"
    return send_message


def chise_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += CHISE_URL + item + "\n"
    return send_message


def unihan_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += UNIHAN_URL + "{:04X}".format(ord(item)) + "\n"
    return send_message


def glyph_en_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += GLYPHWIKI_EN_URL + "{:04x}".format(ord(item)) + "\n"
    return send_message


def glyph_jp_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += GLYPHWIKI_JP_URL + "{:04x}".format(ord(item)) + "\n"
    return send_message


def glyph_ko_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += GLYPHWIKI_KO_URL + "{:04x}".format(ord(item)) + "\n"
    return send_message


def glyph_zhs_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += GLYPHWIKI_ZHS_URL + "{:04x}".format(ord(item)) + "\n"
    return send_message


def glyph_zht_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += GLYPHWIKI_ZHT_URL + "{:04x}".format(ord(item)) + "\n"
    return send_message


def zdic_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += ZDIC_URL + "{:04x}".format(ord(item)) + "\n"
    return send_message

def weblio_link(msg):
    send_message = ""
    for item in msg:
        send_message += item + "\n"
        send_message += unicodedata.name(item) + "\n"
        send_message += WEBLIO_URL + item + "\n"
    return send_message