---
layout: post
title: "DroneSurveyPlanner v0.1 beta"
author: isaacullah
modified: 2018-01-02
comments: True
excerpt: "A LibreOffice Calc spreadsheet designed to help you plan an aerial drone mapping survey mission."
tags: [archaeology, fieldwork, Mobile]
---

This is a quick blog post to announce the initial beta release of LibreOffice Calc spreadsheet designed to help you plan an aerial drone mapping survey mission.

The release can be found at the following DOI: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1134686.svg)](https://doi.org/10.5281/zenodo.1134686)

The development branch continues at the following GitHUB repository: [https://github.com/isaacullah/DroneSurveyPlanner](https://github.com/isaacullah/DroneSurveyPlanner) Feel free to clone or fork the repository, and make changes or additions via pull request.

## How to use:

1. Enter data about your drone, camera, and mission details into the top section.
2. The spreadhsheet calculates the resolution and ground-footprint of each photo as well as transect details and flight time and speed to complete the survey mission.
3. Two additional sheets are provided with details about the DJI Mavic Pro drone and MapIR drone cameras. If you have data about a different drone or camera, please get in touch and I will try to add a sheet with the new info. Or better yet, fork the repository, add your changes, and issue a pull request! :)

## Notes:

1. The formula for calculating image footprint assumes a nadir camera angle (straight down) and is: 
    - Ground distance in X plane = (Altitude / focal length of lens) * X length of camera sensor
    - Ground distance in Y plane = (Altitude / focal length of lens) * Y length of camera sensor
2. All other outputs are calculated based on these dimensions and the other input data
3. Flight time/flying speed is influenced by transect spacing, flying height, and the photo interval.
4. Flying height results in a trade off in coverage vs resolution, and flying higher means faster flight times for the same area to be covered.

## License:

This spreadsheet is licensed under the [GNU GPL v.3 license](https://www.gnu.org/licenses/gpl-3.0.en.html)
It is provided with no warranty express or implied.
Please double check all calculations before using this spreadsheet for mission-critical applications!

