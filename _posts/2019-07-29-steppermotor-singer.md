---
layout: post
title: "Stepper Motors the Singers"
date: 2019-07-29 17:57:00
tags: hardware 3d-printing
categories: hardware
description: This post explores the fascinating concept of making stepper motors “sing” by controlling their movement to generate musical tones. It covers the physics behind the technique, the hardware setup using an Arduino and stepper motor drivers, and how MIDI signals are used to create music with repurposed 3D printer motors.
disqus_comments: true
thumbnail: assets/img/290719/WhatsApp-Image-2019-07-21-at-15.13.21.jpeg
---

Stepper motors are a very common motor that have been used heavily in our life. It is a simple motor that have at least two coils that inter-switching to drive the movement. As the result, these motor are well controlled with high accuracy and use less complicated circuit compared to encoder-based servo motor. However it does lose step easily because it is an open loop system, unlike servos have encoder as feedback system, so it is not highly practiced in industry uses.

{% include video.liquid path="https://www.youtube.com/embed/pBabRHcY9d0" class="img-fluid rounded z-depth-1" caption="I have made it 4 years ago using floppy drive, forget about the record quality, I'm sorry. However if you are interested on floppy music, do let me know in the comment section." %}

Stepper have been used in printers, hard disk, floppy disk drive, CNC, robots and etc. Have you realise when these appliance running, it produce some weird sound? Maybe you aren't because life is so busy and you don't have such free time like me to appreciate these splendid music that sound like symphony.

{% include video.liquid path="https://www.youtube.com/embed/ObUng93mWds" class="img-fluid rounded z-depth-1" caption="As you can hear, 3D printers produce very noisy sound." %}

I have few 3D printers that are producing damn noisy sound when it is operating. These sound are varying when the moving speed changes. I comes out an idea to make them a singing machine. This idea was like an adrenaline to me, I feels my spirits was burning.

"These sound are varying when the moving speed changes.", sound like very physics? Yeah, I quickly realise that this is related to a physics formula, which is $$Time = \frac{1}{frequency}$$ . With this, we can merely produce any sound of any frequency by calculate the time required and spin the motors with it. For an example, let say we need to generate C4 tone, which is 262Hz, the time per step should be 0.003818 seconds.

To bring the ideology to reality, I used a micro-controller to realise it. Arduino is a great option here as it is simple to be programmed, with plenty of library and abundant of source code available online. Beside that, to drive the stepper, we need stepper motor driver too(like Pololu A4988 that have been used in 3D printers), because the power of micro-controller is too low to drive the stepper(12V needed). Stepper motor driver also driving the motor using sinusoidal wave while receiving digital input of steps from micro-controller. With turning on and off the step signal of the driver with specific timing, we are able to control the speed of the stepper, and we are closer to made the dream into reality.

{% include figure.liquid loading="eager" path="https://a.pololu-files.com/picture/0J10073.600.jpg?75d9ca5bb2e095e5c5f64350019e1b81" class="img-fluid rounded z-depth-1" caption="Manufacturer suggested wiring. Source: [https://www.pololu.com/product/1182](https://www.pololu.com/product/1182)" %}

{% include video.liquid path="https://www.youtube.com/embed/1ajn-7o3vlM" class="img-fluid rounded z-depth-1" caption="Playing A3 220HZ on stepper motor" %}

As a realist, I don't like to reinvent the wheels, I believe there would be related open source projects available online. Why not we just grab it and use it with little modification to suit our works. I found a [useful repo](https://github.com/jzkmath/Arduino-MIDI-Stepper-Motor-Instrument) that use simple code to implement this. This repo have complete source code on interpreting midi signal from computer and driving the stepper motor which save me a lot of time.

Arduino read the serial data stream from computer that contain music notes that to be played. To convert the midi into serial streams, we have to take few steps. [loopMIDI](https://www.tobias-erichsen.de/software/loopmidi.html) are used to create a virtual MIDI interface on windows, and [Hairless Midi](http://projectgus.github.io/hairless-midiserial/) are used to convert MIDI from virtual interface and transmit to Arduino's serial stream.

{% include figure.liquid loading="eager" path="assets/img/290719/Screenshot-2019-07-22-at-10.59.06-PM.png" class="img-fluid rounded z-depth-1" caption="loopMIDI" %}

{% include figure.liquid loading="eager" path="assets/img/290719/Screenshot-2019-07-22-at-10.59.09-PM.png" class="img-fluid rounded z-depth-1" caption="Hairless MIDI" %}

From the aforementioned Github repository, there is a fully functional Arduino code for use to upload to our own Arduino. Upload the sketch to the micro-controller is simple with Arduino IDE, just open the ino sketch and click upload and you are done.

{% include figure.liquid loading="eager" path="assets/img/290719/Screenshot-2019-07-22-at-11.12.07-PM.png" class="img-fluid rounded z-depth-1" %}

When we playing midi music, the motor will moving and generate beautiful tones. Any midi player will worked, I using Windows Media Player here, classic enough. Did I recall your childhood memory?

{% include figure.liquid loading="eager" path="assets/img/290719/Screenshot-2019-07-22-at-11.14.20-PM.png" class="img-fluid rounded z-depth-1" %}

Here are the stepper motors connected to Arduino, prepared to sing to me. Four motors are playing different tones that ensembles a beautiful song. By the ways, these are the motors that scraped from 3D printer, there are still gears and pulleys haven't been removed, haha.

{% include figure.liquid loading="eager" path="assets/img/290719/WhatsApp-Image-2019-07-21-at-15.13.21.jpeg" class="img-fluid rounded z-depth-1" caption="The formation of the stepper orchestra." %}

{% include video.liquid path="https://www.youtube.com/embed/bULEc7-MSRg" class="img-fluid rounded z-depth-1" caption="Playing Super Mario Theme song on the stepper" %}

The journey doesn't end here, stepper music sound interesting, but it still missing something, why not we play the songs with more instruments? The [Tesla coil](http://jiuntian.com/blog/2019/tesla-coil/) (refer my previous blog post) are a great candidates too :D. This time, I managed to ask one of my friends to enrich the stepper music with her mesmerising piano, is this consider an extra bonus for this week post? Hope you like it.

{% include video.liquid path="https://www.youtube.com/embed/FqcIFr44CwU" class="img-fluid rounded z-depth-1" caption="Playing Super Mario Theme song on the stepper" %}
