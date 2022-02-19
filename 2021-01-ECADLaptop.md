ECAD Laptop
===========

I want to set up a solid Electronics Computer Aided Design (ECAD) laptop for designing circuits PCBs

# Hardware requirments

* Solid reliable Hardware
  * High volume model?
* Laptop form factor
* Plenty of RAM for big models

To me the most important factor when doing CAD work is reliability so you can get the Job done and not spend time fixing your computer. So I’m ruling out home brew / custom order systems, I’ve wasted far too much time that way in the past. In my experience of engineering the more customised / smaller customer base the item the more problems you can expect. Just have a look at the Car reliability index website’s list by manufacture. All the top manufactures are very much volume manufactures, where as the supposed higher quality cars which have a smaller market segment tend to score quite poorly.

I want a laptop form factor for probability, being able to bring a CAD model up in a meeting off site is very handy.

From my personal experience I’ve seen a 5 year old standard business laptop with a large amount of RAM run a high end ECAD package on a large board almost as well as a current model CAD laptop. Although CAD laptops have high end OpenGL graphics cards I’m not aware of any ECAD tools that would make full use of them. To my knowledge only Altium even specifies graphics cards and they are DirectX & aimed at gaming.

So how do I find a good laptop vendor? From past experience the most stable systems I’ve ever owned where made by Sony and Apple. The Sony was a long time ago and they have since spun off their VIAO business. Apple have a relatively small range of laptops so presumably are high volume for a given model. They also have a very large retail and support network globally. Mechanical CAD users I know generally rate Lenovo as having the best hardware although I’m not sure if this is from a performance capability i.e. good OpenGL graphics chips or general robustness. From the Lenovo hardware I’ve seen in person they don’t look that amazingly robust when compared to say a MacBook Pro. On the Principle that Apple tend to have robust hardware as they integrate the software in house and offer a limited range Microsoft appear to meet the same requirements although they lack the retail & support network. From what I’ve seen they certainly look well made. I think at this point I’m going to have a short list of Apple or Microsoft so it’s down to Operating system.

# Operating System

* Unix(macOS) if possible
* Windows if I have to

Although Windows 10 is a lot better in my opinion than previous Windows versions having spent years using various Unix & Unix-like systems I still find it buggy and unreliable, I guess it’s what you’re used to. If I want robust I want a Unix (or Unix-like) system of some sort but most ECAD runs on Windows systems currently. The added advantage of having a Unix system is they tend to come with Bash. If you have a large log file to extract errors from A couple of piped grep commands and you have your data in seconds. Yes you can use Cygwin on Windows but it’s another pice of software to keep maintaining on your system. Regards flavour of Unix (or Unix like) operating systems macOS is the clear choice as it comes supplied with fully integrated hardware. Installing Linux on a Mac/Windows Laptop is an option but past experience has suggested setting up the OS could take quite some time tweaking text files and may brake with updates.

How does this impact on hardware choice? MacOS only runs on Macs. Currently Macs can also run Windows & Linux via Bootcamp. Regards Microsoft their hardware runs Windows and I’ve found guides to installing Linux on them.

The big question is what happening with Macs when they migrate to ARM? If Bootcamp carries on I’m guessing Linux & Windows may still be supported as both operating systems have ARM builds. I guess the big question is which CAD tools are going to start supporting ARM builds, KiCad already does.

# Processor Architecture

Given Apples planned move away from x86 architecture the question of processor Architecture has come back in to play. Clearly at this time x86 is the only viable choice but in principle what would I rather? I used to run a PowerPC system and loved it’s performance given it’s tiny size and very low heat output. I love the idea of going to ARM as being RISC it really appeals due to its simplicity. It’s also by far the most ubiquitous processor architecture and mainly used on mobiles devices so should not lack developers and be good at power management. Windows on x86 architecture does appear to be turning in to a technological dead end with the vast majority of modern platforms being Unix-like on ARM.

# Summary

So in summary I want a very robust (not crashing or denting) Laptop with lots of RAM that Ideally runs macOS but if needed could run Windows. Firstly I need to buy a crystal Ball to see which companies are going to support ARM builds in the future!

TAGS: APPLICATION SOFTWARE, ELECTRONICS TECHNOLOGIES, UNCATEGORISEDTAGS: ALTIUM, ARM, BASH, GREP, KICAD, LINUX, MACOS, POWERPC, UNIX, WINDOWS 10, X86