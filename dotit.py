#!/usr/bin/env python

import os
import sys
import getopt

def usage():
    print("Usage: %s [-h] filename" % sys.argv[0])

def run(argv):

    dotfiles = dict()

    try:                                
        opts, args = getopt.getopt(argv, "h", ["help"])
    except getopt.GetoptError:
        usage()
        sys.exit(2)

    for opt, arg in opts:
        if opt in ('-h', '--help'):
            usage()
            sys.exit()

    for arg in args:
        full_path = os.path.realpath(arg)
        path , filename = os.path.split(full_path)
        dotfiles[filename] = path


if __name__ == "__main__":
    run(sys.argv[1:])
