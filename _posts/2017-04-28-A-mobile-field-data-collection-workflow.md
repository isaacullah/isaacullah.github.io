---
title: "A Mobile Data-Collection Workflow for Archaeologists"
modified: 2017-05-22
excerpt: "A Mobile Data-Collection Workflow for Archaeologists..."
tags: [digital archaeology, fieldwork, FOSS, methods]
layout: single
author_profile: true
read_time: true
comments:  true
share: true
related: true
toc: true
toc_sticky: true
---

It's a busy time here at SDSU and in the Computational Archaeology Laboratory. The semester is almost over, and my GIS students are busy with their final projects. Also, I'm getting all my summer plans finalized and starting to get prepared to head off for the field! This summer, I'll be doing two back-to-back field seasons. First, it's the final fieldwork season for the Historic Buildings Survey of the [Bova Marina Archaeological Project](http://www.arch.cam.ac.uk/research/projects/bova-marina). Second, it's a short exploratory field project in southeast Kazakhstan with the [Kazakh-American Archaeological Expedition](http://isaw.nyu.edu/news/field-report-digging-at-the-edge-of-the-tian-shan-mountains-in-kazakhstan), where we will be checking out some new alluvial fans to the east of Talgar. 
<br>
<br>

As you might know, I'm a huge fan of digital methods in archaeology (yeah, who knew!?). Part of that has been the use of mobile devices for field data collection. Ever since the Wadi Quseiba survey back in 2012 and 2013, where [we deployed iPad devices with custom FileMaker GO forms](http://onlinedigeditions.com/article/Digital+Archaeological+Survey%3A+Using+iPads+In+Archaeological+Survey+In+Wadi+Quseiba,+Northern+Jordan/2270671/0/article.html) to each surveyor for data collection, I've been convinced that this is the future of archaeology.

<center>
<figure>
	<a href="/images/isaac_in_a_stream.jpg"><img src="/images/isaac_in_a_stream.jpg" alt="Me in May, 2013, standing in the middle of a stream in Kazakhstan, diddling my phone. I'm doing it for science, I swear!"></a>
	<figcaption>Me, in May, 2013, standing in the middle of a stream in Kazakhstan, diddling my phone. I'm doing it for science, I swear!</figcaption>
</figure>
</center>

Those first forays into digital data collection were exciting, and we were among the first large-scale projects to go for an all-digital data recording pipeline. They weren't without their hiccups, of course, but the method worked remarkably well. My main issues with our approach in the Wadi Quseiba project were: 1) I really can't stand iOS (personal preference), 2) most iOS devices (and most mobile devices in general) have terrible GPS chips, 3) FileMaker GO wasn't as Geo-enabled as a GIS nerd like myself wanted it to be, and, 4) it wasn't open source. This last one bothered me the most, really, because it goes against my own dedication to the Open Source and Open Science movements. So, at the same time as the Wadi Quseiba Project was deploying iPads, I also started exploring Android options in my other field projects, with an emphasis on free and open-source tools. If you don't know why open source is important, have a read [here](http://www.tandfonline.com/doi/abs/10.1080/00438243.2012.743259?journalCode=rwar20). I've been perfecting my mobile collection pipeline over the last several years, and that's what this post is going to be about. 

---

## Hardware

People often ask me about hardware for mobile data collection. My great preference is for Android devices. That's partly because I like Android and prefer it on my own personal devices. But, it is also because there are way more open source apps available for Android, including some awesome open-source data collection apps. If you are a die hard iOS fan, don't worry. This post will have some tips for you as well.

### The Data Machine (aka. "Mobile Device")

Believe it or not, this is the least critical component of the whole set-up. Pretty much any modern mobile device will work. Seriously. So you can really just get the one you want. Seriously. Ok, ok, I *do* have some advice for you in terms of specs: 

1. Get an "8-inch" size tablet. Phones are too small, 10-inch tablets are too big. I find that 8-inch (or 7-inch) tablets are juuuust right for the field.

