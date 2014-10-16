---
layout: page
title: GRASS GIS and custom modules for archaeological and socio-ecological research
date: 2014-10-15
modified: 
excerpt: Information about the free and open-source GRASS GIS software suite and some custom GRASS modules that I developed. 
tags: [GIS, GRASS, Archaeology, Socio-ecological, addons, modules]
image:
  feature: GIS_workshop_feat-img.png
---

##What is GRASS GIS?

GRASS is a very powerful and completely free GIS software suite for Linux, Macintosh, and Windows. It is developed for scientists by scientists, and is fully open-source. This means you know *exactly* what the software does, how it does, and you even have citations to the scholarly publications that provided the algorithms used. Also, if you find and error, don't like something, or want a missing feature, you can [get involved](http://grass.osgeo.org/get-involved/) and have the potential to enact those changes!


Please visit the the GRASS homepage ([http://grass.osgeo.org](http://grass.osgeo.org)) for [more information about GRASS](http://grass.osgeo.org/documentation/general-overview/), [GRASS modules](http://grass.osgeo.org/documentation/manuals/), [tutorials](http://grass.osgeo.org/documentation/tutorials/) and [other resources for open-source GIS](http://grass.osgeo.org/documentation/books/). Also check out the [OS-Geo homepage](http://www.osgeo.org/) for information and downloads of many other great open-source geospatial software.

---

##GRASS "Addon" modules that I have contributed

I have coded and contributed several custom modules that you can add to GRASS via the "g.extention" addon manager (see below). I list the modules here, with brief descriptions and citations to my publications that use them.


* [r.landscape.evol.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.landscape.evol/) -- Simulates the cumulative effect of erosion and deposition on a landscape over time. This module uses appropriate flow on different landforms by default; however, singular flow regimes can be chosen by manipulating the cutoff points. This module has been used in several of my publications, including [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia), [Barton Ullah, & Bergin 2010](https://www.academia.edu/350609/Land_use_water_and_Mediterranean_landscapes_modelling_long-term_dynamics_of_complex_socio-ecological_systems), [Ullah & Bergin, 2012](https://www.academia.edu/398249/Modeling_the_Consequences_of_Village_Site_Location_Least_Cost_Path_Modeling_in_a_Coupled_GIS_and_Agent-Based_Model_of_Village_Agropastoralism_in_Eastern_Spain), and [Barton, Ullah, et al., 2012](https://www.academia.edu/841547/Looking_for_the_Future_in_the_Past_Long-Term_Change_in_Socioecological_Systems). In particular, the details of the equations and methods can be found in [Mitasova, Harmon, et al., 2013](https://www.academia.edu/421211/Geospatial_Information_Science-based_Erosion_Modeling).

* [r.catchment.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.catchment.py/) -- Creates a raster buffer of specified area around vector points using cost distances. This module was used in several of my publications, but was the main focus of [Ullah 2011](https://www.academia.edu/253405/A_GIS_Method_for_Assessing_the_Zone_of_Human-Environmental_Impact_Around_Archaeological_Sites_a_Test_Case_From_the_Late_Neolithic_of_Wadi_Ziqlab_Jordan)., and was used extensively in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia).

* [r.soildepth.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.soildepth.py/) -- Estimates soil depths on a landscape based on hillslope curvatures.

* [r.agropast.extensive](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.agropast.extensive/) -- Creates a series of iterative landuse maps from a pastoral catchment and an extensive (swiddening) agricultural catchment (both need to be created by r.catchment), and outputs c factor as well. This module was used in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia).

* [r.agropast.intensive](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.agropast.intensive/) -- Creates a series of iterative landuse maps from a pastoral catchment and an intensive agricultural catchment (both need to be created by r.catchment), and outputs c factor as well.  This module was used in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia).

* [r.shift.cult](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.shift.cult/) -- Creates a series of iterative agricultural landuse maps from a catchment created by r.catchment. This model takes natural vegetational succession into account. Optionally outputs c factor as well.  This module was used in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia).

* [r.cfactor.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/devs_landcover_scripts/r.cfactor.py/) -- Converts a map of landcover values to a c-factor map based on a set of reclass rules.

* [r.land.assess.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/devs_landcover_scripts/r.land.assess.py/) -- A grass module that connects to an external Agent-Based (or other) model of human landuse decision-making to enact changes to a GIS landscape. The module requires the external ABM to pass it a list of the number of farming, grazing, and woodgathering plots needed by a series of households in a village. The module then assesses which land cells agents will use, and creates output impacts maps, and adjusts landcover and soil fertility according to agent impacts. These impacts can then be fed into r.landscape.evol.py to simulate their effect on erosion and deposition. This module is used in many of my publications, including [Barton Ullah, & Bergin 2010](https://www.academia.edu/350609/Land_use_water_and_Mediterranean_landscapes_modelling_long-term_dynamics_of_complex_socio-ecological_systems), [Ullah & Bergin, 2012](https://www.academia.edu/398249/Modeling_the_Consequences_of_Village_Site_Location_Least_Cost_Path_Modeling_in_a_Coupled_GIS_and_Agent-Based_Model_of_Village_Agropastoralism_in_Eastern_Spain), and [Barton, Ullah, et al., 2012](https://www.academia.edu/841547/Looking_for_the_Future_in_the_Past_Long-Term_Change_in_Socioecological_Systems).

* [r.viewshed.cva.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.viewshed.cva/) -- Undertakes a "cumulative viewshed analysis" using a vector points map as input "viewing" locations, and the faster r.viewshed instead of r.los. NOTE: this routine requires the grass addon module r.viewshed, developed by Laura Toma, Yi Zhuang, William Richard, and Markus Metz. Both modules can be installed with g.extension (see below). I developed this module for use in ongoing research in Kazakhstan, and expect to submit a publication within the year.

* [r.floorsim](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.floorsim/) -- Simulation of artifacts deposition on a housefloor, with site formation disturbance, sampling, and re-randomization. This module is used in a forthcoming publication on microrefuse sampling. I'll add the reference here when the article comes out.

--

##How to install GRASS Addon Modules

The simplest way to install these (and other) addon modules in GRASS is to use the "g.extension" module. See the [help pages for g.extension](http://grass.osgeo.org/grass70/manuals/g.extension.html) for instructions on how to use it. It may be useful to set a custom folder for your addons to live in, which can be done by setting the "GRASS_ADDON_PATH" environmental variable ([instructions here](http://grass.osgeo.org/grass70/manuals/grass7.html#addon-base-for-extra-local-grass-addon-modules)). 

If you can't get g.extension to work, than any addon module can be downloaded directly [from the GRASS addon SVN repository](https://svn.osgeo.org/grass/grass-addons/grass6/), and the script file can be saved in your grass addons folder (set with `GRASS_ADDON_PATH`), or the "scripts" directory of the main GRASS install tree (e.g., `/usr/local/grass6.4.4/scripts/` on a linux installation of GRASS 6). Note that to install scripts in that directory, you will likely need administrator (or root) privileges on your system. Also make sure you set the downloaded file to be "executable".

Once the module is installed following one of the above methods, it can be run by typing its name at the GRASS command prompt, e.g. `>r.landscape.evol.py &`. Note that the `&` will ensure that the module runs modally, and doesn't lock the terminal to that process.

---

