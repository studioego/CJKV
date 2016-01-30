#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# read Unihan database txt file 
# Author: DaeHyun Sung(sungdh86+git@gmail.com)
import sys, re

def chomp(s):
    return s[:-1] if s.endswith('\n') else s

def trim_newlines(slist):
    for i in range(len(slist)):
        slist[i] = chomp(slist[i])
    return slist

if __name__ == '__main__':
    uniHanReadingFile = open('Unihan_Readings.txt','r')
    while True:
        itemLine = uniHanReadingFile.readline()
        if not itemLine: 
            break
        if len(itemLine) < 1:
            continue
        elif itemLine[0] == '' or itemLine[0] == '#' or itemLine[0] == '\n':
            continue
        else:
            #chomps(itemLine)
            items = itemLine.split('\t')
            trim_newlines(items)
            if len(items) != 3: 
                print("parsing error: ", items)
                break
            print("Chinese Character:%s|CodePoint: %s|field: %s|content: %s" % (chr(int(items[0].lstrip('U+'), 16)), items[0], items[1], items[2]))
    uniHanReadingFile.close()