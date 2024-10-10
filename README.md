                                                                READ ME

This is a set of setup scripts for a Debian based recursive PiHole/Unbound DNS server.
If your intention is to convert your fresh Debian netinst install into a home DNS server this is your script please be my guest and follow the instructions below.
If this is not your intention the I do not reccoment or suggest running this setup script.

                                                            Instructions
                (If you already have the repository on your local drive, navigate to it and skip to step 5:)

    1. As always with EVERY system step 1 is to update update update! Run "sudo apt-get update && sudo apt-get upgrade" 
        - You can optionally add the -y flair to the upgrade command to remove the "Are you sure?" prompt. If you want to do so run "sudo apt-get upgrade -y" instead.

    2. You'll need to install git on your system next. Run "sudo apt-get install git"
        - As with step 1 you can optionally add the -y flair to remove the "Are you sure?" prompt.
        - If you want to do so, either before or after the package name, add the -y flair.
        - Either run "sudo apt-get install git -y" or "sudo apt-get install -y git" instead.

    3. You'll have to clone the github repository to your system by running "sudo git clone https://github.com/NotJesus172/dns-deb"

    4. Change to the new dns-deb directory. Run "cd dns-deb"

    5. Run the script! Run "sudo ./install.sh"



Handy dandy copypasta script action over here for everything mentioned above, assuming you know how to make/write and execute one:)

#!/bin/bash
sudo apt-get update && sudo apt upgrade -y
sudo apt-get install -y git
sudo git clone https://github.com/NotJesus172/dns-deb
cd dns-deb
sudo ./install.sh