#!/usr/bin/env python
import os
import os.path
import platform
import fnmatch
from rm_dup_lns import *

win32_drives = ['D:\\','E:\\','F:\\']
mac_drives = ['/Volumes/DX50/','/Volumes/DX50_MEDIA/']
pattern = '*Playlists*'

def remove_dups():
    p = platform.system()
    drives = []
    playlist_dir = ''

    if p == "Darwin":
        drives = mac_drives
    else:
        drives = win32_drives

    for rootPath in drives:
        print "Now searching in: ", rootPath

        for root, dirs, files in os.walk(rootPath) :
            for filename in fnmatch.filter(dirs, pattern) :
                playlist_dir = os.path.join(root, filename)
                print "Found", playlist_dir
                break

        if playlist_dir != '':
            subfiles = [f for f in os.listdir(playlist_dir) if os.path.isfile(os.path.join(playlist_dir, f))]
            for f in subfiles:
                remove_duplicate_lines_from_file(os.path.join(playlist_dir, f))
                print "Removed duplicate entries from: ", f
            break

    if playlist_dir == '':
        print "No Playlists directory found"
        exit(1)

if __name__ == '__main__':
    remove_dups()
