#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# read Unihan database txt file 
# Author: DaeHyun Sung(sungdh86+git@gmail.com)
import sys, re
import sqlite3

def chomp(s):
    return s[:-1] if s.endswith('\n') else s

def trim_newlines(slist):
    for i in range(len(slist)):
        slist[i] = chomp(slist[i])
    return slist

if __name__ == '__main__':
    # SQLite database open 
    conn = sqlite3.connect('unihan.db')
    cur = conn.cursor()
    # read unihan_Readings.txt
    unihanNumericValuesFile = open('Unihan_NumericValues.txt','r')
    while True:
        itemLine = unihanNumericValuesFile.readline()
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
            # check data            
            # read file test
            print("Chinese Character:%s|CodePoint: %s|field: %s|content: %s" % (chr(int(items[0].lstrip('U+'), 16)), items[0], items[1], items[2]))
            codePoint = items[0]
            field = items[1]
            content = items[2]
            cur.execute ("select count(*) from UNIHAN_NUMERIC_VALUES WHERE codePoint=:codePoint", {"codePoint": codePoint})
            dbSelCount = cur.fetchone()[0]
            print(dbSelCount)
            if dbSelCount == 0:
                cur.execute("insert into UNIHAN_NUMERIC_VALUES(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
            else: 
                cur.execute("update UNIHAN_NUMERIC_VALUES set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})			
    # close file
    unihanNumericValuesFile.close()
    #SQLite Database commit
    conn.commit()
    #SQLite Database close
    conn.close()