#!/bin/bash

# Instalar Python 3 y pip
sudo yum install -y python3 python3-pip

# Descargar e instalar Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum localinstall -y google-chrome-stable_current_x86_64.rpm

# Verificar la versión de Google Chrome
google-chrome --version

# Instalar Selenium
pip3 install selenium

# Descargar y configurar ChromeDriver
CHROMEDRIVER_VERSION="94.0.4606.61"
wget "https://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip"
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/

# Instalar webdriver-manager
pip3 install webdriver-manager

