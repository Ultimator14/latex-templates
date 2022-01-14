#!/usr/bin/python
#
# This script recursively cleans up LaTeX Bloat from the parent directory
#

import os
import re

rootdir = "."
ignore_dirs_ = [".git"]
delete_exts_ = [".aux", ".bbl", ".bib.bak", ".blg", ".lof", ".log", ".lol", ".lot", ".out", ".run.xml", ".synctex.gz", ".toc",
                "-blx.bib", ".bcf", ".nav", ".snm", ".vrb"]
delete_files = ["texput.log"]

ignore_dirs = [os.path.join(rootdir, dir_) for dir_ in ignore_dirs_]
texfileregex = re.compile("^.+\.tex$")

texfiles = list()
for root, dirs, files in os.walk(rootdir, topdown=True):
    if root not in ignore_dirs:
        for file_ in files:
            if re.match(texfileregex, file_):
                texfiles.append((root, file_[:-4]))

for texfile_dir, texfile_noext in texfiles:
    delete_exts = [texfile_noext + ext for ext in delete_exts_]

    for file_ in os.listdir(texfile_dir):
        if file_ in delete_exts or file_ in delete_files:
            file_to_remove = os.path.join(texfile_dir, file_)
            print("Deleting file " + file_to_remove)
            os.remove(file_to_remove)
