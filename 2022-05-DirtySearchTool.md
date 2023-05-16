Dirty Search tool
---
There have been a few occasions where I need to search through a big pile of data files for a file name or type. Yes I could use the operating system's tool but this has proved less than useful (I'm looking at you Windows) and slows the system down every time you search.

This sounds like a job for a few shell commands.

# Caching a list of files
The reason I wish to cache and search later is that I can do the cache when the drive is not in use i.e. schedule it at night. Using an operating system search I have noticeably degraded performance of a drive in the past. It also means you need to do it when there has been a change not every search.

To do this I use the tree command, the following options are handy to include:

* -d directories only, if your after a directory
* -a include hidden files (starting with a '.')
* -R Recursively go down the tree
* -L how many levels to go down if using -R
* -f local path for each file, this is very important
* -i remove indent lines, easier to read

Then pipe the output to a text file.

	tree -a -f -i -R -L 5 > searchResults.txt

If your just after directory names add -d and this will speed things up.

# Finding what you want.
This is where grep comes in. grep will return all the lines of a file with a match a search term and as your working on a local files it's near instant.

	grep '<search term>' searchResults.txt

This will effectively give you the path & file name of any matches. This will match not only the file name but any part of the path for each file. So if you hit a directory name you could get a lot of results.

If you want to get funky and search on two factors i.e. looking for all .txt files where wibble is in the path.

	grep 'wibble.*txt' searchResults.txt

# Windows considerations
if you want to do this on windows cygwin would be a good option. In which case it's handy to know the local reference to mapped drives on your system: 

	cd /cygdrive/c

To get to the c drive.

[/](/)
[license](/LICENSE.txt)