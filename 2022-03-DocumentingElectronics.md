Documenting Electronics
===

# Introduction 
Trying to figure out a good way to document & trace electronics designs with integrity with minimal cost. In my experience electronics engineers are not great at managing versions (appending a file -v3 for instance) or keeping track of which file went to which company on which date. Whats the least effort / expenditure route to getting something working?

# Who changed what & when?
This is probably the most key aspect to traceability of your design. Most companies will most likely have some kind of document management system but good luck  loading CAD files in it. The look on the Quality engineering’s face when you explain the number of file types you need to support and faff of using a web porthole to do so. Best bet is to copy the software department in this regards and use off the shelf version control software such as SVN or GIT. The Quality department most likely have already given the softies an exception in the regard and they most likely already have a server set up you can create repositories on if you ask nicely. Yes it’s a learning curve but they are very powerful tools widely using in industry and often the software engineers can help you out. If you don’t have a software team it’s still worth considering. Bitbucket offer basic free accounts to give you a cloud repository and the likes of Altium has support in the tool for SVN & GIT. It is worth however finding a good GUI tool to manage your local check outs if your not a command line fan. 

# Integrating CAD tools
At a basic level it’s as simple as putting your design files in a checked out repository then once a change is made checking it in to the repository (& pushing on GIT). Further integration then generally consists of your CAD tool being aware it’s files are in a repository and offering extra tools such as;
* Icons next to file names to say if a file is checked in
* Ability to check out / in direct from the CAD tool.
* Variable in documentation templates to show check in version / hash for tractability.

# Capturing design calculations
This is a tricky one, traditionally you would write them out in your day book. You could spreadsheets saved with the design files so you can track the calculation used before each board issue however both ISO standard formats have binary files your version control can’t do a diff on. Yes the office tools have this ability but it’s a big faff to use. Another potential solution is to use a maths tool like Matlab or octave. The code is practically how you would write the formulas out in text anyway so it’s easy to check the maths. Yes it’s not updated in real time like a spreadsheet where you could use for instance a slider bar to find the sweet spot but you can check the formulas much more easily.

# Capturing design notes / descriptions
Another tool to consider is markdown. It’s great for documenting designs quickly and offers traceability when used in a repository as it’s plane text.

[/](/)
[license](/LICENSE)