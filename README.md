# instantnoodle-tools-cli

Hey all!

I've started this project to allow people to use their devices longer, right now with a focus on the OnePlus 8, but eventually spreading to more devices. 
These scripts are currently for Linux Ubuntu/Debian distros only, but I plan on furthering support to other distros and Windows/Mac devices too. 
Below is a link to all the files you will need to start using the scripts for beta testing on Linux machines. The only two ROMs available at the moment 
are Lineage OS 18.1 and Pixel Experience, but, again, more ROMs will be supported. I also plan to include troubleshooting support for frequent issues 
that can be fixed.

setup.sh - this script install all of the tools and software for the next script to use for installation. It creates folders within your root (home) 
directory, which I personally prefer, but can change.

oneplus8.sh - ROM chooser script. downloads the ROM of your choice and extracts the fastboot images from the payload.bin file.

flash.sh - this script should stay in the downloads folder for now so the previous script can execute it. there is no need for the user to touch this file!


I will be focusing on perfecting the process on the command line on Linux first before I begin supporting more distros and operating systems. feel free to leave
comments about the project below and begin porting your device into the project!

WARNING --------> THIS IS STRICTLY IN ALPHA TESTING // USE AT YOUR OWN RISK AND ALWAYS BACKUP YOUR DATA // <------------- WARNING