2. Focus on RAM above all else. Try to get at least 2GB of RAM. The more the better. Trust me, you will feel it if you get a low-memory device.

3. Try to get a good rear camera. 8 megapixels minimum. Mobile device cameras with Sony sensors in them tend to be better than others.

4. Try to get something with a recent OS, and as close to "stock" as possible (this is more for Android users than anything else). Some of the cheaper tablet makers, and some OEM's like Amazon, really put a bunch of bloatware on the device that keep it from performing at its best.

And that's it. Really. Most tablets will have plenty long battery life and plenty of CPU power to do what we need them to do. Glare-reducing screens are great, and expandable storage with a micro-SD card slot is nice to have, but not essential. There are a few more of these bells and whistles you can look for if you want to, but as long as it meets those 4 requirements above, you will be fine. I just placed an order for 6 [Lenovo Yoga tab 3, 8-inch tablets](http://www3.lenovo.com/us/en/tablets/android-tablets/yoga-tab-3-series/Lenovo-YT3-850F/p/ZZITZTBYT0F). These will cost me only about $150 each, and they will be easy to hold onto in the field. They are going to be great! Not only that, but it's not the end of the world if one breaks in the field, nor will it be the end of the world when they are out of date in two years. This is also why I never invest in fancy Otterbox cases for these things. 

### Your secret weapon: Bluetooth GPS

Yup. This is the secret. Buy cheap tablets, and spend the money where it's most useful: your GPS. The newest revolution in GPS technology is basically old tech: bluetooth. All the software action is on your mobile device, but a hardware GPS is [miles better than the GPS in your mobile device](http://androgeoid.com/2010/09/why-use-an-external-bluetooth-gps-receiver-with-an-android-phone/). Did you know that your mobile device also uses the wifi and cellular network signals to get its position fix? When you are way out in the field and far from any signals, your phone will likely give you terrible location information. That's because it probably has a cheap-o GPS chip in it (not all phones do, but most do). Also, your battery will wear down faster as it searches for these signals that it needs. Do yourself a favor: stick your device in airplane mode, then flick on the bluetooth, and connect to a high-quality external GPS. 

Here's my list of good Bluetooth GPS investments:

