Dirty Search tool
---

They have been a few occasions where I need to search through a big pile of data files with a small reffrence term on a network drive. Yes I could use the opertaing systems tool but this has proved less than usefull (I'm looking at you Windows).

So using a few shell commands what can I do?

# cashing whats there
The reason I wish to cash and search later is that I can do the cash when the drive is not in use i.e. schedule it at night. Using an operating system search I have noticeably degraded performance of a drive in the past. it also means you need to do it when there has been a change not every search.

To do this I use the tree command, the following options are handy to inclued:

* -d directories only, if your after a directory
* -a inclued hidden files (starting with a .)
* -R Recursively go down the tree
* -L how many levels to go down if using -R

Then pipe the output to a text file.

I.E. list all files

	tree -a -R -L 5 > searchResults.txt

If your just after directory names add -d will speed things up a lot.

# Finding what you want.
This is where grep comes in. grep will return all the lines of a file with a match to the search term.

	grep '<search term>' searchResults.txt

This will effectivly give you the path & file name of any matches. This will match not only the file name but any part of the path for each file. So if you hit a directry name you could get a lot of results.