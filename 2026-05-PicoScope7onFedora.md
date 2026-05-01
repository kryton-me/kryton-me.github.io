Install Picoscope 7 on Fedora or other distro with dnf
---

# Add key

    sudo rpmkeys --import http://labs.picotech.com/repomd.xml.key

# Add Repo
.repo file needs to be in working directory

    sudo dnf config-manager addrepo --from-repofile=picoscope.repo

# Install

    sudo dnf install picoscope

# File:
created a file with the following contance called: picoscope.repo

    [picoscope-repo]
    name=PicoScope drivers and UI
    baseurl=https://labs.picotech.com/rc/picoscope7/rpm/
    gpgcheck=1
    enabled=1
    gpgkey = https://labs.picotech.com/rc/picoscope7/rpm/repodata/repomd.xml.asc
