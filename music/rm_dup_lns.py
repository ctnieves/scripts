#!/usr/bin/env python
from sortedcontainers import SortedSet

def remove_duplicate_lines_from_file(inputfile):
    f=open(inputfile, 'r')
    lines_set = f7(f.readlines())
    f.close()

    out=open(inputfile, 'w')
    for line in lines_set:
        out.write(line)

def f7(seq):
    seen = set()
    seen_add = seen.add
    return [x for x in seq if not (x in seen or seen_add(x))]

