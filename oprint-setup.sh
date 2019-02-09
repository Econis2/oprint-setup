#!/bin/bash

cd ~

sudo apt update -y

sudo apt install subversion libjpeg62-turbo-dev imagemagick ffmpeg libv4l-dev cmake git -y

git clone https://github.com/jacksonliam/mjpg-streamer.git

cd mjpg-streamer/mjpg-streamer-experimental

export LD_LIBRARY_PATH=.

make

cd ~

sudo apt install python-pip python-dev python-setuptools python-virtualenv libyaml-dev build-essential -y

mkdir OctoPrint && cd OctoPrint

virtualenv venv

source venv/bin/activate

pip install pip --upgrade

pip install https://get.octoprint.org/latest