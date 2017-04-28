---
layout: post
title: "A Mobile Data-Collection Workflow for Archaeologists"
author: isaacullah
modified: 2017-04-28
comments: True
excerpt: "A Mobile Data-Collection Workflow for Archaeologists..."
tags: [archaeology, fieldwork, Mobile]
---

It's a busy time here at SDSU and in the Computational Archaeology Laboratory. The semester is almost over, and my GIS students are busy with their final projects. Also, I'm getting all my fieldwork plans finalized and starting to get prepared. This summer, I'll be doing two back-to-back field seasons. First, it's the final fieldwork season for the Historic Buildings Survey on the Bova Marina Archaeological Project. Second, it's a short exploratory field project in southeast Kazakhstan, where we will be checking out some new alluvial fans to the east of Talgar. 

<center>
<figure>
	<a href="/images/isaac_in_a_stream.jpg"><img src="/images/isaac_in_a_stream.jpg" alt="Me in May, 2013, standing in the middle of a stream in Kazakhstan, diddling my phone. I'm doing it for science, I swear!" width=300></a>
	<figcaption>Me, in May, 2013, standing in the middle of a stream in Kazakhstan, diddling my phone. I'm doing it for science, I swear!</figcaption>
</figure>
</center>

As you might know, I'm a huge fan of digital methods in archaeology (yeah, who knew!?). Part of that has been the use of mobile devices for field data collection. Starting with the Wadi Quseiba survey, where [we deployed iPad devices](http://onlinedigeditions.com/article/Digital+Archaeological+Survey%3A+Using+iPads+In+Archaeological+Survey+In+Wadi+Quseiba,+Northern+Jordan/2270671/0/article.html) to each surveyor for data collection, I've been convinced that this is the future of archaeology. That was back in 2012 when first tried that out, and we were among the first large-scale projects to go for an all-digital data recording pipeline. It wasn't without its hiccups, of course, but it worked remarkably well. My main issues with our approach (iOS devices and FileMaker GO forms) were 1) I hate Apple software products (personal preference), 2) most iOS devices (and most mobile devices in general) have terrible GPS chips, and 3) FileMaker GO wasn't as Geo-enabled as a GIS nerd like myself wanted it to be. So, over the last several years I've been perfecting an alternative pipeline, and that's what this post is going to be about. 

---

## Hardware

