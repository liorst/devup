#!/usr/bin/env python
import sys
import os

def __main__(argv):
    raw_messages = argv[1]
    messages = raw_messages.split(':')
    for message in messages:
        print(os.environ['message'])



if __name__ ==  '__main__':
    __main__(sys.argv)
