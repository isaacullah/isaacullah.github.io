---
title: "Open sourcing archaeology"
modified: 2015-04-21
excerpt: "Thoughts on the 2015 SAA symposium on open methods in archaeology"
tags: [FOSS, open science, methods,computational archaeology, digital archaeology]
layout: single
author_profile: true
read_time: true
comments:  true
share: true
related: true
toc: true
toc_sticky: true
---

Just returning from the 2015 SAA conference in San Francisco. Attended several interesting sessions featuring digital technologies applications in archaeology. Among these was a symposium entitled, ["OPEN METHODS IN ARCHAEOLOGY: HOW TO ENCOURAGE REPRODUCIBLE RESEARCH AS THE DEFAULT PRACTICE"](https://github.com/benmarwick/SAA2015-Open-Methods). With the recent explosion of the usage of digital data and methods in archaeology, there comes a new set of responsibilities and opportunities to maintain/promote transparency, reproducibility, fairness, and equality in the way we do archaeology. The presenters in the symposium shared several examples for how to do this, beyond the "typical" calls for using FOSS software. One of the more interesting take-home messages was the idea of "scripting" statistical analyses (e.g., in [R markdown](http://rmarkdown.rstudio.com/), so that the *entire process* of archaeological analysis is preserved. These "scripts" can then be archived here on [github](https://github.com/), or, even better, at [figshare](figshare.com), so that they are accessible, citeable, and inter-linkable to the resultant publications and the original data (figshare will give your content a persistent DOI number). In fact, the archiving of digital methods (either statistical, as above, or [computational](www.openabm.org) ) was a main topic. These parallel the movement to archive digital data (i.e., [tDAR](www.tdar.org), [Open Context](opencontext.org), etc.) and open access publishing, and hopefully will provide the link between the two, which is currently missing in the realm of digital archaeology. For those of us who already script most analysese, this is a fairly painless proposal. If you are not already using an analysis package that allows for easy scripting (R, SciPy, etc.), then you might have to work a little hard (e.g., typing out the steps of the workflow in a separate document). If the idea of "programming" your statistical analyses seems daunting (it really isn't!), then a potential "baby step" is to use a graphical programing approach, like that used in the really nice [KNIME](www.knime.org) package. Graphical programming allows users who are more comfortable in a GUI environment to create scripts "graphically" by  joining widgets together into workflows in a graphical environment. These are directly equivalent to text-based scripts as used in R, MatLab, SciPy, etc., and could be archived for reproducibility in the same way.