People often ask me about hardware for mobile data collection. My great preference is for Android devices. That's partly because I like Android and prefer it on my own personal devices. But, it is also because there are way more open source apps available for Android, including some awesome open-source data collection apps. If you don't know why open source is important, have a read [here](http://www.tandfonline.com/doi/abs/10.1080/00438243.2012.743259?journalCode=rwar20). If you are a die hard iOS fan, don't worry. This post will have some tips for you as well.

### The Data Machine (aka. "Mobile Device")

Believe it or not, this is the least critical component of the whole set-up. Pretty much any modern mobile device will work. Seriously. So you can really just get the one you want. Seriously. Ok, ok, I *do* have some advice for you in terms of specs: 

1. Get an "8-inch" size tablet. Phones are too small, 10-inch tablets are too big. I find that 8-inch (or 7-inch) tablets are juuuust right for the field.
2. Focus on RAM above all else. Try to get at least 2GB of RAM. The more the better. Trust me, you will feel it if you get a low-memory device.
3. Try to get a good rear camera. 8 megapixels minimum. If they tell you anything else, cameras with Sony chips in them tend to be better.
4. Try to get something with a recent OS, and as close to "stock" as possible (this is more for Android users than anything else).

And that's it. Really. Most tablets will have plenty long battery life and plenty of CPU power to do what we need them to do. Glare-reducing screens are great, and expandable storage with a micro-SD card slot is nice to have, but not essential. There are a few more of these bells and whistles you can look for if you want to, but as long as it meets those 4 requirements above, you will be fine. I just placed an order for 6 [Lenovo Yoga tab 3, 8-inch tablets](http://www3.lenovo.com/us/en/tablets/android-tablets/yoga-tab-3-series/Lenovo-YT3-850F/p/ZZITZTBYT0F). These will cost me only about $150 each, and they will be easy to hold onto in the field. They are going to be great! Not only that, but it's not the end of the world if one breaks in the field, nor will it be the end of the world when they are out of date in two years. This is also why I never invest in fancy Otterbox cases for these things. 

### Your secret weapon: Bluetooth GPS

Yup. This is the secret. Buy cheap tablets, and spend the money where it's most useful: your GPS. The newest revolution in GPS technology is basically old tech: Bluetooth. All the software action is on your mobile device. But a hardware GPS is still [miles beyond what your device is capable of](http://androgeoid.com/2010/09/why-use-an-external-bluetooth-gps-receiver-with-an-android-phone/). Did you know that your mobile device also uses the wifi and cellular network signals to get it's position fix? When you are way out in the field and far from any signals, your phone will likely give you terrible location information, because it probably has a cheap-o GPS chip in it (not all phones do, but most do). Also, your battery will wear down faster as it searches for these signals. Do yourself a favor: stick your device in airplane mode, then flick on the Bluetooth, and connect to an external GPS. 

Here's my list of good Bluetooth GPS investments:

1. [Bad Elf GNSS Surveyor](https://bad-elf.com/pages/be-gps-3300-detail) - These are the units that I use and I highly recommend them. Very accurate, and work flawlessly. They cost about \$599, and they will do an educational discount if you ask nicely. You might be fine with their slightly lower-tier product, the [GPS Pro+](https://bad-elf.com/pages/be-gps-2300-detail), which costs only $299. They have several other less-technical units that may work for your as well. Bonus: Bad Elf believes in Open Source hardware and software!!
2. [Trimle R1 GNSS Receiver](https://www.trimble.com/mappinggis/r1-gnss-receiver.aspx) - Got money burning a hole in your pocket? I guess you could spend it on this. But it's not really any better than the Bad Elf unit listed above.
3. [Garmin GLO](https://buy.garmin.com/en-US/US/p/109827) - Not as good as either of the above, but only $99 and from a name you know already. Personally, I would buy one of the lower-tier Bad Elf products over this one, but maybe you like Garmins.

---

## Software

Ok, this is where the rest of the action is at. As always, my workflows prefer Free and Open Software whenever possible. Let's start with Android, since that's what I am working with myself.

### Android (aka. what Isaac does)

#### 1) Set up your Bluetooth for GPS

Let us start with connecting your awesome new Bluetooth GPS unit to your device. 

1.To do this, you first need to download and install the free [Bluetooth GPS app](https://play.google.com/store/apps/details?id=googoo.android.btgps&hl=en).

2. Once you've done that, you need to turn on "Developer Mode." Swipe down from the top, and click the little cogwheel icon to enter your phone's settings menu. Scroll to the bottom, and tap the "About Phone" menu item. Scroll again to the bottom and find the "Build Number" field. Tap on it about 10 times in quick succession. You have now enabled developer mode. 

3. Now, you have to allow "Mock GPS Location" so that the Bluetooth GPS signal can override the internal GPS. Go back to the main settings menu, and find the new "Developer Options" menu item. Click it, and find the item called "Select mock location app." Tap it, and select the "Bluetooth GPS" app from the list.

4. Now, pair your Bluetooth GPS unit with your phone (follow the directions for your unit), and then start the Bluetooth GPS app. If all goes well, you can now tap "Connect", and you will see the new location information in the fields of the app. To broadcast this to your other location aware apps, make sure to check the "Enable Mock GPS Provider" box in the app. Now you should have a notification in the notification bar telling you that Bluetooth GPS is working and that Mock Location is enabled. 

#### 2) Get some forms and collect some data!

Ok, you got your awesome extra precise GPS data streaming in. Now what? Well, now you gotta do something with it. Let's use the awesome apps to deploy some forms! 

1. [GeoODK](http://geoodk.com/index.html) - GeoODK, and the original [Open Data Kit](https://opendatakit.org/) project are what I recommend for Android users. These are really great apps for field data collection into a centralized database. GeoODK is a little more geo-capable than is the original ODK, so that's why I recommend it. Basically, with wither of these, you can use a spreadsheet and some codes to make nifty XML forms that look great on your mobile device in the app. Follow [this guide](http://geoodk.com/xlsform_format.html) to figure out how to make your own forms. 
You can choose to use the cloud-based deployment (like with Ona or Formhub), but I always just copy everything to and from my devices. Just attach your device to your computer via USB, and transfer the form you want to use. Luckily, this is all made very simple with the awesome [ODK Briefcase](https://opendatakit.org/use/briefcase/) software. It's a Java program, so it runs on your computer. You will also use it to get your data off the device and back onto your computer. You can then export a sweet [CSV file of all your lovely data](https://opendatakit.org/use/aggregate/data-transfer/) that you can open in any spreadsheet program. :)

2. [EpiCollect](http://www.epicollect.net/) -  Epicollect is a lot like ODK. But it's forms are a little less flexible. However, you might like it's simplicity. If you are on iOS, however, this is your best bet if you don't want to use FileMakerGO (see below).

#### 3) Hey, I thought you said we were going to do GIS!!

As cool as GeoODK is, it's not really a full fledged mobile GIS solution. It's great for forms and it's very location-aware. But we are GIS people, darn it! We want a REAL GIS application. Well you are in luck. There are three good ones to use.

1. [QField](http://www.opengis.ch/android-gis/qfield/) - Ok, this is in serious development right now, but it WORKS! Yes, this is essentially a stripped down mobile implementation of QGIS. It takes a little to figure out how it all works together, but it works really, really well. You can digitize and edit shapefiles, have any kind of Geotiff as a backdrop, and you can sync it easily to your main QGIS repository on your computer. The app goes hand-in-hand with the [QFieldSync Plugin](http://www.qfield.org/docs/qfieldsync/index.html) that you can install from the Plugins manager within QGIS. That will help you package everything up to import and export your data from your device. Read [here](http://www.qfield.org/docs/index.html), and puzzle out how to get it all working. You can do it! Best of all, this is Open Source.

2. [Avenza PDF Maps](http://www.avenza.com/avenza-maps) - Qfield too much for you to deal with right now? Use Avenza PDF maps. It's not open source, but it's easy to use and it works well. Similar functionality to QGIS, but not as well-rounded, nor as integrated into a QGIS or GRASS workflow.

3. [Geopaparazzi](http://geopaparazzi.github.io/geopaparazzi/) - Last, we have Geopaparazzi. I really want to love Geopap. It's a really great idea, and it really does have the potential to be a fully standalone form gatherer AND mobile GIS solution. If it weren't so dang hard to set up projects and put offline layers in to it. It requires you to make Mapbox layers, which never work for me. The form builder is a lot more clunky than ODK's too. Maybe you will think differently than I, so do give it a chance.



### But I have a really fancy iPhone, and I want to play too!!

Rest easy, my friend! You can join the party too, with your bespoke coffee thermos, lumberjack boots, and rolled up jean shorts. Actually, you have a little advantage with your iOS device: your bluetooth GPS will connect right away without any messing about in the settings. Bad Elf has a [cool little iOS app](https://bad-elf.com/pages/gps-app) to help you that with their GPS units. Give that whirl, and make sure it's all working, and then let's look at some iOS apps you can use to do much of the above.

1. [EpiCollect](http://www.epicollect.net/) - Yup. EpiCollect will work on both iOS and Android. It's open source too. Yay!
2. [FileMaker Go](http://www.filemaker.com/products/filemaker-go/) - If you want a solution that is proven to work for form creation on iOS, this is it. It does work, but it's not Open Source, and I can't help you.
3. [Avenza PDF Maps](http://www.avenza.com/avenza-maps) - This is your best bet for free offline mapping with an iOS device. Again, not open source, but it works.

## Questions? Suggestions? Let's hear 'em!

Okay, that's what I've got for your. This is all stuff I either figured out on my own, read about online somewhere, or someone told me about. If you've got questions or suggestions for things I've overlooked or didn't know about, I would love to hear them! Use the comments section below, or [e-mail me](iullah@sdsu.edu)!
