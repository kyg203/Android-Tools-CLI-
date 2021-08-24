# ***\*Android Tools (CLI)\****

Ky Gough

kyrangough2019@gmail.com

Open Source project :)

 

 

#### ***\*Information\****

I originally made Android Tools when I noticed the trend of people keeping their devices for longer than usual, especially during these times with Covid-19. This not only leaves people with old and outdated software, but may also leave a lot of Android-based devices vulnerable to attacks. My goal for this project is to support as many custom ROMs for as many devices as possible and to make it easier for the average consumer to update their device outside of their manufacturers release cycle. 

 

At the time of writing, we are a little ways off our goal because I am accustomed to Linux, which is not something the average consumer is used to, and I only have a singular device, the mildy unpopular OnePlus 8. In order for us to reach our goal, we need some beta testers to test out the code on their devices and give us feedback on what went well, what could be improved upon, and what went completely wrong. My device is almost compeletely supported, minus a few custom ROMs and MSM tool. I would like to provide easy documentation and instructions for average users to unlock their bootloader / SIM for custom ROM support. 

 

Once testing is complete, I want to re-write the programs for Windows machines with a GUI . I have a Windows 10 virtualbox setup, however, that isn’t very efficient and only have one laptop for daily driving at college. Plus, I’m not entirely sure what I’m doing with Windows as a whole anyway.

 

If you would like to test your device, please request your device to be added and I will add it in for you to the project for you to start testing. When you request, please be sure to add in the value you get back from ‘adb shell getprop ro.product.model’ within the email. If you don’t know how to execute it, you probably shouldn’t be testing it. Saying this for your own good!

 

 

### ***\*Installation\****

When you download the project, be sure to put it somewhere memorable, easy to access, and that won’t become cluttered. I like to put mine in my Downloads or Home directory, but whatever is easiest. Next, just cd into the project in Terminal and type ‘sudo bash setup.sh’. It took about a minute to setup on my device with an 11th Gen i7 and 16 GB RAM.

 

From there, always cd into the project before you bash any scripts! As soon as you’re in, just type sudo bash android-tools.sh or ./android-tools.sh



### Requirements

1. An unlocked or unlockable bootloader. If you bought the device from a carrier, I would bootloader unlock the device first. If you bought it from the OEM, you can unlock it with Android Tools.  
2. Backup your data EVERY TIME. I will *NOT* be responsible for *ANY* data loss. 
3. Keep a custom recovery on your device at all times. The only time a new recovery needs to be flashed is when flashing to Oxygen OS since the custom recovery cannot flash every image to the device. 

### ______________________________________

Credit to vm03 for payload_dumper-master. Appreciate your hardwork to allow this project to become successful in its operation. 

