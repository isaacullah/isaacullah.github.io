---
title: GRASS GIS and custom modules for archaeological and socio-ecological research
excerpt: Information about the free and open-source GRASS GIS software suite and some custom GRASS modules that I developed.
tags: [GIS, GRASS, Archaeology, Socio-ecological, addons, modules]
header:
  overlay_image: /images/gbanner.gif
  overlay_filter: 0.5
permalink: /GRASS_GIS_Scripts/
---

## What is GRASS GIS?

GRASS is a very powerful and completely free GIS software suite for Linux, Macintosh, and Windows. It is developed _for_ scientists _by_ scientists, and is **fully open-source**. This means you know *exactly* what the software does, and *how* it does what it does. You even have citations to the scholarly publications that provided the algorithms used. Also, if you find an error, don't like something, or want a missing feature, you can [get involved](https://grass.osgeo.org/get-involved/) and request or enact those changes yourself! Open software promotes the scientific method, and pushes the goals of open knowledge generation, information and skill sharing, and open-access data curating forward.


Please visit the the GRASS homepage ([https://grass.osgeo.org](https://grass.osgeo.org)) for [more information about GRASS](https://grass.osgeo.org/documentation/general-overview/), [GRASS modules](https://grass.osgeo.org/documentation/manuals/), [tutorials](https://grass.osgeo.org/documentation/tutorials/) and [other resources for open-source GIS](https://grass.osgeo.org/documentation/books/). I also manage the [GRASS GIS Facebook page](https://www.facebook.com/groups/96121775724/), which you may wish to join if you'd like to keep in touch about GRASS-related topics in a more social media-ish way. Finally, you should also check out the [OS-Geo homepage](https://www.osgeo.org/) for information and downloads of many other great pieces of open-source geospatial software.

---

## GRASS "Addon" modules for computational archaeology

I have coded and contributed several custom modules that you can add to GRASS via the "g.extention" addon manager (see below). I list the modules here, with brief descriptions and citations to the publications in which they are employed. I have updated most of these for use in GRASS 7, and will be maintaing these versions only (i.e., I no longer support the GRASS 6 versions of these modules). These tools are specifically formulated to accomplish computational analyses of archaeological, socio-ecological, and geoarchaeological problems or data. 
See the note below for instructions on how to install stable versions of these addons. Development versions are hosted in my [GRASS_Addons](https://github.com/isaacullah/GRASS_Addons) GitHub repository. [Please feel free to contact me](mailto:iullah@asu.edu) with any questions or comments about these modules.

#### Maintained Modules (regularly updated for GRASS 7.x versions)

* [r.landscape.evol](https://svn.osgeo.org/grass/grass-addons/grass7/raster/r.landscape.evol/) -- Simulates the cumulative effect of erosion and deposition on a landscape over time. This module uses appropriate flow on different landforms by default; however, singular flow regimes can be chosen by manipulating the cutoff points. This module has been used in several of my publications, including [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia), [Barton Ullah, & Bergin 2010](https://www.academia.edu/350609/Land_use_water_and_Mediterranean_landscapes_modelling_long-term_dynamics_of_complex_socio-ecological_systems), [Ullah & Bergin, 2012](https://www.academia.edu/398249/Modeling_the_Consequences_of_Village_Site_Location_Least_Cost_Path_Modeling_in_a_Coupled_GIS_and_Agent-Based_Model_of_Village_Agropastoralism_in_Eastern_Spain), and [Barton, Ullah, et al., 2012](https://www.academia.edu/841547/Looking_for_the_Future_in_the_Past_Long-Term_Change_in_Socioecological_Systems). In particular, the details of the equations and methods can be found in [Mitasova, Harmon, et al., 2013](https://www.academia.edu/421211/Geospatial_Information_Science-based_Erosion_Modeling). 

*  [r.catchment](https://svn.osgeo.org/grass/grass-addons/grass7/raster/r.catchment/) -- Creates a raster buffer of specified area around vector points using cost distances. This module was used in several of my publications, but was the main focus of [Ullah 2011](https://www.academia.edu/253405/A_GIS_Method_for_Assessing_the_Zone_of_Human-Environmental_Impact_Around_Archaeological_Sites_a_Test_Case_From_the_Late_Neolithic_of_Wadi_Ziqlab_Jordan)., and was used extensively in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia), among others. 

* [r.viewshed.cva](https://svn.osgeo.org/grass/grass-addons/grass7/raster/r.viewshed.cva/) -- Undertakes a "cumulative viewshed analysis" using a vector points map as input "viewing" locations. This module uses the fast viewshed module "r.viewshed," developed by Laura Toma, Yi Zhuang, William Richard, and Markus Metz. "r.viewshed.cva" was used in [Ullah, 2015](https://www.researchgate.net/publication/284705699_Integrating_Older_Survey_Data_into_Modern_Research_Paradigms_Identifying_and_Correcting_Spatial_Error_in_Legacy_Datasets), and is in use for work I plan to publish shortly.

* [r.floorsim](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.floorsim/) -- Simulation of artifacts deposition on a housefloor, with site formation disturbance, sampling, and re-randomization. This module is used in [Ullah, Duffy, and Banning 2014](https://www.academia.edu/9219783/Modernizing_Spatial_Micro-Refuse_Analysis_New_Methods_for_Collecting_Analyzing_and_Interpreting_the_Spatial_Patterning_of_Micro-Refuse_from_House-Floor_Contexts).

* [r.soildepth](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.soildepth.py/) -- Estimates soil depths on a landscape based on hillslope curvatures. A demonstration of the use of this module can be found in my [2014 EAA presentation](https://www.academia.edu/8712897/Computer-based_simulation_of_surface-processes_and_digital_reconstruction_of_paleoenvironment_during_the_Early_Bronze_Age-I_at_Arslantepe_Malatya_Eastern_Turkey).

* [r.land.assess](https://github.com/comses/medland/blob/MML/Scripts/r.land.assess.py) -- A grass module that connects to an external Agent-Based (or other) model of human landuse decision-making to enact changes to a GIS landscape. The module requires the external ABM to pass it a list of the number of farming, grazing, and woodgathering plots needed by a series of households in a village. The module then assesses which land cells agents will use, and creates output impacts maps, and adjusts landcover and soil fertility according to agent impacts. These impacts can then be fed into r.landscape.evol to simulate their effect on erosion and deposition. This module is used in many of my publications, including [Barton Ullah, & Bergin 2010](https://www.academia.edu/350609/Land_use_water_and_Mediterranean_landscapes_modelling_long-term_dynamics_of_complex_socio-ecological_systems), [Ullah & Bergin, 2012](https://www.academia.edu/398249/Modeling_the_Consequences_of_Village_Site_Location_Least_Cost_Path_Modeling_in_a_Coupled_GIS_and_Agent-Based_Model_of_Village_Agropastoralism_in_Eastern_Spain), and [Barton, Ullah, et al., 2012](https://www.academia.edu/841547/Looking_for_the_Future_in_the_Past_Long-Term_Change_in_Socioecological_Systems).

* [r.agropast.semiadaptive](https://github.com/isaacullah/GRASS_Addons/blob/master/r.agropast.semiadaptive7.0.5.py) -- This is a fully functional script that is not yet in the official GRASS repository because I have not had time to write the docuementation for it yet. Follow the instructions in the ReadMe file on my GitHub if you want to install it. An earlier version of this module was used in [Barton, Ullah, and Heimsath, 2016](https://github.com/comses/medland/blob/MML/Scripts/r.land.assess.py), and this new version is used in a series of experiments that will be published soon.

* [test_pit_sim](https://github.com/isaacullah/test_pit_sim) -- This is a fully functional simulation model that uses GRASS and must be run from within a GRASS7.x session, but which is _not_ a regular GRASS addon module and which will _not_ be hosted in the GRASS addon's repository. This is being used in research into [percolation theory and the way in which archaeologists survey for, and excavate sites](https://www.researchgate.net/project/Percolation-Theory-and-Archaeological-Survey). This work was presented at the 2017 Society for American Archaeology meeting in Vancouver.

#### Depricated GRASS 6.x modules (unmaintained, with no plans for upgrades or backports from GRASS 7.x versions.)

* [r.landscape.evol](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.landscape.evol/)

* [r.catchment](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.catchment.py/)

* [r.viewshed.cva.py](https://svn.osgeo.org/grass/grass-addons/grass6/raster/r.viewshed.cva/)

* [r.cfactor](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/devs_landcover_scripts/r.cfactor.py/) -- Converts a map of landcover values to a c-factor map based on a set of reclass rules. (GRASS 6 only)

* [r.agropast.extensive](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.agropast.extensive/) -- Creates a series of iterative landuse maps from a pastoral catchment and an extensive (swiddening) agricultural catchment (both need to be created by r.catchment), and outputs c factor as well. This module was used in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia). (GRASS 6 only)

* [r.agropast.intensive](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.agropast.intensive/) -- Creates a series of iterative landuse maps from a pastoral catchment and an intensive agricultural catchment (both need to be created by r.catchment), and outputs c factor as well.  This module was used in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia). (GRASS 6 only)

* [r.shift.cult](https://svn.osgeo.org/grass/grass-addons/grass6/raster/LandDyn/r.shift.cult/) -- Creates a series of iterative agricultural landuse maps from a catchment created by r.catchment. This model takes natural vegetation succession into account. Optionally outputs c factor as well.  This module was used in [Barton, Ullah, & Mitasova 2010](https://www.academia.edu/350652/Computational_modeling_and_Neolithic_socioecological_dynamics_a_case_study_from_Southwest_Asia). (GRASS 6 only)


---

## How to install GRASS Addon Modules

The simplest way to install these (and other) addon modules in GRASS is to use the "g.extension" module. See the [help pages for g.extension](https://grass.osgeo.org/grass70/manuals/g.extension.html) for instructions on how to use it. This method will work in *both* GRASS 7 and GRASS 6, and is the preferred method. It may be useful (especially in GRASS 6) to set a custom folder for your addons to live in, which can be done by setting the "GRASS_ADDON_PATH" environmental variable ([instructions here](https://grass.osgeo.org/grass70/manuals/grass7.html#addon-base-for-extra-local-grass-addon-modules)).

If you can't get g.extension to work, then any addon module can be downloaded directly from the GRASS addon SVN repository ( [GRASS 7 versions](https://svn.osgeo.org/grass/grass-addons/grass7/), [GRASS 6 versions](https://svn.osgeo.org/grass/grass-addons/grass6/)), and the script file can be saved in your grass addons folder (set with `GRASS_ADDON_PATH` in GRASS 6 (or 7), or in the default `~/.grass7/addons/` directory in GRASS 7), or the "scripts" directory of the main GRASS install tree (e.g., `/usr/local/grass6.4.4/scripts/` on a linux installation of GRASS 6). Note that to install scripts in the system directory, you will likely need administrator (or root) privileges on your system. Also make sure you set the downloaded file to be "executable".

Once the module is installed following one of the above methods, it can be run by typing its name at the GRASS command prompt, e.g. `>r.landscape.evol &`. Note that the `&` will ensure that the module runs modally, and doesn't lock the terminal to that process.

