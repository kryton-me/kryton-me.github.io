Flatpalk commands to install software
---

# Find a program
```flatpak search "kicad"```

Look for the "Application ID" and "Remotes"

# Install the program
```flatpal install flathub org.kicad.KiCad```

# Install an old version i.e. rollback

### Look for all versions
```flatpak remote-info --log flathub org.kicad.KiCad```
note the "Commit" hash (long random number with abcdef in it)

### Roll back to the old version
```sudo flatpak update --commit=[commit_hash] [app_name]
