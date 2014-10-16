---
layout: page
title: Open-source GIS Skills for Archaeologists, Anthropologists, and other Social Scientists
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


Spatial data analysis is an increasingly important skill in social science. The ability to characterize, analyze, and intuit spatial social and socio-natural phenomena drives many intriguing research questions of current social relevance, including issues of sustainability, policy, resource management, institutional racism, inequality, and more. I believe that it is therefore imperative that GIS skills are taught to all social scientists. That is the main purpose of this page, which disseminates several workshops and "short-courses" that I have taught to graduate students and fellow faculty at a variety of institutions. 

I am equally dedicated to [FOSS (Free and Open-Source Software)](http://www.fsf.org/), however, which I find to be much more amenable to the goals of academic inquiry than commercial software[^1]. Because of this, I use, and advocate the use of the powerful FOSS GIS suite, [GRASS GIS](http://grass.osgeo.org), and all of my course materials are formulated to teach you how to use this software in your research.

---

##What is GRASS GIS?

GRASS is a very powerful and completely free GIS software
suite for Linux, Macintosh, and Windows.
Please
visit the the GRASS homepage ([http://grass.osgeo.org](http://grass.osgeo.org)) for more information, and other tutorials and resources.

###GRASS "Addon" modules that I have contributed

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

####How to install GRASS Addon Modules

The simplest way to install these (and other) addon modules in GRASS is to use the "g.extension" module. See the [help pages for g.extension](http://grass.osgeo.org/grass70/manuals/g.extension.html) for instructions on how to use it. It may be useful to set a custom folder for your addons to live in, which can be done by setting the "GRASS_ADDON_PATH" environmental variable ([instructions here](http://grass.osgeo.org/grass70/manuals/grass7.html#addon-base-for-extra-local-grass-addon-modules)). 

If you can't get g.extension to work, than any addon module can be downloaded directly [from the GRASS addon SVN repository](https://svn.osgeo.org/grass/grass-addons/grass6/), and the script file can be saved in your grass addons folder (set with `GRASS_ADDON_PATH`), or the "scripts" directory of the main GRASS install tree (e.g., `/usr/local/grass6.4.4/scripts/` on a linux installation of GRASS 6). Note that to install scripts in that directory, you will likely need administrator (or root) privileges on your system. Also make sure you set the downloaded file to be "executable".

Once the module is installed following one of the above methods, it can be run by typing its name at the GRASS command prompt, e.g. `>r.landscape.evol.py &`. Note that the `&` will ensure that the module runs modally, and doesn't lock the terminal to that process.

---

##Short Courses in GIS for Archaeologists and Geoarchaeologists

The following workshops and "short-courses" were developed primarily for Archaeologists and Geoarchaeologists, but also teach skills that would be interesting to a more general social scientist as well. Feel free to download, use, and distribute these materials, but I do ask that you credit me as their source.

###Course 1: Paleolandscape Reconstruction and Ancient Human Landuse

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
