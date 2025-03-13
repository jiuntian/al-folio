---
layout: post
title: "A journey of a mystery parcel"
date: 2019-07-07 17:57:00
tags: hardware
categories: hardware
description: A mistaken online order led to an unexpected journey of transforming a mystery parcel into a fully functional 8x8x8 LED cube. Despite initial disappointment, the project became a rewarding hands-on experience in soldering, electronics, and creative problem-solving.
disqus_comments: true
thumbnail: assets/img/070719/WhatsApp-Image-2019-07-05-at-16.44.42-e1562508665234.jpeg
---

All the mystery stories started with a terrible experience of online shopping. Few months ago, i ordered an EPROM programmer for my project. It was a project of building an 8 bit computer(still building), and I need the programmer to flash the EPROM. However, after a week of waiting, the parcels I received come with a disappointment. There was a moment of sadness when I realised that the parcels I received is not containing EPROM programmer but this shit.

{% include figure.liquid loading="eager" path="assets/img/070719/WhatsApp-Image-2019-07-03-at-21.57.11.jpeg" class="img-fluid rounded z-depth-1" caption="This is what I received :(" %}

So, what is this? I have no idea too. After a few minutes of sadness, I figured out that this could be an LED light cube. I doubt this could be a mistake during sending the goods. I quickly contacted the seller but I got no response from him, I know I was GG(ruined) .

Few months later, when I look at the package, I feel like I could still make use of this shit instead of throwing away, so here come to the next phase of its journey.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-03-at-21.57.11-1.jpeg" class="img-fluid rounded z-depth-1" %}

I start to figure out how each components connects to each other, and then I heat my soldering iron to 300ºc and prepared the solder wire. I quickly soldered all the components, it turns out a good looking board when it is completed. This is a light cube that made of micro-controller and latches (74HC573) .

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-04-at-10.39.43-1.jpeg" class="img-fluid rounded z-depth-1" %}

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-04-at-10.39.43-2.jpeg" class="img-fluid rounded z-depth-1" %}

After the soldering is done, I tried to put all the components to its correct position and location, and end up I got this(sorry for the mess).

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-04-at-10.39.44.jpeg" class="img-fluid rounded z-depth-1" %}

Hmm, LED cube without LED? Of course not. Here come with 550 pieces(only 512 of them will be used, as this cube is 8x8x8) of LED bulbs, what a big bulk of LEDs, can't imagine my future two days would be with them :D

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-04-at-13.24.36.jpeg" class="img-fluid rounded z-depth-1" %}

So it's time to unpack them and fold them to appropriate shape. I folding and bending the legs for 512 times for each LED, until it became an unconscious mind and automated task for my hand and brain. The whole process is so boring and tired. Fortunately, after few hours, I managed to done with it, and they really looks like a fish bone when they are put together.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-04-at-13.26.42.jpeg" class="img-fluid rounded z-depth-1" caption="LEDs have to be bend to this shape to be soldered as a cube" %}

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-04-at-13.44.25.jpeg" class="img-fluid rounded z-depth-1" caption="A bunch of LEDs putting together looks like a fish bone." %}

After bended all the LEDs, I started to make a tool that facilitate my next process: Soldering them into layers of LEDs. I need a tool that holds the LED in its shape, and to do that, I used a cardboard and drills holes through it to allow LEDs to sit on position. On the cardboard, the LEDs are arranged in a 8 x 8 matrix to be soldered. Task become easier right?

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.16.19.jpeg" class="img-fluid rounded z-depth-1" %}

At first, the lines are drawn on the cardboard and then drilled. I use pencil to drill it here.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.16.08.jpeg" class="img-fluid rounded z-depth-1" %}

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.15.56.jpeg" class="img-fluid rounded z-depth-1" %}

So it's time to start the boring and long process of soldering now hehe.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.15.43.jpeg" class="img-fluid rounded z-depth-1" %}

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.14.20.jpeg" class="img-fluid rounded z-depth-1" %}

All the LEDs are required to be solder one by one, so there is a lot of work to be done here. It takes around 35 minutes to solder one layer (64 LEDs)

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.15.26.jpeg" class="img-fluid rounded z-depth-1" %}

So this is how it's look like when a layer is done. On the next day, I finished all the 8 layers with all 512 LEDs.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-17.14.05.jpeg" class="img-fluid rounded z-depth-1" %}

After that, I install each layer to the board, and I got this.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-15.51.42.jpeg" class="img-fluid rounded z-depth-1" %}

But the work haven't done yet, each layer of LEDs are still had to connect their cathode to the board(the LEDs are shared cathode for each layer).

After I connected all the cathode, I powered it up and yeah it is done now.

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-16.44.42.jpeg" class="img-fluid rounded z-depth-1" %}

{% include figure.liquid loading="eager"  path="assets/img/070719/WhatsApp-Image-2019-07-05-at-16.52.39.jpeg" class="img-fluid rounded z-depth-1" %}

Here the journey of this mysterious parcel come to an ending. I not sure whether it is a good or bad ending, but I am sure that this is a special and enjoy experience for me with some of sadness, because I still haven't get any refund from the seller that send me wrong item, after 3 months, and probably I won't get it in anytime soon.

Although this cube is not supposedly to be my thing, but the fate brought us together, I cherish the time we spent together and I hope our journey continues splendid, and to be honest, you looks charming.
