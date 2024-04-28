#!/usr/bin/env python3

# quick and dirty script to collect speaker notes.
import glob
import os
from io import open
from pathlib import Path

notes_path = "notes.txt"

if Path(notes_path).is_file():
    os.remove(notes_path)

fh = open(notes_path, 'w+')

delimitor_found = False
delimitor = '****'
buffer = ""

for glob in [
    'index.adoc',
    'slides/001-presentation.adoc',
    'slides/000-intro.adoc',
    'slides/010-dotfiles.adoc',
    'slides/030-script.adoc',
    'slides/040-stow.adoc',
    'slides/050-ansible.adoc',
    'slides/060-conclusion.adoc',
]:
    input_file = open(glob, 'r')
    # fh.write(f"################# {glob}\n")
    for line in input_file:
        if line.startswith(delimitor) and delimitor_found is True:
            # End collecting notes for this section
            fh.write(buffer)
            buffer = ""
            delimitor_found = False
            continue

        if line.startswith(delimitor):
            # Start collecting notes
            delimitor_found = True
            continue

        if delimitor_found:
            buffer += f"{line}\n"
