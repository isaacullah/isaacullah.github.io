---
layout: post
title: "Isaac's List of FOSS tools for academics..."
author: isaacullah
modified: 2016-03-24
comments: True
excerpt: "...and what to use them for!"
tags: [FOSS, software, list, tools]
---

## ...and what to use them for!

*What is "FOSS," and what does it stand for? ["FOSS" stands for "Free and Open Source Software."](http://makethemove.net/foss.php) It is important to note that this different from "Software You Don't Pay For" in an important way: FOSS software is not only "free" in a monetary sense, but it is also "free" in the sense that you or anyone are "free" to use it in any way that you want, with only a very few restrictions (typically only that you credit where you got it from). FOSS software is usually (but not always) developed by a community of programmers who do it because they love it and want to contribute to the greater good. They are usually very passionate about their projects and they use the software themselves (often in their "day job"). Because FOSS projects are really **community** projects, it means that **you** can get involved if you want to. This means that **you** can contribute to fixing bugs, asking for features to be added, beta testing, styling, or coding, and so **you** can help make the software look and work the way **you** want it too. Not only that, but because the source code is always made available, **you**, as a scientist, can confirm that the software is **actually doing what it purports to do**, which is something you cannot do with any closed source software, free or paid-for.*
<br><br>
*Read more about Open Source and the FOSS movement at the websites of the [Open Source Initiative](https://opensource.org/) and the [Free Software Foundation](http://www.fsf.org/). Also recommended is an article by Benjamin Ducke, [Natives of a connected world: free and open source software in archaeology](http://www.tandfonline.com/doi/full/10.1080/00438243.2012.743259).*

---

**Notes about this list:**
<br><br>
The great majority of these software tools are available on all three major OS platforms: Linux, MacOS, and MS Windows. There are a couple of pieces of nice software that are for one or two platforms only, and these are noted. It's important to remember, however, that many pieces of Windows software will run on Linux under the [WINE Windows compatibility layer](https://www.winehq.org/), and a lot of Linux software can be run inside Windows or Mac in a [virtual machine](https://www.virtualbox.org/) or compatibility layer like [MinGW](http://www.mingw.org/). However, since *all* varieties of Linux are also FOSS projects themselves, I highly recommend that you use a Linux OS. Gone are the days where you needed a degree in Computer Science to install and use Linux. Now, anyone can do it! Have a look at [distrowatch.com](http://distrowatch.com/) for some of the more popular flavors of Linux. I personally use and recommend [Xubuntu](xubuntu.org), which is very lightweight, and which has a desktop interface that will be comfortable for old school Windows users. Mac users may prefer the main [Ubuntu distro](www.ubuntu.com), which has a desktop interface that will be more familiar to them, albeit which is also larger and more system-intensive to run.
<br><br>
 I plan to maintain and update this list over time. Please [e-mail me](mailto:isaaciullah@gmail.com) or leave a comment below if you have a piece of FOSS software you think should be on this list. Please provide examples of how your suggestion could be used in an academic context. Do note, however, that I want to keep this a *curated* list in the sense that I'd like to be able to either personally vouch for each piece of software, or at least know that it is a good, widely used, and accepted tool. I like having more than one option for each kind of software, but do not want the list to become too unwieldy. Finally, I want to emphasize that this list is for FOSS options *only*. There are indeed some good *free* but *closed source* tools for some of the categories listed below. While these may be good options for you, I've chosen not to include them here.

---

### GIS and Image Analysis

#### GIS Suites
- [GRASS](grass.osgeo.org) - In my opinion, GRASS is the most powerful, fully-functional FOSS GIS suite. I recommend it for doing "heavy lifting" GIS work and scientific geo-spatial analysis. Rapid development, excellent community, and some of the most cutting-edge geospatial analysis tools available. This is the GIS I use every day, and I highly recommend that you put in the effort to learn it. It works a bit differently than other GIS systems, so it may take some getting used to. Please see my [page on GRASS GIS](http://isaacullah.github.io/GRASS/) for more information about archaeology-specifc tools that I've developed for GRASS. [Linux, Mac, Windows]
- [QGIS](www.qgis.org) - A less powerful, but very functional GIS with a large user-base. Great for web mapping applications and making finished cartographic products. Note that you can now access some of the GRASS libraries from within QGIS, as well as growing host of plugins, all of which increase the comptuational power that QGIS can unleash. However, due to the less stringent way it handles projections, map resolution issues, and geographic regions, I still recommend GRASS for the heavy-lifting. The line between them is blurring, however, and, especially if you are coming from a certain well-known commercial GIS application, you might initially feel more at home in QGIS. [Linux, Mac, Windows]
- [SAGA](http://www.saga-gis.org/) - SAGA is another very powerful FOSS GIS platform. In many ways it parallels GRASS, and seems to have a very dedicated user-base. Personally, I use and recommend GRASS, but SAGA may appeal to you, so you should defintely check it out! [Linux, Mac, Windows]
- [gvSIG](http://www.gvsig.com/) - Another great FOSS GIS program. Perhaps a smaller user community than the others listed above, but still a quite capable piece of software. Notable is the large array of localizions (languages) that are available for it. [Linux, Mac, Windows]
- [Whitebox GAT](http://www.uoguelph.ca/~hydrogeo/Whitebox/) - This is a really interesting project being developed at the University of Geulph. It operates under the "Open Access Software" principle, which purports to be one step beyong even Open Source, in the sense that the project must *actively encourage* examination of the source code. Beyond that, it looks to be a very powerful cross-platform GIS suite under active development. I've downloaded it, and wil be testing it out. Note that it does require the latest Java JRE. [Linux, Mac, Windows]

#### Structure from Motion Analysis
- ["PPT" Python Photogrammetry Toolbox](http://184.106.205.13/arcteam/ppt.php) - A bit buggy, but it does work. Graphical interface to Bundler and PMVS. Probably right now the easiest way to get a 3D point cloud out of your un-ordered photographs of a building, lanscape, or artifact. [Linux, Windows]
- [Bundler and MVS/PMVS](http://www.cs.cornell.edu/~snavely/bundler/) - These are the core command-line programs that the PPT is built around, but it is still useful to know how to do it from scratch. [Linux, Mac, Windows]
- [MVE with Open-MVG and MVS-texturing](http://www.gcc.tu-darmstadt.de/home/proj/mve/) - Another set of command-line tools, giving a slightly different approach than the Bundler/PMVS pipeline. I've developed scripts to run these as batches, which I'll eventually host here for download. [Linux, Mac, Windows]
- [Regard3D](http://www.regard3d.org/) - This is a new GUI wrapper for Open-MVG, for Windows and Mac only. I therefore can't put it through its paces, but it promises to be a great new tool for an easy SfM workflow. [Windows, Mac]
- [OpenDroneMap](http://opendronemap.github.io/odm/) - Still in development, and not fully functional yet, but promises to be the ultimate all-in-one tool to make rectified aerial photomosaics and DEM's from SfM data clouds extracted from those images. Has a really great GUI interface. [Linux, perhaps Mac and Windows with some work]


#### Point Cloud Editing and Viewing
- [MeshLab](http://meshlab.sourceforge.net/) - The most full-featured point cloud and mesh editor around. A bit of a learning curve, but can do most everything. [Linux, Mac, Windows]
- [CloudCompare](http://www.danielgm.net/cc/) - Easier to get into, but more limited than MeshLab. Great for measuring/quantifying volumetric changes between two point clouds. Comes with an excellent lightweight and simple point cloud viewer. [Linux, Mac, Windows]
- [Blender](https://www.blender.org/) - The 3D modeling mode of Blender can be use to edit meshes and point clouds quite effectively. Many plugins. Most geared to digital animation than scientific analysis though. Can export to various 3D printer formats, however. [Linux, Mac, Windows]

#### Image Analysis/Remote Sensing
- [Multispec](https://engineering.purdue.edu/~biehl/MultiSpec/) - Great tool for analysis and manipulation of multispectral satellite imagery. Can do clustering. [Mac, Windows, Online in browser]
- [ImageJ](http://imagej.nih.gov/ij/) - Great tool for general image manipulation and analysis. A LOT of plugins. Mostly used for medical imaging, but great for analysis of artifacts via imagery. [Linux, Mac, Windows]
- [HyperCube](http://www.erdc.usace.army.mil/Media/FactSheets/FactSheetArticleView/tabid/9254/Article/610433/hypercube.aspx) - Another multispectral image analysis tool. Very powerful. [Windows, Mac]
- [Orfeo Toolbox](https://www.orfeo-toolbox.org) - A nice-looking piece of software for analyzing satellite imagery. Looks to be especially well-suited for very high resolution imagery. [Linux, Mac, Windows] 
- [GRASS](grass.osgeo.org) - GRASS does most satellite imagery analysis things too. [Linux, Mac, Windows]
- [OpenDroneMap](http://opendronemap.github.io/odm/) - For creating rectified photomosaics from aerial imagery. [Linux, perhaps Mac and Windows with some work]
- [AutoGR-Toolkit](http://www.ims.forth.gr/index_main.php?c=90&l=e&d=7) - A set of python scripts to automatically georectify aerial photos to a curated set of rectified imagery hosted on a WMS server. Very cool!! [Linux, Mac, Windows]
- [Mapknitter](https://mapknitter.org/) - An open-source cloud-based service to create rectified photomosaics from aerial imagery. [In The Cloud!]
- [3DINV](http://www.ims.forth.gr/index_main.php?c=90&l=e&d=7) - A tool to invert the results of Electro-Magnetic Resistivity surveys to creat 3D surfaces. [Windows]

#### Other Geospatial Tools
- [GDAL/OGR](http://www.gdal.org/) - GDAL and OGR are libraries used by all FOSS GIS programs to import/export various GIS file formats. They can be accessed from the command-line independently, which may be useful for scripting or batch operations. [Linux, Mac, Windows]
- [Proj](https://trac.osgeo.org/proj/) - Much like GDAL, this is a library used by all FOSS GIS suites. It is for managing geographic projection systems. Again could be useful to use on its own in certain situations. [Linux, Mac, Wnidows]
- [PDAL](http://www.pdal.io/) - Very similar to GDAL, PDAL is a library for manipulating and translating point-cloud data (like LiDAR or SfM data). Again, it is generally not accessed directly by the end user, but could be useful if you are developing a custom application or script. [Linux, Mac, Windows]
- [LasLiberator](https://github.com/LASliberator) - A simple tool to convert pointcloud data from the proprietary LAS format to the open LAZ format. [Windows] 
- [OSSIM](https://trac.osgeo.org/ossim/) - Another library, but this time to deal with multiband satellite imagery, among other data formats. [Linux, Mac, Windows]
- [FWTools](http://fwtools.maptools.org/) - A small suite of GIS/Geospatial tools (including GDAL/OGR and Proj) with a basic GUI for manipulation of file formats and projections with. [Linux, Windows]
- [FUSION](http://forsys.cfr.washington.edu/fusion.html) - A GUI tool to deal with LiDAR data, provided by the US Forest Service. Windows only. [Windows]

---

### Computational Modeling

#### Agent-Based Modeling Platforms
- [NetLogo](https://ccl.northwestern.edu/netlogo/) - A simple-to-use plaform for creating agent-based models. Scalable, with a nice development interface and good model interactivity. Many online resources and large model repository. I recommend this as a good way to get into Agent Based Modeling. [Linux, Mac, Windows]
- [Repast Simphony](http://repast.sourceforge.net/repast_simphony.php) - Perhaps a bit more complex than NetLogo, but also perhaps more powerful. There is a graphical programming interface which may make this easier to use for non-programmers. There is a very good user-base, and nice online documentation. [Linux, Mac, Windows]
- [PyABM](http://azvoleff.com/pyabm.html) - A Python library to help write ABM's in the well-known Python scripting language. [Linux, Mac, Windows]

---

### Software Development and Scientific Computing

#### Scientific Computing/Statistics
- [R](https://www.r-project.org/) - Very robust, huge community, lots of modules. If it's statistical, R can do it. Was my main stats tool before switching to SciPy. [Linux, Mac, Windows]
- [SciPy](http://www.scipy.org/) - Scientific Python. Growing community, also robust, advantage of huge amount of other Python modules and resources. Possible to chain together with other programs (e.g., GRASS) through native Python API's. Because I'm most comfortable in the Python language, this is what I now use most of the time. [Linux, Mac, Windows]
- [Anaconda](https://www.continuum.io/downloads) - Anaconda is a self-contained system for scientific computing with Python. Although you don't need it, it might simplify your installation of SciPy, etc., and will ensure it all plays together well. While technically FOSS, Anaconda is product of an enterprise/open software company that offers some paid services too. [Linux, Mac, Windows]
- [GNU Octave](https://www.gnu.org/software/octave/) - I believe Octave is often used a FOSS alternative for MatLab, but I don't use either, so I'm not sure. I've been told that it is quite powerful and functional, however. [Linux, Mac, Windows]
- [KNIME](https://www.knime.org/knime) - Graphical programming is easier to get into than scripting languages like R or Python. Large code-base, many modules for data-mining. Growing user-base. Note that this is still technically FOSS, even though the KNIME organization has some enterprise tools as well. [Linux, Mac, Windows]
- [Weka](http://www.cs.waikato.ac.nz/ml/weka/) - Another nice data-mining program. Weka libraries can also be brought into KNIME as plugins. [Linux,Mac, Windows]
- [PSPP](https://www.gnu.org/software/pspp/) - Quite literally a FOSS replacement for SPSS. Not as fully functional as other solutions above, but works for basic analyses and data manipulation. Getting better all the time. [Linux, Mac, Windows]
- [PAST](http://folk.uio.no/ohammer/past/) - Perhaps more comfortable for people used to a "spreadsheet" interface to statistics. Many, many, more, and more robust analyses are possible in PAST than in any normal spreadsheet, however. Recommended for people who aren't programmers! NOTE: It has come to my attention that the source-code for PAST is not made available. It's also released under a slightly more restrictive lisence than is true open-source software. Thus, it is clearly not true FOSS. At the moment, I'm leaving it on this list as a special dispensation because it's a very useful piece of software that is *almost* FOSS. But I may eventually decide to remove it. [Windows, Mac]

#### Scientific Computing IDE's
- [Spyder](https://github.com/spyder-ide/spyder) - Excellent for scientific Python work. Similar to R-Studio. [Linux, Mac, Windows]
- [Jupyter](http://jupyter.org/) - A different way to get into Scientific Python. Runs in your web-browser. [Linux, Mac, Windows]
- [R-Studio](https://www.rstudio.com/) - In my opnion, the best graphical interface for using R. [Linux, Mac, Windows]
- [Rcommander](http://socserv.mcmaster.ca/jfox/Misc/Rcmdr/) - A different GUI for R. You may or may not like it better than R studio. [Linux, Mac, Windows]

#### Software Development
- [Spyder](https://github.com/spyder-ide/spyder) - Great for general Python devel too. [Linux, Mac, Windows]
- [iPython](http://ipython.org/) - Great interactive Python shell. Seems to be merging with Jupyter. [Linux, Mac, Windows]
- [Geany](http://www.geany.org/) - A good text editor, and an ok IDE too. [Linux, Mac, Windows]
- [Notepad++](https://notepad-plus-plus.org/) - Ditto. [Windows, Mac, Linux]
- [Eclipse](https://eclipse.org/) - A must if you are doing Java work. Will work with many other languages, but I find it a bit bloated and unfriendly to use. [Linux, Mac, Windows]
- [Meld](http://meldmerge.org/) - A good "diff" tool to see differences between, and merge two versions of, a document or script. [Linux, Mac, Windows]
- [RapidSVN](http://rapidsvn.tigris.org/) - A great tool to manage SVN repositories. [Linux, Mac, Windows(?)]
- [Git](www.github.org) - Command-line tools. Needed to move stuff to and from your GitHub repo. [Linux, Mac, Windows]

---

### Plotting and Data Exploration

#### Plotting Tools
- [Veusz](http://home.gna.org/veusz/) - A GUI front-end for MatPlotLib from SciPy. Easy to get your data in, and then create a lot of different kinds of plots. Might be easier for a non-programmer than simply learning Python and MatPlotLib. [Linux, Mac, Windows]
- [XYScan](http://rhig.physics.yale.edu/~ullrich/software/xyscan/) - A cool little tool for grabbing x/y coords of data points from, eg., plots in PDF papers you downloaded. Might be the only way to get raw data from some publications. [Linux, Mac]
- [Seaborn](http://stanford.edu/~mwaskom/software/seaborn/) - An additional library to make MatPlotLib plotting easier/nicer in SciPy. [Linux, Mac, Windows]
- [GGPlot2](http://ggplot2.org/) - Ditto, but for R instead. [Linux, Mac, Windows]
- [GeoRose](https://yonggeng.wordpress.com/2013/03/06/rose-diagram-software/) - A little software tool for making quick Rose diagrams and strike/dip plots. [Windows, Mac]

#### Data Exploration
- [GGobi](http://www.ggobi.org/) - A very cool program to interact with your 2D and 3D scatter-plotted data. Not necessarily for publication-ready plots, but rather simply to get to know your data better. Very useful! [Linux, Mac, Windows]

#### Network Analysis
- [Cytoscape](http://www.cytoscape.org/) - Perhaps a bit complex to learn and use, but seems very powerful. Seems to be a large user-base. [Linux, Mac, Windows]
- [Gephi](https://gephi.org/) - I'm told it's still a bit buggy, but I do remember it being easier to use than Cytoscape. Not sure if it can do as much, but definitely worth checking out as well! [Linux, Mac, Windows]

---

### Office and Text

#### Word Processing
- [LibreOffice Writer](www.libreoffice.org) - Part of the LibreOffice suite. Fully functional replacement for MSWord, including Zotero bibliographic manager integration. [Linux, Mac, Windows]
- [AbiWord](www.abiword.org) - Lighter, but still functional. No Zotero integration. [Linux, Windows]
- [LaTex](https://www.latex-project.org/) - A sort of markdown language for word-processing. Very powerful control of the formatting of your output document, but more intense to set up than a standard Word Processor. [Linux, Mac, Windows]
- [Lyx](https://www.lyx.org/) - A gui for LaTex, which might make it easier for you to use it. Helpful especially if you are a non-LaTex user trying to collaborate with a LaTex afficiando. [Linux, Mac, Windows]

#### Bibliographic Manager
- [Zotero](www.zotero.org) - Integrates into Firefox, Chrome/Chromium, LibreOffice Writer, and MS Word. Seamless integration with Google Scholar in your webbrowser. Online storage possible, nice collaboration features, and many plugins and citation styles. VERY highly recommended. [Linux, Mac, Windows]
- [Docear](http://www.docear.org/) - A great alternative to Zotero, with in-text support for some word processors. Best feature is it's integration of a visual "mind-map" organization of citations and documents. [Linux, Mac, Windows]
- [BibTex](http://www.bibtex.org/) - If you use LaTex, you are likely using BibTex for your citation managment. Same idea as LaTex: a sort of MarkDown for formatting bibliographies and a format for storing citations. [Linux, Mac, Windows]

#### Spreadsheet
- [LibreOffice Calc](www.libreoffice.org) - A FOSS alternative for MS Excel. Slick, but limited in terms of statistical analysis and plots (as is MS Excel). [Linux, Mac, Windows]
- [Gnumeric](www.gnumeric.org) - More capabilities, better graphics, more plot types, slightly less slick. [Linux, can be compiled on Mac]
- [PAST](http://folk.uio.no/ohammer/past/) - PAST also has basic spreadsheet capabilities, as well as its more complex statistical functions. [Windows, Mac]

#### Database
- [LibreOffice Base](www.libreoffice.org) - A FOSS alternative for MS Access. [Linux, Mac, Windows]
- [PGAdmin](http://www.pgadmin.org/) - An interface for PostgreSQL databases which is fully cross platform. I'm not a huge database-user myself, but I'm given to understand that this is a good tool for managing PostgreSQL databases. [Linux, Mac, Windows]
- [Postgres.app](http://postgresapp.com/) - A Mac-specific interface for PostgreSQL, which you might like instead of PGAdmin. [Mac]
- [SQLite](https://www.sqlite.org/) - SQLite is a very widely used Open database format. It's used as a database engine by a lot of other FOSS projects, such as GRASS, so it's useful to be familiar with it. [Linux, Mac, Windows]

#### Text editing
- [Gedit](https://wiki.gnome.org/Apps/Gedit) - A basic lightweight text editor with syntax highlighting that just does what you want it to. My personal favorite. Does require GTK libraries, however. [Linux, Mac, Windows]
- [Medit](http://mooedit.sourceforge.net/) - Also good and lightweight, and doesn't require GTK. [Linux]
- [Notepad++](https://notepad-plus-plus.org/) - Probably the best option for Windows users. [Windows, Mac, Linux]
- [Geany](http://www.geany.org/) - Another good cross-platform text editor. Some basic IDE tools included. [Linux, Mac, Windows]

#### PDF Tools
- [PDF Shuffler](https://sourceforge.net/projects/pdfshuffler/) - For moving/deleting pages in a PDF, or merging more than one PDF. [Linux]
- [PDF-Mod](https://wiki.gnome.org/Apps/PdfMod) - Does basically exactly what PDF Shuffler does. Made for GTK, so might work better on some distros. [Linux]
- [Xournal](http://xournal.sourceforge.net/) - For annotating PDF's. Can write or draw on the page, and all annotations saved separately. Can export to a condensed PDF with annotations embedded. [Linux]
- [GhostScript](http://www.ghostscript.com/) - Command-line PDF manipulation. Good for batch resize, or quick creation of PDF from other file formats. [Linux, Mac, Windows]
- [Evince](https://wiki.gnome.org/Apps/Evince) - A basic PDF viewer with some of the same capabilities of Acrobat Reader. [Linux, Windows]
- [Briss](http://briss.sourceforge.net/) - A super-simple cross-platform tool to crop multi-page PDF files. Great for getting rid of that black margin on scanned photcopies! [Linux, Mac, Windows]

#### Web Browsing/development
- [Firefox](www.mozilla.org) - Best FOSS web browser. [Linux, Mac, Windows]
- [Chromium](www.chromium.org) - Open Source version of Chrome. [Linux, Mac, Windows]
- [Bluefish](http://bluefish.openoffice.nl/index.html) - A WYSIWYG HTML website editor. Note that the web is different now than it was in good old HTML days, so this tool may be depreciated for many web development uses. If you are still doing basic HTML websites, however, this will work for you. [Linux, Mac, Windows]
- [Jekyll](https://jekyllrb.com/) - Simple website development for "Web 2.0". If you want to maintain a modern website, it's really worth your time to learn Jekyll and/or other modern web frameworks. Once your site is set up, this allows easy editing of site content with MarkDown text and seamless integration on a lot of hosting platforms including GitHub pages (like this very site you are reading now). [Linux, Mac, Windows] 

#### Desktop Publishing
- [Scribus](http://www.scribus.net/) - An all around great tool for making posters, brochures, newsletters, anything that requires mixing graphics and text. Very precise control. A FOSS alternative for Adobe Pagemaker. [Linux, Mac, Windows]
- [LibreOffice Impress](www.libreoffice.org) - More for presentations, but you can make posters, etc. in it too. [Linux, Mac, Windows]
- [LaTex](https://www.latex-project.org/) - Yup, you guessed it! LaTex can be a very powerful tool for Desktop Publishing too! [Linux, Mac, Windows]

#### Presentations
- [LibreOffice Impress](www.libreoffice.org) - A FOSS alternative for MS Powerpoint. Great if you want a standard presentation experience with transitions, animations, etc. [Linux, Mac, Windows]
- [Impressive](http://impressive.sourceforge.net/) - A neat tool for PDF presentations. Gives you some great interactivity with your slides. My main PDF presentation tool. [Linux, Windows]
- [Beamer](https://bitbucket.org/rivanvx/beamer/wiki/Home) - The presentation tool for LaTex presentations. I'm told on good authority that it works very well in tandem with Lyx as a total presenation solution. [Linux, Mac, Windows]
- [Sozi](http://sozi.baierouge.fr/) - Sozi looks to be an open source alternative to "Prezi". I've not used it yet, but it seems quite promising if you like that Prezi style of presentations. [Linux, Mac, Windows]
- [DeckJS](http://imakewebthings.com/deck.js) - DeckJS is a really cool HTML5 presentation back-end. It's "Web 2.0" ready, and you can use it locally in any browser or deployed on your website. Once set up, it's pretty easy to use with standard HTML or MarkDown. I've started doing more and more presentations this way. [Linux, Mac, Windows]
- [SuperSimpleSlider](http://supersimpleslider.com/) - The most stripped down, basic HTML5 slide presenter you can find. It's *less than one kB in size*! Dead easy to make presentations in HTML and/or MarkDown. I used it for [my 2015 SAA presentation](http://isaacullah.github.io/SAA-2015-Presentation/). [Linux, Mac, Windows]

#### Mind Mapping and Diagramming
- [Freemind](http://freemind.sourceforge.net/wiki/index.php/Main_Page) -  Great for mapping out a project or an idea. I often use it to map out computational models that I plan to create. [Linux, Mac, Windows]
- [Freeplane](http://www.freeplane.org/wiki/index.php/Main_Page) - A spin-off from Freemind. Similar, but might be more to your liking. Supposed to have added some features that were percieved to have been missing from Freemind, and supposed to be on a faster release schedule. [Linux, Mac, Windows]
- [XMind](http://www.xmind.net/) - Perhaps a little more slick than Freemind/Freeplane. Be aware that although there is a paid-for "Pro" version, the normal version is totally FOSS. [Linux, Mac, Windows]
- [Docear](http://www.docear.org/) - Docear also has a decent mind-map function. It's integration with your references list make it very well suited for mapping out a writing project. [Linux, Mac, Windows]

---

### Graphics and Photography

#### Vector Graphics
- [Inkscape](www.inkscape,org) - A FOSS alternative for Adobe Illustrator. Very functional, and powerful. Bitmap trace function is very, very useful. Excellent for publication-ready line drawings. Highly recommended. [Linux, Mac, Windows]
- [LibreOffice Draw](www.libreoffice.org) - Does vector graphics. More limited than Inkscape, but simpler to use, perhaps. [Linux, Mac, Windows]

#### Raster Graphics
- [GIMP](www.gimp.org) - Very functional and powerful. Great for editing raster graphics of any kind. A FOSS alternative for Adobe Photoshop.  [Linux, Mac, Windows]
- [ImageMagick](http://www.imagemagick.org/script/index.php) - Command line image manipulation. VERY powerful. Excellent for things like batch resize or animated GIF creation. [Linux, Mac, Windows]

#### Photography
- [Darktable](http://www.darktable.org/) - Very powerful photography post-processing suite, including RAW development, collection management, and all sorts of other goodies. A FOSS alternative for Adobe Lightroom. I very highly recommend this, and use it as my main photographic editor. [Linux, Mac]
-[LightZone](http://lightzoneproject.org/) - Quite similar to DarkTable. I haven't tried this software myself, but it does seem to be actively developed with a good user community. I hear good things. Windows users, this is your Lightroom alternative. Note that while you have to register to download, it's free and open-source. [Linux, Mac, Windows]
- [GIMP](www.gimp.org) - A FOSS alternative for Adobe Photoshop. Very functional and powerful. Can do interactive photo edits like rubber stamp as well as layer-integrated edits. Many macros/plugins for photgraphic post-process, including RAW support. Also highly recommended. [Linux, Mac, Windows]
- [G'MIC](http://gmic.eu/) - This is a great set of plugins for GIMP (or Adobe Photoshop) that add tons of new functionality. Highly recommended! [Linux, Mac, Windows]
- [GThumb](https://wiki.gnome.org/Apps/gthumb) - A basic, but very functional picture viewer/organizer for Linux. Can do minor edits like rotate or auto-enhance. Really just for viewing images, but does it well. [Linux]
- [HUGIN](http://hugin.sourceforge.net/) - Best panorama stitcher out there. Can also do mosaicking and image unwarping. A really great piece of software! [Linux, Mac, Windows]
- [geotag](http://geotag.sourceforge.net/) - Add geographic information to the EXIF tags of your photos by syncing with a track exported from your GPS. Very useful for remember exactly where you took a photo! [Linux, Windows, Web Service]
- [ExifTool](http://www.sno.phy.queensu.ca/~phil/exiftool/) - Command-line libraries for manipulating the EXIF image information tags of your photographs. [Linux, Mac, Windows]
- [PyExifToolGUI](https://hvdwolf.github.io/pyExifToolGUI/) - A nice Python GUI for ExifTools. Perhaps easier for you if you are not a command-line user. [Linux, Mac, Windows]

---

### Multimedia

#### Video Editing
- [AVI-Demux](http://avidemux.sourceforge.net/) - Simple program to trim video, extract audio, etc. [Linux, Mac, Windows]
- [Blender](www.blender.org) - In video editing mode, this is the best non-linear, non-destructive video editor in the FOSS world. Can do everything, including digital stabilization of shaky footage color correction/grading, overlays, 3D animations, etc. If you want to do professional video production or computer animation, this is the FOSS tool for you. [Linux, Mac, Windows]

#### Audio Editing
- [Audacity](http://www.audacityteam.org/) - Easy to use, but powerful multi-track audio editor and recorder. Great for podcasts, etc. Many plugins for audio effects and analysis. I generally use Audacity for all my normal audio editing needs. [Linux, Mac, Windows]
- [Ardour](http://ardour.org/) - Ardour is what is called a DAW (Digital Audio Workstation). As such, it's more complex than Audacity, but also potentially more powerful. If you really want to be doing full-fledged audio production, then this is what you should be using. Do note that while Ardour is still technically FOSS, they only offer the source code (to be compiled by you) for "free". You have to donate a small sum to get the pre-compiled binaries for your OS. [Linux, Mac, Windows version forthcoming]

#### Multimedia Players/Converters
- [VLC](http://www.videolan.org/vlc/index.html) - Will play pretty much any media file. [Linux, Mac, Windows]
- [SoundConverter](http://soundconverter.org/) - To/from pretty much any audio file format. GUI. [Linux]
- [Handbrake](https://handbrake.fr/) - GUI video converter. Powerful. Convert to/from pretty much any format. [Linux, Mac, Windows]
- [avconv/ffmpeg](https://libav.org/avconv.html) - Command line tools for video conversion. Very powerful. Useful for making movies from a series of still images or reducing movie file size. [Linux, Windows]







