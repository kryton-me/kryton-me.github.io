Comparing files
---

everyone to know if two files are the same?

# Hash
use a check sum to confirm the file is the same:

## Windows
      certutil -hashfile "<file path & name> MD5

## MacOS
      MD5 file

## Linux
      MD5 <file path & name>

# Diff
so I get diffrent MD5 results whats going on?

## Text files

### Windows
Notepad++'s Compare or ComparePlus Plugins

### Mac
TextMate: Bundles -> Diff 

## PDF

### Windows

diff-pdf by vslavik on GitHub

Basic but does the job.
  