---
layout: page
title: GRASS GIS, Workshops, and Short-courses
date: 2014-10-15
modified: 
excerpt: Information about FOSS GIS tools, why I use them, and workshops about FOSS GIS applications in archaeology. 
tags: [GIS, Landscape Reconstruction, GRASS, Workshop]
image:
  feature: GIS_workshop_feat-img.png
---

<section id="table-of-contents" class="toc">
  <header>
    <h3>Overview</h3>
  </header>
<div id="drawer" markdown="1">
*  Auto generated table of contents
{:toc}
</div>
</section><!-- /#table-of-contents -->

##Open-source GIS Skills for Archaeologists, Anthropologists, and other Social Scientists

Spatial data analysis is an increasingly important skill in social science. The ability to characterize, analyze, and intuit spatial social and socio-natural phenomena drives many intriguing research questions of current social relevance, including issues of sustainability, policy, resource management, institutional racism, inequality, and more. I believe that it is therefore imperative that GIS skills are taught to all social scientists. That is the main purpose of this page, which disseminates several workshops and "short-courses" that I have taught to graduate students and fellow faculty at a variety of institutions. 

However, I am equally dedicated to [FOSS (Free and Open-Source Software)](http://www.fsf.org/), which I find to be much more amenable to the goals of academic inquiry than commercial software[^1]. Because of this, I use, and advocate the use of the powerful FOSS GIS suite, [GRASS GIS](http://grass.osgeo.org), and all of my course materials are formulated to teach you how to use this software in your research.

---

##What is GRASS GIS?

GRASS is a very powerful and completely free GIS software
suite for Linux, Macintosh, and Windows.
Please
visit the the GRASS homepage ([http://grass.osgeo.org](http://grass.osgeo.org)) for more information, and other tutorials and resources.

###GRASS "Addon" modules contributed that I have contributed

I have coded and contributed several custom modules that you can add to GRASS via the "g.extention" addon manager. Here are some links to several modules that facilitate archaeological analyses and simulation modeling:

####Addon Modules for GRASS 6.4.x

#####Raster Modules

* [r.landscape.evol.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.landscape.evol/) -- Simulates the cumulative effect of erosion and deposition on a landscape over time. This module uses appropriate flow on different landforms by default; however, singular flow regimes can be chosen by manipulating the cutoff points. 

* [r.catchment.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.catchment.py/) -- Creates a raster buffer of specified area around vector points using cost distances.

* [r.soildepth.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.soildepth.py/) -- Estimates soil depths on a landscape based on hillslope curvatures.

* [r.agropast.extensive](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.agropast.extensive/) -- Creates a series of iterative landuse maps from a pastoral catchment and an extensive (swiddening) agricultural catchment (both need to be created by r.catchment), and outputs c factor as well.

* [r.agropast.intensive](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.agropast.intensive/) -- Creates a series of iterative landuse maps from a pastoral catchment and an intensive agricultural catchment (both need to be created by r.catchment), and outputs c factor as well.

* [r.shift.cult](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.shift.cult/) -- Creates a series of iterative agricultural landuse maps from a catchment created by r.catchment. This model takes natural vegetational succession into account. Optionally outputs c factor as well.

* [r.cfactor.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/devs_landcover_scripts/r.cfactor.py/) -- Converts a map of landcover values to a c-factor map based on a set of reclass rules.

* [r.land.assess.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/devs_landcover_scripts/r.land.assess.py/) -- A grass module that connects to an external ABM modelof human landuse decision-making to enact changes to a GIS landscape. The module assess which land cells agents will use, and creates output impacts maps, and adjusts landcover and soil fertility according to agent impacts. It requires r.landscape.evol.py and an external ABM that sends it the appropriate command string.

* [r.viewshed.cva.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.viewshed.cva/) -- Undertakes a "cumulative viewshed analysis" using a vector points map as input "viewing" locations, and the faster r.viewshed instead of r.los. NOTE: this routine requires the grass addon module r.viewshed, developed by Laura Toma, Yi Zhuang, William Richard, and Markus Metz. Both modules can be installed with g.extension (see below).

#####Vector Modules

* [r.floorsim](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.floorsim/) -- Simulation of artifacts deposition on a housefloor, with site formation disturbance, sampling, and re-randomization.

####How to install Addon Modules in GRASS 6.4.x

The simplest way to install these (and other) addon modules in GRASS is to use the "g.extension" module. See the [help pages for g.extension](http://grass.osgeo.org/grass70/manuals/g.extension.html) for instructions on how to use it. It may be useful to set a custom folder for your addons to live in, which can be done by setting the "GRASS_ADDON_PATH" environmental variable ([instructions here](http://grass.osgeo.org/grass70/manuals/grass7.html#addon-base-for-extra-local-grass-addon-modules)). 

If you can't get g.extension to work, than any addon module can be downloaded directly [from the GRASS addon SVN repository](https://svn.osgeo.org/grass/grass-addons/grass6/), and the script file can be saved in your grass addons folder (set with GRASS_ADDON_PATH), or the "scripts" directory of the main GRASS install tree. Note that to install scripts in that directory, you will likely need administrator (or root) priveledges on your system. Make sure you set the downloaded file to be "executable".

Once the module is installed following one of the above methods, it can be run by typing its name at the GRASS command prompt, e.g. `>r.landscape.evol.py &`. Note that the `&` will ensure that the module runs modally, and doesn't lock the terminal to that process.

---

##Short Courses in GIS for Archaeologists and Geoarchaeologists

The following workshops and "short-courses" were developed primarily for Archaeologists and Geoarchaeologists, but also teach skills that would be interesting to a more general social scientist as well. Feel free to download, use, and distribute these materials, but I do ask that you credit me as their source.

###Paleolandscape Reconstruction and Ancient Human Landuse

Paleolandscape reconstruction is an essential first step for archaeologists interested in how ancient humans interacted with their environment. This is often achieved only schematically through the use of
narrative models based on paleoenvironmental proxy data. A new alternative approach utilizes geomorphologic data to digitally model ancient landscapes within a GIS framework, resulting in digital
terrain models (DTM’s) of ancient landscapes. These paleolandscape DTM’s can be used as input into spatially explicit models of ancient human landuse and human-environment interaction. This workshop will cover the basic theory and methodology behind GIS-based paleolandscape reconstruction, and will introduce techniques for ancient human landuse simulation. Specific techniques that will be covered include digitization of landscape features, terrain interpolation techniques, site catchment modeling, erosion and deposition modeling, and GIS-based human landuse simulation. The workshop will also teach participants the basics of GRASS GIS, a robust free and open source GIS software suite. Using GRASS offers several methodological and academic advantages because it is actively and collaboratively developed by scientists, allows users to easily create custom scripts, and all modules within GRASS are based upon referable scholarly work. (This course was first created in October, 2009, and was originally taught as part of the University of Toronto Archaeology Center's invited workshop series)<br />

####Course Material (PDF):

* [01-What is GIS?](/GIS_Workshops/01-What_is_GIS.pdf)

* [02-A quick note on projections.](/GIS_Workshops/02-A_Quick_Note_on_Projections.pdf)

* [03-GRASS GIS basics.](/GIS_Workshops/03-GRASS_basics.pdf)

* [04-DEM's, surfaces, and images.](/GIS_Workshops/04-DEMs_surfaces_and_images.pdf)

* [05-The Mediterranean Landscapes Dynamics Project.](/GIS_Workshops/05-Mediterranean_Landscapes_project.pdf)

* [06-Erosion modeling in GIS.](/GIS_Workshops/06-Erosion%20Modeling%20Exercise.pdf)

* [Paleolandscape Reconstruction Excercise](/GIS_Workshop/Paleolandscape%20Reconstruction%20Handout.pdf)

* [A brief GIS bibliography.](/GIS_Workshop/GIS_workshop_bib.pdf)

###Course 2: GRASS GIS for Anthropoligists

This course was created in Fall, 2006, and was originally given in the SHESC graduate tutorial seminars
series. It is a basic introduction to GRASS GIS and what anthropologists can do with it. Some of the information is now outdated, but it may still be a useful resource for applications of GRASS GIS in social science research.

####Course Material (PDF):

* [GRASS GIS for Anthropologists](/GIS_Workshops/GRASS_GIS_for_Anthropologists.pdf)

---

[^1]: For a particularly eloquent argument in favor of FOSS in archaeology, please see the article by my friend Benjamin Ducke, ["Natives of a connected world: free and open source software in archaeology"](http://www.tandfonline.com/doi/full/10.1080/00438243.2012.743259#.VD7dxHW9-Ak)
