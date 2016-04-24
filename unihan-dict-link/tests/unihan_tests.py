#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from nose.tools import *
from unihan import unihan

def setup():
    print("SETUP")

def teardown():
    print("TEAR DOWN")

def test_basic():
    print("실행")
    assert_equal(unihan.is_unihan('성'), False)
