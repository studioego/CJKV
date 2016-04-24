#!/usr/bin/env python3
# -*- coding: utf-8 -*-

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'unihan[] charater\'s ',
    'author': 'DaeHyun Sung(성대현, 成大鉉, ソンデヒョン) [a.k.a. studioego]',
    'url': 'http://cjkv.io',
    'author_email': 'sungdh86+git@gmail.com',
    'version' : '0.0.1',
    'install_requires': ['unicodedata', 'nose'],
    'scripts': [],
    'packages': ['unihan'],
    'name': 'Unihan character dictionary link (Chinese, Japanese, Korean, Vietnamese ideograph dictionary'
}
setup(**config)