---
title: Open-source GIS and ABM Learning Materials
excerpt: Tutorials and materials in  open-source GIS and ABM applications for archaeologists, anthropologists, and other social scientists. 
tags: [GIS, ABM, GRASS, NetLogo, Teaching]
header:
  overlay_image: /images/GIS_workshop_feat-img.png
  overlay_filter: 0.5
permalink: /GIS_and_ABM_Learning_Material/
---


Agent-Based Modeling (ABM) and spatial data analysis with Geographic Information Systems (GIS) are increasingly important skills for modern social science. The ability to characterize, analyze, and intuit spatial and/or dynamic social and socio-natural phenomena drives many intriguing research questions of current social relevance, including issues of sustainability, policy, resource management, institutional racism, inequality, and more. I therefore believe that it is imperative that ABM and GIS skills are taught to all social scientists. That is the main purpose of this page. Here, I make available learning material for both GIS and ABM in archaeology. 
<br><br>
I am equally dedicated to [FOSS (Free and Open-Source Software)](https://www.fsf.org/){:target="_blank"}. I find open source software to be much more amenable to the goals of academic inquiry than commercial software[^1]. Because of this, I use, and advocate the use of the powerful FOSS GIS suite, [GRASS GIS](https://grass.osgeo.org){:target="_blank"}, and all of my GIS materials are formulated to teach you how to use this software in your research. I tend to use [NetLogo](http://ccl.northwestern.edu/netlogo) for teaching about ABM, although I personally also use [Python]() for ABM model construction.

---

# GIS learning material

## ANTH 562 Computational Archaeology 

I regularly teach ANTH 562 "Computational Archaeology," which covers GIS for the first 2/3rds of the course. I regularly update video tutorials for the class, which I make freely available [on my YouTube channel](https://www.youtube.com/channel/UCnXYZpB1oDiK44tV2w9ypvA){:target="_blank"}.

All materials for the GIS projects in the course are now curated at [this GitHub Repo](https://github.com/isaacullah/GIS-Projects){:target="_blank"}, where they are more easily maintained, obtained, documented, and licenced ([CC by SA](https://creativecommons.org/licenses/by-nc-sa/4.0/){:target="_blank"}).

## Short Course - GIS-based Paleolandscape Reconstruction and Ancient Human Landuse

Paleolandscape reconstruction is an essential first step for archaeologists interested in how ancient humans interacted with their environment. This "short course" was taught in 2015 at the University of Notre Dame using previous version of GRASS GIS. Some of the specific tools in GRASS may have changed, but the material should still generally be useful.

Access course materials [here](/Paleoloandscape_recon/).

# ABM learning material

## Web-hosted models for exploration of ABM concepts

These are models that I host here on my website and that are runnable from within your web-browser. Some are made or modified by me, others I am re-hosting for convenience. To run each model, just click the link and it will load in a new tab. The credits and instructions are in the "Info" tab for each model (bottom of the page).

- [The Archaeological Sampling Experimental Laboratory (tASEL) model](/models/tASEL.html){:target="_blank"} ([source code on COMSES](https://www.comses.net/codebases/addd3c54-d89a-4773-a639-8bf19bcf59ea/releases/1.0.0/){:target="_blank"}, and [video tutorial](https://youtu.be/SBO5Xedd6Bw){:target="_blank"} on YouTube.)
- [Erosion with Vegetation Model](/models/Erosion_veg.html){:target="_blank"}
- [Diet Breadth Model](/models/diet_breadth.html){:target="_blank"}
- [Buffalo Hunting Extinction Model](/models/diet_breadth_buffalo_with_grass.html){:target="_blank"}
- [Grazing model](/models/Grazing.html){:target="_blank"}
- [TRUE GRASP Model](/models/TRUE_GRASP.html){:target="_blank"}
- [Swidden Farming V2](/models/swidden_farming_v2.html){:target="_blank"}  also download the [Model Documentation](swidden_farming_v2_ODD.pdf){:target="_blank"} (PDF)
- [The Urban Sprawl Model](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Curricular%20Models/Urban%20Suite/Urban%20Suite%20-%20Sprawl%20Effect.nlogo){:target="_blank"}  ([video tutorial](https://youtu.be/jVzzd4Qz3_A){:target="_blank"} on YouTube)

## Other NetLogo Models

The following are interesting models for archaeologists to experiment with. You must download and run them in the NetLogo software, which will run on Mac, Windows, and Linux systems natively, and Chromebooks if you can enable Linux apps (sorry, no Androids or iPads!). First [download NetLogo 6.1.1](http://ccl.northwestern.edu/netlogo/download.shtml). These models will likely not run in earlier versions of NetLogo. Then, download the .zip archives below, and unzip them on your computer (for help with .zip files on Mac and Windows [read this article](https://www.sweetwater.com/sweetcare/articles/how-to-zip-and-unzip-files/)). **It's important to keep all the files in the archive together in the same folder when you unzip them.** You can run the models by using the File -> Open function in NetLogo, and then navigating to the ".nlogo" file of the model you want to run. This [video tutorial](https://youtu.be/KtsAMdUuA4k){:target="_blank"} I recorded on YouTube can help you download and run a model in NetLogo.

- [The BACO Model](/models/BACO.zip) ([video tutorial](https://youtu.be/dh1D7ohbS64){:target="_blank"} on YouTube)
`Marco Vidal-Cordasco (2020, October 09). “The Bronze Age Collapse model (BACO model)” (Version 1.1.0). CoMSES Computational Model Library. Retrieved from: https://www.comses.net/codebases/dea16fd0-f56b-420e-a4c2-d151ffa3f2a8/releases/1.1.0/`
- [City Sandbox](/models/City_Sandbox.zip)
`Javier Sandoval (2020, January 09). “City Sandbox” (Version 1.0.0). CoMSES Computational Model Library. Retrieved from: https://www.comses.net/codebases/acc61c38-4a67-4183-868f-d11fe70aa290/releases/1.0.0/`
- The Urban Sprawl model is included in NetLogo as a sample model. Go to File > Model Library, and search for "Urban Sprawl"

Another good model to explore is the ["MayaSim" model](/models/MayaSim.zip), but you will need to download an older verion of [NetLogo 5.0.4](https://ccl.northwestern.edu/netlogo/5.0.4/).

## ABM Video Tutorials

[Basics of NetLogo and ABM](https://youtu.be/RvSEHXWQkVw){:target="_blank"}

[How to do formal modeling experiments in NetLogo](https://youtu.be/2zonYX5sBwA){:target="_blank"}

[Coding your own NetLogo Model](https://youtu.be/H3aG6wy58eo){:target="_blank"}

---

[^1]: For a particularly eloquent argument in favor of FOSS in archaeology, please see the article by my friend Benjamin Ducke, ["Natives of a connected world: free and open source software in archaeology"](https://www.tandfonline.com/doi/full/10.1080/00438243.2012.743259#.VD7dxHW9-Ak)
