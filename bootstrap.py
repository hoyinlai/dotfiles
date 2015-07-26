#!/usr/bin/env python

import argparse
import os
import string
import sys


def main(args=sys.argv[1:]):
    """
    The main entry-point of the script.
    """

    parser = argparse.ArgumentParser(description='dotfile bootstrap script',
                                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('--home-dir', default=os.environ.get('HOME', None), help='path to home directory')
    arguments = parser.parse_args(args)

    home_dir = arguments.home_dir
    if not home_dir:
        home_dir = raw_input('Path to home directory: ')
    home_dir = os.path.abspath(home_dir)

    files = os.listdir(os.path.dirname(__file__))
    for f in filter(lambda x: x.startswith('_'), files):
        with open(os.path.join(home_dir, f.replace('_', '.')), 'wb') as out_file, \
                open(f) as in_file:
            template = string.Template(in_file.read())
            print 'Writing file: "%s"' % out_file.name
            out_file.write(template.substitute({'HOME': home_dir}))


if __name__ == '__main__':
    main()
