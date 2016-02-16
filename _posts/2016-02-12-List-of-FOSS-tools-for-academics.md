---
layout: post
title: "Isaac's List of FOSS tools for academics..."
author: isaacullah
modified: 2016-02-16
comments: True
excerpt: "...and what to use them for!"
tags: [FOSS, software, list, tools]
---

## ...and what to use them for!

*What is "FOSS," and what does it stand for? ["FOSS" stands for "Free and Open Source Software."](http://www.fsf.org/) It is important to note that this different from "software you don't pay for" in an important way: FOSS software is not only "free" in a monetary sense, but is also "free" in the sense that you or anyone else is "free" to take and use it in any way that you want, with only a very few restrictions (typically only that you credit where you got it from). FOSS software is usually (but not always) developed by a community of programmers who do it because the love it and want to contribute to the greater good. They are usually very passionate about their projects and they use the software themselves (often in their "day job"). Because FOSS projects are really **community** projects, it means that **you** can get involved if you want to. This means that **you** can contribute to fixing bugs, asking for features to be added, beta testing, styling, or coding, and so **you** can help make the software look and work the way **you** want it too. Not only that, but because the source code is always made available, **you**, as a scientist, can confirm that the software is **actually doing what it purports to do**, which is something you cannot do with any closed source software, free or paid-for.*
<br><br><br>
**Notes about this list:**
<br><br>
The great majority of these software tools are available on all three major OS platforms: Linux, MacOS, and MS Windows. There are a couple of pieces of nice software that are for one or two platforms only, and these are noted. It's important to remember, however, that many pieces of Windows software will run on Linux under the [WINE Windows compatibility layer](https://www.winehq.org/), and a lot of Linux software can be run inside Windows or Mac in a [virtual machine](https://www.virtualbox.org/) or compatibility layer like [MinGW](http://www.mingw.org/). However, since *all* varieties of Linux are also FOSS projects themselves, I highly recommend that you use a Linux OS. Gone are the days where you needed a degree in Computer Science to install and use Linux. Now, anyone can do it! Have a look at [distrowatch.com](http://distrowatch.com/) for some of the more popular flavors of Linux. I personally use and recommend [Xubuntu](xubuntu.org), which is very lightweight, and that has a desktop interface that will be comfortable for Windows users. Mac users may prefer the main [Ubuntu distro](www.ubuntu.com), which has a desktop interface that will be more familiar to them, albeit larger and more system-intensive to run.
<br><br>
 I plan to maintain and update this list over time. Please [e-mail me](mailto:isaaciullah@gmail.com) if you have a piece of FOSS software you think should be on this list. Please provide examples of how your suggestion could be used in an academic context.

---

---

### GIS and Image Analysis

#### GIS
- [GRASS](grass.osgeo.org) - Most powerful, fully-functional FOSS GIS suite. "Heavy lifting" GIS work and scientific geo-spatial analysis. [Linux, Mac, Windows]
- [QGIS](www.qgis.org) - Less powerful, but very functional GIS. Great for web mapping applications and making finished cartographic products. [Linux, Mac, Windows]

#### Structure from Motion Analysis
- ["PPT" Python Photogrammetry Toolbox](http://184.106.205.13/arcteam/ppt.php) - A bit buggy, but it does work. Graphical interface to bundler and PMVS. Probably right now the easiest way to get a 3D point cloud out of your un-ordered photographs of a building, lanscape, or artifact. [Linux, Windows]
- [Bundler and MVS/PMVS](http://www.cs.cornell.edu/~snavely/bundler/) - These are the core command-line programs that the PPT is built around, but it is still useful to know how to do it from scratch. [Linux, Mac, Windows]
- [MVE with MVS-texturing](http://www.gcc.tu-darmstadt.de/home/proj/mve/) - Another set of command-line tools, giving a slightly different approach than the Bundler/PMVS pipeline. I've developed scripts to run these as batches, which I'll eventually host here for download. [Linux, Mac, Windows]
- [OpenDroneMap](http://opendronemap.github.io/odm/) - Still in development, and not fully functional yet, but promises to be the ultimate all-in-one tool to make rectified aerial photomosaics and DEM's from SfM data clouds extracted from those images. Has a really great GUI interface. [Linux, perhaps Mac and Windows with some work]

#### Point Cloud Editing and Viewing
- [MeshLab](http://meshlab.sourceforge.net/) - The most full-featured point cloud and mesh editor around. A bit of a learning curve, but can do most everything. [Linux, Mac, Windows]
- [CloudCompare](http://www.danielgm.net/cc/) - Easier to get into, but more limited than MeshLab. Great for measuring/quantifying volumetric changes between two point clouds. [Linux, Mac, Windows]
- [Blender](https://www.blender.org/) - The 3D modeling mode of Blender can be use to edit meshes and point clouds quite effectively. Many plugins. Most geared to digital animation than scientific analysis though. Can export to various 3D printer formats, however. [Linux, Mac, Windows]

#### Image Analysis/Remote Sensing
- [Multispec](https://engineering.purdue.edu/~biehl/MultiSpec/) - Great tool for analysis and manipulation of multispectral satellite imagery. Can do clustering. [Mac, Windows, Online in browser]
- [ImageJ](http://imagej.nih.gov/ij/) - Great tool for general image manipulation and analysis. A LOT of plugins. Mostly used for medical imaging, but great for analysis of artifacts via imagery. [Linux, Mac, Windows]
- [HyperCube](http://www.erdc.usace.army.mil/Media/FactSheets/FactSheetArticleView/tabid/9254/Article/610433/hypercube.aspx) - Another multispectral image analysis tool. Very powerful. [Windows, Mac]
- [GRASS](grass.osgeo.org) - GRASS does most satellite imagery analysis things too. [Linux, Mac, Windows]
- [OpenDroneMap](http://opendronemap.github.io/odm/) - For creating rectified photomosaics from aerial imagery. [Linux, perhaps Mac and Windows with some work]

---

### Software Development and Scientific Computing

#### Scientific Computing/Statistics
- [R](https://www.r-project.org/) - Very robust, huge community, lots of modules. [Linux, Mac, Windows]
- [SciPy](http://www.scipy.org/) - Scientific Python. Growing community, also robust, advantage of huge amount of other Python modules and resources. Possible to chain together with other programs (e.g., GRASS) through native Python API's. [Linux, Mac, Windows]
- [KNIME](https://www.knime.org/knime) - Graphical programming is easier to get into than scripting languages like R or Python. Large code-base, many modules for data-mining. Growing user-base. Note that this is still technically FOSS, even though the KNIME organization has some enterprise tools as well. [Linux, Mac, Windows]
- [PAST](http://folk.uio.no/ohammer/past/) - Perhaps more comfortable for people used to a "spreadsheet" interface to statistics. Many, many, more, and more robust analyses are possible in PAST than in any normal spreadsheet, however. [Windows, Mac]
- [PSPP](https://www.gnu.org/software/pspp/) - Quite literally a stand-in for SPSS. Not as fully functional as other solutions above, but works for basic analyses and data manipulation. Getting better all the time. [Linux, Mac, Windows]

#### Scientific Computing IDE's
- [Spyder](https://github.com/spyder-ide/spyder) - Excellent for scientific Python work. Similar to R-Studio. [Linux, Mac, Windows]
- [Jupyter](http://jupyter.org/) - A different way to get into Scientific Python. Runs in your web-browser. [Linux, Mac, Windows]
- [R-Studio](https://www.rstudio.com/) - The best interface for using R. [Linux, Mac, Windows]

#### Software Development
- [Spyder](https://github.com/spyder-ide/spyder) - Great for general Python devel too. [Linux, Mac, Windows]
- [iPython](http://ipython.org/) - Great interactive Python shell. Seems to be merging with Jupyter. [Linux, Mac, Windows]
- [Geany](http://www.geany.org/) - A good text editor, and an ok IDE too. [Linux, Mac, Windows]
- [Notepad++](https://notepad-plus-plus.org/) - Ditto. [Windows, Mac, Linux]
- [Eclipse](https://eclipse.org/) - A must if you are doing Java work. Will work with many other languages, but I find it a bit bloated an unfriendly to use. [Linux, Mac, Windows]
- [Meld](http://meldmerge.org/) - A good "dif" tool to see and merge two versions of a document or script. [Linux, Mac, Windows]
- [RapidSVN](http://rapidsvn.tigris.org/) - A great tool to manage SVN repositories. [Linux. Mac, Windows(?)]
- [Git](www.github.org) - Command-line tools. Needed to move stuff to and from your GitHub repo. [Linux, Mac, Windows]

---

### Plotting and Data Exploration

#### Plotting Tools
- [Veusz](http://home.gna.org/veusz/) - A GUI front-end for MatPlotLib from SciPy. Easy to get your data in, and then create a lot of different kinds of plots. Might be easier for a non-programmer than simply learning Python and MatPlotLib. [Linux, Mac, Windows]
- [XYScan](http://rhig.physics.yale.edu/~ullrich/software/xyscan/) - A cool little tool for grabbing x/y coords of data points from, eg., plots in PDF papers you downloaded. Might be the only way to get raw data from some publications. [Linux, Mac]
- [Seaborn](http://stanford.edu/~mwaskom/software/seaborn/) - An additional library to make MatPlotLib plotting easier/nicer in SciPy. [Linux, Mac, Windows]
GGPlot2 - Ditto, but for R instead. [Linux, Mac, Windows]
- [GeoRose](https://yonggeng.wordpress.com/2013/03/06/rose-diagram-software/) - A little software tool for making quick Rose diagrams and strike/dip plots. [Windows, Mac]

#### Data Exploration
- [GGobi](http://www.ggobi.org/) - A very cool program to interact with your 2D and 3D scatter-plotted data. Not necessarily for publication-ready plots, but rather simply to get to know your data better. Very useful! [Linux, Mac, Windows]

#### Network Analysis
- [Cytoscape](http://www.cytoscape.org/) - Perhaps a bit complex to learn and use, but seems very powerful. Seems to be a large user-base. [Linux, Mac, Windows]

---

### Office and Text

#### Word Processing
- [LibreOffice Writer](www.libreoffice.org) - Part of the LibreOffice suite. Fully functional replacement for MSWord, including Zotero bibliographic manager integration. [Linux, Mac, Windows]
- [AbiWord](www.abiword.org) - Lighter, but still functional. No Zotero integration. [Linux, Windows]
- [LaTex](https://www.latex-project.org/) - A sort of markdown language for word-processing. Very powerful control of the formatting of your output document, but more intense to set up than a standard Word Processor. [Linux, Mac, Windows]
- [Lyx](https://www.lyx.org/) - A gui for LaTex, which might make it easier for you to use it. Helpful especially if you are a non-LaTex user trying to collaborate with a LaTex afficiando. [Linux, Mac, Windows]

#### Bibliographic Manager
- [Zotero](www.zotero.org) - Integrates into Firefox, Chrome/Chromium, LibreOffice, and MSWord. Seamless integration with Google Scholar. VERY highly recommended. [Linux, Mac, Windows]
- [BibTex](http://www.bibtex.org/) - If you use LaTex, you are likely using BibTex for your citation managment. Same idea as LaTex: a sort of Markdown for formatting bibliographies. [Linux, Mac, Windows]
- [Docear](http://www.docear.org/) - A great alternative to Zotero, with some in-text support for word processors. Best feature is it's integration of a visual "mind-map" organization of citations and documents.  [Linux, Mac, Windows]

#### Spreadsheet
- [LibreOffice Calc](www.libreoffice.org) - Stand in for MSExcel. Slick, but limited in terms of statistical analysis and plots (as is MS Excel). [Linux, Mac, Windows]
- [Gnumeric](www.gnumeric.org) - More capabilities, better graphics, more plot types, slightly less slick. [Linux, can be compiled on Mac]

#### Database
- [LibreOffice Base](www.libreoffice.org) - Stand in for MS Access. [Linux, Mac, Windows]

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
- [Scribus](http://www.scribus.net/) - An all around great tool for making posters, brochures, newsletters, anything that requires mixing graphics and text. Very precise control. A direct stand-in for Adobe Pagemaker. [Linux, Mac, Windows]
- [LibreOffice Impress](www.libreoffice.org) - More for presentations, but you can make posters, etc. in it too. [Linux, Mac, Windows]

#### Presentations
- [LibreOffice Impress](www.libreoffice.org) - A direct stand-in for MS Powerpoint. [Linux, Mac, Windows]
- [Impressive](http://impressive.sourceforge.net/) - A great tool for PDF presentations. Gives you some great interactivity with your slides. [Linux, Windows]

#### Mind Mapping and Diagramming
- [Freemind](http://freemind.sourceforge.net/wiki/index.php/Main_Page) -  Great for mapping out a project or idea. [Linux, Mac, Windows]
- [Docear](http://www.docear.org/) - Docear also has a mind-map function. [Linux, Mac, Windows]

---

### Graphics and Photography

#### Vector Graphics
- [Inkscape](www.inkscape,org) - Direct stand in for Adobe Illustrator. Very functional, and powerful. Bitmap trace function is very, very useful. Excellent for publication-ready line drawings. Highly recommended. [Linux, Mac, Windows]
- [LibreOffice Draw](www.libreoffice.org) - Does vector graphics. More limited than Inkscape, but simpler to use, perhaps. [Linux, Mac, Windows]

#### Raster Graphics
- [GIMP](www.gimp.org) - Very functional and powerful. Great for editing raster graphics of any kind. Direct stand in for Adobe Photoshop.  [Linux, Mac, Windows]
- [ImageMagick](http://www.imagemagick.org/script/index.php) - Command line image manipulation. VERY powerful. Excellent for things like batch resize or animated GIF creation. [Linux, Mac, Windows]

#### Photography
- [GThumb](https://wiki.gnome.org/Apps/gthumb) - A basic, but very functional picture viewer/organizer for Linux. Can do minor edits like rotate or auto-enhance. Really just for viewing images, but does it well. [Linux]
- [Darktable](http://www.darktable.org/) - Very powerful photography post-processing suite, including RAW development, collection management, and all sorts of other goodies. Direct stand-in for Adobe Lightroom. I very highly recommend this, and use it as my main photographic editor. [Linux, Mac]
- [HUGIN](http://hugin.sourceforge.net/) - Best panorama stitcher out there. Can also do mosaicking and image unwarping. [Linux, Mac, Windows]
- [GIMP](www.gimp.org) - Direct stand in for Adobe Photoshop. Very functional and powerful. Can do interactive photo edits like rubber stamp as well as layer-integrated edits. Many macros/plugins for photgraphic post-process, including RAW support. Also highly recommended. [Linux, Mac, Windows]

---

### Multimedia

#### Video Editing
- [AVI-Demux](http://avidemux.sourceforge.net/) - Simple program to trim video, extract audio, etc. [Linux, Mac, Windows]
- [Blender](www.blender.org) - In video editing mode, this is the best non-linear, non-destructive video editor in the FOSS world. Can do everything, including digital stabilization of shaky footage color correction/grading, overlays, animations, etc. [Linux, Mac, Windows]

#### Audio Editing
- [Audacity](http://www.audacityteam.org/) - Easy to use, but powerful multi-track audio editor and recorder. Great for podcasts, etc. Many plugins for audio effects and analysis. [Linux, Mac, Windows]

#### Multimedia Players/Converters
- [VLC](http://www.videolan.org/vlc/index.html) - Will play pretty much any media file. [Linux, Mac, Windows]
- [SoundConverter](http://soundconverter.org/) - To/from pretty much any audio file format. GUI. [Linux]
- [Handbrake](https://handbrake.fr/) - GUI video converter. Powerful. Convert to/from pretty much any format. [Linux, Mac, Windows]
- [avconv/ffmpeg](https://libav.org/avconv.html) - Command line tools for video conversion. Very powerful. Useful for making movies from a series of still images or reducing movie file size. [Linux, Windows]







