Install Picoscope 7 on Fedora or other distro with dnf
---

# Step 1 - create repo file:
created a file with the following contance called: picoscope.repo

    [picoscope-repo]
    name=PicoScope drivers and UI
    baseurl=https://labs.picotech.com/rc/picoscope7/rpm/
    gpgcheck=1
    enabled=1
    gpgkey = https://labs.picotech.com/rc/picoscope7/rpm/repodata/repomd.xml.asc

# Step 2- Add pico tech's key

    sudo rpmkeys --import http://labs.picotech.com/repomd.xml.key

# Step 3 - Add Repo using your .repo file 
Make sure your in the same folder as the .repo file

    sudo dnf config-manager addrepo --from-repofile=picoscope.repo

# Step 4 - Install

    sudo dnf install picoscope

# Step 5 - Run Pico scope

Super Key (Windows 🙄) -> type "PicoScope"
