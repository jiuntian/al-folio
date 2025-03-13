---
layout: post
title: 3D Printing Timelapse with OctoPrint
date: 2019-08-03 17:57:00
tags: 3d-printing
categories: hardware
description: This post explores the fascinating concept of making stepper motors “sing” by controlling their movement to generate musical tones. It covers the physics behind the technique, the hardware setup using an Arduino and stepper motor drivers, and how MIDI signals are used to create music with repurposed 3D printer motors.
disqus_comments: true
thumbnail: assets/img/030819/WhatsApp-Image-2019-08-03-at-16.48.53.jpeg
---

{% include figure.liquid loading="eager" path="assets/img/030819/WhatsApp-Image-2019-08-03-at-16.48.53.jpeg" class="img-fluid rounded z-depth-1" %}

## 1\. Introduction

3D Printing have once became a trend few years ago, and it caught my interest. Since 2015, I built 3 3D printers of different structures, and the streak end because of a pre-university course offer letter that asked me to go 160km away from my house(damn). So I have stop expanding the number of 3D printers in my house(luckily). With years of immersion with it, I understand the whole process from beginning to end for an object to be shaped deeply, it is a long and boring process that no one will interested in.

3D printing makes peoples interested with it but I am sure the process itself alone won't! An object normally will takes 4 to 6 hours to be printed, and the times varies with size and complexity of the object. NO ONE WILL PATIENT ENOUGH TO WATCH THIS SHIT. In order to demonstrate the whole process, and caught people interests with it, here come the timelapse for 3D printing, a.k.a solution for impatient people to appreciate the boring but beautiful process.

## 2\. Methods

To create 3d printing timelapse, you have two options, first is to use a DSLR and a remote shutter. Let the shutter connected to the 3d printer controller board, and trigger the shutter for every layer change. The wiring can refer to the diagram below:

{% include figure.liquid loading="eager" path="assets/img/030819/lumix_remote.png" class="img-fluid rounded z-depth-1" caption="How 2.5mm remote shutter jack works" %}

{% include figure.liquid loading="eager" path="assets/img/030819/scheme.jpg" class="img-fluid rounded z-depth-1" caption="Let 5V be the trigger signal" %}

Second option is use timelapse feature that included in OctoPrint. This feature is very user-friendly, and only took seconds to set up. You may use raspberry pi camera or USB webcam. Just hook up your camera and we are ready to go for next step.

{% include figure.liquid loading="eager" path="assets/img/030819/Screenshot-2019-08-03-at-4.44.19-PM.png" class="img-fluid rounded z-depth-1" %}

In OctoPrint interface, go to `Timelapse` tab and choose your preferred configuration and then finally `Save changes`. Timelapse will be automatically created when next time you started your printing.

## 3\. Results and Discussion

{% include video.liquid path="assets/video/030819/slow.mp4" class="img-fluid rounded z-depth-1" controls=true %}

This is part of how 3D printing is printing the object, look at that, how slow it is, "confirm no one want to watch la". So here come the timelapse :D

{% include video.liquid path="https://www.youtube.com/embed/0tVyaLef6DM" class="img-fluid rounded z-depth-1" caption="A bit shaky because I forgot to fix the camera" %}

This 1 minute short video is actually 4 hours behind the scene. After four hours of waiting, and finally the results is done, and it is satisfied.

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/030819/minion1.jpeg" class="img-fluid rounded z-depth-1" %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/030819/minion2.jpeg" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

But today I not just going to share only one timelapse video, please don't leave and watch the video below.

{% include video.liquid path="https://www.youtube.com/embed/H5DrHsOBjAM" class="img-fluid rounded z-depth-1" caption="This is Kumamon and it took nearly 7 hours." %}

{% include figure.liquid loading="eager" path="assets/img/030819/WhatsApp-Image-2019-08-03-at-16.48.51.jpeg" class="img-fluid rounded z-depth-1" caption="This is the final result after removed the support structures. Looks stupid and cute?." %}

There is one more video.

{% include video.liquid path="https://www.youtube.com/embed/VjJLyHCHN-0" class="img-fluid rounded z-depth-1" %}

## 4\. Conclusion

I hope that with these creation of timelapse could have developed interests about 3D printing on public, especially the readers here. Thanks for reading till the end, if you like the post, please share the blog and subscribe to my youtube channel.
