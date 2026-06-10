Git Commands
---

# Introduction
Leaning basic git commands:

# clone a repository
```git clone https://gituser@kryton.me.uk/gitrepositories/myMadCodeBase.git```

# Saving back to the server

### Check your status
```git status```

### Staging files
Add files in red (unstaged) ready to comit
```git add "wibble.md"```

or add all files
```git add .```

or use the interactive tool
```git add -i```

or unstage a file
```git reset wibble.md```

or remove a file from git & the drive
```git rm -f file_name```

or revome a file just from git i.e. binary in error
```git rm --cached file_name```

### Comitting files
```git commit -m "Added file wibble.md to reord the word wibble"```

### Push the files
push the files to the main branch
```git push origin main```

or push to a branch
```git push origin branch```

# Switch to a branch

### List local branches
```git branch```

### List remote branches
```git branch -r```

### if you don't have the bracnch you want locally down load it:
```git fetch --all```

### Create the branch localy & switch tracking to it.
```git switch -c "origin/branch" --track "origin/branch"```

### Confirm the branch your on
```git status```
