---
layout: post
title: "Setup OctoPrint (Raspberry Pi)"
date: 2019-07-20 17:57:00
tags: 3d-printing
categories: hardware
description: This post covers setting up OctoPrint on a Raspberry Pi to enable remote control and monitoring of a 3D printer over the Internet. It walks through installing the OctoPrint image, configuring WiFi, accessing the web interface, and exploring key features like time-lapse recording and remote management.
disqus_comments: true
thumbnail: assets/img/200719/IMG_20190717_182405.jpg
---

Raspberry Pi has been in the world for 7 years, since February 2012. I have been following the news of raspberry pi since the day it released, and I managed to get my very first Raspberry Pi in 2013 too. My first Pi is still surviving even after flood in water, and many worse condition when being used on various projects.

I bought a Raspberry Pi 3B in 2018, to expands its my current demanding needs. Today, this pi would be the today's protagonist to demonstrate how to set up your very own Pi. This article is writing just for sharing how set up your Pi, since it might very new to those beginner of Raspberry Pi.

{% include figure.liquid loading="eager" path="assets/img/200719/IMG_20190717_182405.jpg" class="img-fluid rounded z-depth-1" %}

To set up the raspberry pi, first you need to have a Raspberry Pi (of course) and a SD card with size at least 8GB. Then, you also need to have the image of the operating system downloaded in your computer.

{% include figure.liquid loading="eager" path="assets/img/200719/IMG_20190717_170646.jpg" class="img-fluid rounded z-depth-1" %}

The image we need today is OctoPrint. OctoPrint is a software that used to control 3D printer through the Internet, as part of IoT. With OctoPrint, one can control his/her 3D printer anywhere in the world, with various addition function that aids the users, such as Webcam live stream. Image of OctoPrint can be get from [here](https://octoprint.org/download/).

{% include figure.liquid loading="eager" path="assets/img/200719/Screenshot-2019-07-17-at-4.56.55-PM.png" class="img-fluid rounded z-depth-1" %}

After downloaded the image, we need to flash the image to SD Card, it is advise beginner to use Etcher to do it. You can download Etcher [here](https://etcher.io/). Select the image you have downloaded, select the SD card, and now you can start flash it. (Pro user on Mac/Linux you may use dd instead, ignore this)

{% include figure.liquid loading="eager" path="assets/img/200719/Screenshot-2019-07-17-at-4.56.27-PM.png" class="img-fluid rounded z-depth-1" caption="Etcher website" %}

{% include figure.liquid loading="eager" path="assets/img/200719/Screenshot-2019-07-17-at-5.08.49-PM.png" class="img-fluid rounded z-depth-1" caption="Etcher interface" %}

OctoPrint come with a alternative configuration that help users to connect to Wifi without uses of keyboard and monitor, just plug and play. To configure the wireless network on the raspberry pi, one should edit `octopi-wpa-supplicant.txt` on the root of the flashed card with your wireless network credentials. Follow the instruction in the text file and then you are done.

After all the steps are done, we are able to power it up now. Wait for a few minute for it to connect to Internet, and then we can start the next steps.

To enter the terminal of raspberry pi, we can SSH with username `pi` and address `octopi.local`(if you have bonjour enabled, or else just IP address). The password is `raspberry`.

{% include figure.liquid loading="eager" path="assets/img/200719/Screenshot-2019-07-17-at-6.33.26-PM.png" class="img-fluid rounded z-depth-1" %}

We proceed to raspberry pi setting by entering command `sudo raspi-config`, it is advised to change the default password for security reason. You can also setting the time zone and other settings as you wish.

{% include figure.liquid loading="eager" path="assets/img/200719/Screenshot-2019-07-17-at-6.35.06-PM.png" class="img-fluid rounded z-depth-1" %}

We are all done to enter the Web interface of OctoPrint to enjoy our 3D printing through Internet now. Oh wait, there are still a wizard to configure the OctoPrint. (Address is `http://octopi.local/`) You will be required to set up username and password for the panel and enter your printer setting.

{% include figure.liquid loading="eager" path="assets/img/200719/Screenshot-2019-07-17-at-6.37.46-PM.png" class="img-fluid rounded z-depth-1" %}

{% include figure.liquid loading="eager" path="assets/img/200719/control-tab.png" class="img-fluid rounded z-depth-1" caption="Example of OctoPrint interface (not showing mine here for privacy) Source: Octoprint website" %}

OctoPrint come with some great features like time lapse video, remote access, and etc. Unlike Repetier Host on Windows that crash your prints when the computer crashed, OctoPrint is much stable. It worth a try if you have a 3D printer that is without Internet access.
