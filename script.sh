#!/bin/bash

# Creating users
sudo useradd john
sudo useradd daisy
sudo useradd michael

# Creating passwords
echo 'john:123321' | sudo chpasswd
echo 'daisy:321123' | sudo chpasswd
echo 'michael:332211' | sudo chpasswd

# Creating directories
sudo mkdir /var/tmp/John_App
sudo mkdir /var/tmp/Application_Main

# Users rights
sudo chown john /var/tmp/John_App
sudo chown daisy /var/tmp/Application_Main
sudo chown michael /var/tmp/Application_Main

sudo -u john python3 -m venv /var/tmp/John_App/venv
sudo -u daisy python3 -m venv /var/tmp/Application_Main/venv
sudo -u michael python3 -m venv /var/tmp/Application_Main/venv

pip3 install numpy
pip3 install requests

echo "import numpy as np">> /var/tmp/John_App/script.py
echo "arr=np.random.randint(0,10,10)">> /var/tmp/John_App/script.py
echo "print(arr)">> var/tmp/John_App/script.py

echo -e "import requests">> /var/tmp/Application_Main/script.py
echo -e "response=requests.get('https://urfu.ru/ru')">> /var/tmp/Application_Main/script.py
echo -e "print(response.headers)">> /var/tmp/Application_Main/script.py

python3 /var/tmp/John_App/script.py
python3 /var/tmp/Application_Main/script.py
deactivate



