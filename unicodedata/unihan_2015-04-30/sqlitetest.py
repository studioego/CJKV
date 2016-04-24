#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# read Unihan database txt file 
# Author: DaeHyun Sung(sungdh86+git@gmail.com)
import sys, re
import sqlite3


if __name__ == '__main__':
    # SQLite database open 
    conn = sqlite3.connect('unihan.db')
    cur = conn.cursor()

    codePoint = "U+3400"
    field = "kCantonese"
    content = "jau1"
    
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
    
    
    codePoint = "U+3400" 
    field = "kDefinition"
    content = "(same as U+4E18 丘) hillock or mound"
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
        
    
    codePoint = "U+3400" 
    field = "kMandarin"
    content = "qiū"
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
        
    
    codePoint = "U+3401" 
    field = "kCantonese"
    content = "tim2"
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
        
    codePoint = "U+3401" 
    field = "kDefinition"
    content = "to lick; to taste, a mat, bamboo bark"
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
        
    codePoint = "U+3401" 
    field = "kHanyuPinyin"
    content = "10019.020:tiàn"
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
    
    codePoint = "U+3401" 
    field = "kMandarin"
    content = "tiàn"
    cur.execute ("select count(*) from UNIHAN_READINGS WHERE codePoint=:codePoint", {"codePoint": codePoint})
    dbSelCount = cur.fetchone()[0]
    print(dbSelCount)
    if dbSelCount == 0:
        cur.execute("insert into UNIHAN_READINGS(codePoint, " + field + " ) VALUES (:codePoint, :content)", {"codePoint": codePoint , "field": field,  "content": content})
    else: 
        cur.execute("update UNIHAN_READINGS set " + field + " = :content  WHERE codePoint = :codePoint ", {"codePoint": codePoint , "field": field, "content": content})
    conn.commit()
    #SQLite Database close
    conn.close()