1. [Bad Elf GNSS Surveyor](https://bad-elf.com/pages/be-gps-3300-detail) - These are the units that I use and I highly recommend them. Very accurate, and work flawlessly. They cost about $599, but they will do a small educational discount if you ask nicely. You might be fine with their second-tier product, the [GPS Pro+](https://bad-elf.com/pages/be-gps-2300-detail), which costs only $299, but might not be quite as accurate under all conditions. They have several other less-technical units that may work for your needs as well. Bonus: Bad Elf believes in Open Source hardware and software!!

2. [Trimble R1 GNSS Receiver](https://www.trimble.com/mappinggis/r1-gnss-receiver.aspx) - Got money burning a hole in your pocket? I guess you could spend it on this. But it's not really any better than the Bad Elf unit listed above. Buy this if your boss tells you that you have to only buy Trimble products. Personally, I think it's a waste of $3000 bucks.

3. [Garmin GLO](https://buy.garmin.com/en-US/US/p/109827) - Not nearly as good as either of the above, but only $99 and from a name you know already. Personally, I would probably buy one of the lower-tier Bad Elf products over this one, but maybe you like Garmin already and don't want to branch out.

---

## Software

Ok, this is where the rest of the action is at. As always, my workflows prefer Free and Open Software whenever possible. Let's start with Android, since that's what I am working with myself.

### Android (aka. what Isaac uses)

#### 1) Set up your bluetooth for your external GPS

Let us start with connecting your awesome new bluetooth GPS unit to your mobile device. 

1. To do this, you first need to download and install the free [Bluetooth GPS app](https://play.google.com/store/apps/details?id=googoo.android.btgps&hl=en).

2. Once you've done that, you need to turn on "Developer Mode." Swipe down from the top, and click the little cogwheel icon to enter your phone's settings menu. Scroll to the bottom, and tap the "About Phone" menu item. Scroll again to the bottom and find the "Build Number" field. Tap on it about 10 times in quick succession. You have now enabled developer mode. 

3. Now, you have to allow "Mock GPS Location" so that the bluetooth GPS signal can override the internal GPS. Go back to the main settings menu, and find the new "Developer Options" menu item. Click it, and find the item called "Select mock location app." Tap it, and select the "Bluetooth GPS" app from the list.

4. Now, pair your bluetooth GPS unit with your phone (follow the directions for your unit), and then start the "Bluetooth GPS" app. If all goes well, you can now tap "Connect", and you will see the new location information in the fields of the app. 

5. To broadcast this to your other location aware apps, make sure to check the "Enable Mock GPS Provider" box in the app. Now you should have a notification in the notification bar telling you that "Bluetooth GPS" is working and that Mock Location is enabled. You are golden!

#### 2) Make some forms and collect some data!

Ok, you got your awesome extra precise GPS data streaming in. Now what? Well, now you gotta do something with it. Let's use the awesome apps to deploy some forms so we can collect all our awesome data efficiently and easily when out in the field. All of these apps are location aware, and you can record at least waypoints (and often more) as entries in your database. 

1. [GeoODK](http://geoodk.com/index.html) - GeoODK, and the original [Open Data Kit](https://opendatakit.org/) project are what I recommend for Android users. These are really great apps for field data collection into a centralized database. GeoODK is a little more geo-capable than is the original ODK, so that's why I recommend it. Basically, with either of these, you can use a spreadsheet and some codes to make nifty XML forms that look great on your mobile device in the app. Follow [this guide](http://geoodk.com/xlsform_format.html) to figure out how to make your own forms. 
You can choose to use the cloud-based deployment (like with Ona or Formhub), but I always just copy everything to and from my devices. Just attach your device to your computer via USB, and transfer the form you want to use. Then, you go out and collect your data using your form. Once you have some data, it's very simple to download it to a centralized database on your laptop with the awesome [ODK Briefcase](https://opendatakit.org/use/briefcase/) software. It's a Java program, so it runs on your computer. [Here is a great tutorial](http://sudan.validmeasures.org/using-odk-briefcase-to-pull-submissions-from-mobile-devices/) on how to use the ODK Briefcase to aggreagate data from your mobile device or devices. If you follow that workflow, managing your data over the course of field season will be a breeze. Once you ready, you can use the ODK briefcase then export a sweet [CSV file of all your lovely data](http://sudan.validmeasures.org/using-odk-briefcase-to-export-data/) that you can open in any spreadsheet program.

2. [EpiCollect](http://www.epicollect.net/) -  Epicollect is a lot like ODK. But it's forms are a little less flexible. However, you might like it's simplicity. If you are on iOS, however, this is your best bet if you don't want to use FileMakerGO (see below).

3. [FAIMS](https://www.fedarch.org/) -  FAIMS is very similar to GeoODK in concept, but different in implementation. Some advantages of FAIMS include potentially better GIS capabilites (including digitizing lines and polygons directly in app, and a true SpatiaLite geodatabase implementation), and the ability to include graphics in your forms. The downside is that it requires a Linux server implementation for data aggregation, which can be very difficult to pull off yourself if you don't know how to do that (and most of us probably don't). They do offer an "out of the box" hardware/software solution, but you do have to pay for that.

4. [Geopaparazzi](http://geopaparazzi.github.io/geopaparazzi/) - The main allure of Geopaparazzi is that it aims to be a fully integrated GIS-capable mobile data collection app. While there have been siginificant improvements in the last year or so, I have found that it is perennially *almost* functional in this regard, but not *quite* right for my needs. It *is* capable of deploying custom forms that are integrated in a true SpatiaLite geodatabase, but I have never been able to make them work properly. Not only that, there has always been some amount of overhead involved in pushing data back and forth between GeoPap and my desktop GIS software, so it currently doesn't really fit that well into the workflows I have already established. In particular, I find the [JSON-based form building process](http://geopaparazzi.github.io/geopaparazzi/#trueusing-form-based-notes) a little clunky and less flexible than the the XLS-forms format of ODK, and certainly harder for a beginner. However, you *can* build custom forms, so it certainly could work as your mobile data collection app. If you can wrangle it. A major downside is that there GeoPap form data are not meant to aggregated from multiple devices into a single, centralized, database. This could lead to some significant headaches if you want to deploy multiple devices, so GeoPap, in my opinion, is best for surveys that will use only a single device. The real added-value of trying to wrangle a GeoPap-based mobile data collection solution would be if you could also wrangle it's GIS capabilites. Those are not without their own potential hang-ups, however. I comment on these, specifically, in the next section. 

#### 3) Hey, I thought you said we were going to do GIS!!

Ok, Ok, these data collection apps with their custom forms are great and all, and it's neat that we can get some GPS data into them, but we are GIS people, darn it! We want a REAL mobile GIS application, darn it! Well you are in luck - here are some good options for your mobile GIS needs!

1. [QField](http://www.opengis.ch/android-gis/qfield/) - Ok, *caveat emptor*, this app is in serious development right now. But it DOES work! And yes, you guessed it: this is essentially a stripped down mobile implementation of QGIS. It takes a little effort to figure out how it all works together, but it works really, really well. If you already [know QGIS](http://isaacullah.github.io/GIS_Workshops/), then you will really want to start working with QField. You can digitize and edit shapefiles, have any kind of Geotiff as a backdrop, and you can sync it easily to your main QGIS repository on your computer. You can also have rudimentary data entry based on the table you create for your shapefiles. This is nowhere near as flexible as the form-based data entry you can do with GeoODK (and the other apps), but if you only need a few fields of simple data, it will work perfectly well for your needs. Perhaps best of all, the app goes hand-in-hand with the [QFieldSync Plugin](http://www.qfield.org/docs/qfieldsync/index.html) that you can install from the Plugins manager within QGIS. That will help you package everything up to import and export your data from your device, making it pretty seamless to integrate into your regular desktop GIS workflow. Read [here](http://www.qfield.org/docs/index.html) to see how to get it all working. If you are already familiar with QGIS, it's really very easy to figure out. You can do it! Best of all, this is Open Source.

2. [Avenza PDF Maps](http://www.avenza.com/avenza-maps) - Qfield too much for you to deal with right now? Use Avenza PDF maps. It's not open source, but it's easy to use and it works well. Similar functionality to QField, but not as well-rounded, nor as integrated into a QGIS or GRASS GIS workflow. You can export your raster data as basemaps in a variety of common GIS formats, and load them in to the app very easily. You can add waypoints and tracks with some basic table data. Easily expor these to KML or GPX formats, and bring them into your desktop GIS. And that's about it!

3. [GeoODK](http://geoodk.com/index.html) - GeoODK does have some basic GIS capabilities. If you have a mobile data collection, it is possible to stream web mapping data from the internet (Open Street Map, etc.), or, with some doing, you can generate some offline map tiles in the MBtiles format (a web mapping format), and display these as base maps instead. Argueably, this is the weak point of using GeoODK as a mobile GIS. [It is quite tricky](http://geoodk.com/mbtiles_howto.html) to produce your basemaps in the correct formats. The good news is that there may [now be a way to export MBtiles basemaps from QGIS with the neat QTiles plugin](http://www.qgistutorials.com/en/docs/creating_basemaps_with_qtiles.html). If you can do that, however, then you can have a custom backdrop over which to create points, lines, and polygons that are dynamically linked to your database (your forms data). You can do this manually (by "drawing" on the map), or automatically by following your GPS track. I have personally had little success in creating proper offline basemaps, but the value added of having detailed vector data of features dynamically linked to my database is a big incentive for me to figure this out eventually. Until then, my solution is to just take a simple waypoint in GeoODK, and use that to later link up to the more detailed GIS data I collect with QField. Luckily, the GeoODK project also provides a little [tool to convert the CSV file from your agreggated data export into a shapefile](http://geoodk.com/mdk_howto.html). That's a great way to get your database into a GIS format at the end of your project, so connecting up all of your data is not overly difficult. Considering all of this, believe that as of now it *is* possible to use GeoODK as your single data collection *and* mobile GIS *in certain situations*. Doing so could be highly advantageous under certain situations, but the relative simplicity of the GIS tools and the extra steps needed to pass data back and forth continue to be a major limiting factor keeping GeoODK from being a fully stand-alone solution for every need.

4. [Geopaparazzi](http://geopaparazzi.github.io/geopaparazzi/) - Last, we have Geopaparazzi. Read above for my additional comments about the data-collection aspects of Geopaparazzi. Honestly, it *is* a pretty good app, and it *might* even be the perfect app for you, but for a variety of reasons, I have found that as of now, it simply doesn't fit as well into my own GIS workflow as does QField. It suffers from the same drawback as the GIS portion of GeoODK in that it requires your raster basemaps and vector files to be converted to a [MBtiles and a small number of other web-mapping formats](http://geopaparazzi.github.io/geopaparazzi/#truesupported-datasets). The good news is that there *are* some [tools available to help you do this conversion](http://geopaparazzi.github.io/geopaparazzi/#truehandling-datasets-from-and-for-geopaparazzi). In addition to these purpose-built tools, you can also use the same [QTiles plugin for QGIS]((http://www.qgistutorials.com/en/docs/creating_basemaps_with_qtiles.html)), which is likely to be more convenient if you use QGIS and/or GRASS like I do. However, you will need to make this conversion every time you want to pass your data back and forth. Because of this, I find that the more seamless QField/QGIS implementation just works better for me personally. However, you may not have that hangup, so GeoPap might be perfect for you. If you can wrangle the JSON-based forms as well, it might even be a fully stand alone data collection and mobile GIS solution for you. That, to me, is the major draw of GeoPap, so if you are just starting from scratch, I do suggest that you give it a shot. There has been continuous development and improvement of GeoPap over the last couple of years, so I am very hopeful that this tool will get easier to use in the very near future.



### But I have a really fancy iPhone and an iPad and a Macbook Air, and I want to play too!!

Rest easy, my friend! You can join the party too, with your bespoke coffee thermos, lumberjack boots, and rolled up jean shorts. Actually, you have a little advantage with your iOS device: your bluetooth GPS will connect right away without any messing about in the settings. Bad Elf has a [cool little iOS app](https://bad-elf.com/pages/gps-app) to help you that with their GPS units. Give that whirl, and make sure it's all working, and then let's look at some iOS apps you can use to do much of the above.

1. [EpiCollect](http://www.epicollect.net/) - Yup. EpiCollect will work on both iOS and Android. It's open source too. Yay!

2. [FileMaker Go](http://www.filemaker.com/products/filemaker-go/) - If you want a solution that is proven to work for form creation on iOS, this is it. It does work, but it's not Open Source, and I can't help you.

3. [Avenza PDF Maps](http://www.avenza.com/avenza-maps) - This is your best bet for free offline mapping with an iOS device. Again, not open source, but it works.

### Um. All this tech stuff is way over my head, can you do it for me?

Sorry! This post is about as much as I can do for you. However, I have found out that there are some enterprise solutions in development by a startup called [Codifi](https://www.codifi.com/). It seems that the Codifi team is working hard on making some custom solutions for paperless archaeological recording. I suggest you get in touch with them if you want to do this, but the "tech" part of it seems way out of your league. They seem like nice folks!


The [FAIMS](https://www.fedarch.org/) people also offer "FAIMS-in-a-box" and other customized workflows for your project. They aren't cheap, but they list [very clear pricing for their services and hardware](https://www.fedarch.org/grant/).

## Questions? Suggestions? Let's hear 'em!

Okay, that's what I've got for your. This is all stuff I either figured out on my own, read about online somewhere, or someone told me about. If you've got questions or suggestions for things I've overlooked or didn't know about, I would love to hear them! Use the comments section below, or [e-mail me](iullah@sdsu.edu)!

*Some typos and grammar have been corrected since this was first posted*
