# instantnoodle-tools-cli

Hey all!

I've started this project to allow people to use their devices longer, right now with a focus on the OnePlus 8, but eventually spreading to more devices. 
These scripts are currently for Linux Ubuntu/Debian distros only, but I plan on expanding support to other systems as well.
Below is a link to all the files you will need to start using the scripts for beta testing on Linux machines. The only two ROMs available at the moment 
are Lineage OS 18.1 and Pixel Experience, but, again, more ROMs will be supported. I also plan to include troubleshooting support for frequent issues 
that can be fixed.

setup.sh - this script install all of the tools and software for the next script to use for installation. It creates folders within your root (home) 
directory, which I personally prefer, but can change.

oneplus8.sh - ROM chooser script. downloads the ROM of your choice and extracts the fastboot images from the payload.bin file.

flash.sh - this script should stay in the downloads folder for now so the previous script can execute it. there is no need for the user to touch this file!

In each ROM folder, there will be an info file. These files basically serve as a directory listing, allowing you to find the project page on XDA/GitHub/Website, look at any known bugs before you flash, and see any special install instructions. Please check these files regularly!

I will be focusing on perfecting the process on the command line on Ubuntu and Debian based distros first before I begin supporting more distros and operating systems. feel free to leave
comments about the project below and begin porting your device into the project!

WARNING --------> THIS IS STRICTLY IN ALPHA TESTING // USE AT YOUR OWN RISK AND ALWAYS BACKUP YOUR DATA // <------------- WARNING

<-------------- REQUIREMENTS --------------->
1. YOUR DEVICE MUST BE BOOTLOADER UNLOCKED
2. PATIENCE - This project is still in the process of setting up and may produce errors. Feel free to contact me or anyone on XDA to help you with any issues or answer your questions.
3. BACKUP YOUR DATA - Backup all of your data even before you unlock your bootlaoder, because as soon as it is unlocked the device is wiped. Be prepared and you have been warned.

<-------------- RECOMMENDATIONS ------------>
I highly recommend you root your phone and leave Lineage Recovery or Pixel Experience Recovery on the device. This generally makes troubleshooting faster and easier. Plus, it allows you to backup your persist.img in the chances it does get corrupted. I will be adding a tool to backup and restore this image for you. 

If enough support comes through, I will make a Telegram and Discord for this project specifically for support. :)
