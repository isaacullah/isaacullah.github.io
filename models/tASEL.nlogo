globals [artifact_count sample_size positives negatives percentage_found percentage_positive extrapolated_count dif num_patches
  tot_artifacts gridx gridy num_dense_patches mean_density mean_density_sd calculated_density calculated_density_sd density_dif ]
breed [artifacts artifact]
patches-own [ num_arts ]

to reset_all
  clear-all
  ask patches [ set pcolor brown ]
  set_header
  reset-ticks
end

to set_header
  output-type "% landscape sampled,# survey patches,# positive survey patches,# negative survey patches,# dense survey patches,% positive survey patches,# artifacts found,% artifacts found,extrapolated # artifacts,actual # artifacts,count difference,sampled density,sampled density sd,actual density,actual density sd,density difference,grid x,grid y,x offset,y offset"
  output-print ""
end

to setup_artifacts
  ifelse artifact_clustering = 0 [
    crt num_artifacts [ setxy random-xcor random-ycor ]
  ] [
    ask n-of artifact_clustering patches
     [
     sprout ( num_artifacts / artifact_clustering )
        [
        set xcor xcor + random-float cluster_x
        set ycor ycor + random-float cluster_y
        ]
     ]
  ]
  ask turtles [ set shape "default" set size 0.6 set color black]
end

to delete_artifacts
  clear-turtles
end

to countup
  set tot_artifacts count turtles
  set num_patches count patches with [ pcolor = blue ]
  set mean_density count patches / tot_artifacts
end

to hide_some_artifacts
  ask turtles [ set color black ]
  ask n-of (count turtles * proportion_hid) turtles [ set color brown ]
end

to show_artifacts
  ask turtles [ set color black ]
end

to random_patches
  ask n-of n patches [
   set pcolor blue
  ]
end

to systematic_patches
  set gridx grid_x
  set gridy grid_y
  ask patches with [pxcor mod gridx = x_offset and pycor mod gridy = y_offset] [ set pcolor blue ]
end

to judgemental_patches
  if mouse-down?
    [ask patch mouse-xcor mouse-ycor
        [ set pcolor blue]
  ]
  display
end

to iterate
  ifelse additive_iterations = True
    [reset_patches] [delete_patches]
  if iterate_random = True [
    random_patches
    ]
  if iterate_grid_size = True [ ;; grid dimensions random within limits set by sliders
    set gridx random grid_x + 1
    set gridy random grid_y + 1
    ]
  if iterate_grid_offset = True [ ;; grid offsets within limits set by sliders
    set x_offset random gridx
    set y_offset random gridy
    ]
  if iterate_grid_size = True or iterate_grid_offset = True [
    ask patches with [pxcor mod gridx = x_offset and pycor mod gridy = y_offset] [ set pcolor blue ]
    ]
  countup
  get_results
  tick
  if ticks >= iterations [ stop ]
end

to step
  ifelse additive_iterations = True
    [reset_patches] [delete_patches]
  if iterate_random = True [
    random_patches
    ]
  if iterate_grid_size = True [ ;; grid dimensions random within limits set by sliders
    set gridx random grid_x + 1
    set gridy random grid_y + 1
    ]
  if iterate_grid_offset = True [ ;; grid offsets within limits set by sliders
    set x_offset random gridx
    set y_offset random gridy
    ]
  if iterate_grid_size = True or iterate_grid_offset = True [
    ask patches with [pxcor mod gridx = x_offset and pycor mod gridy = y_offset] [ set pcolor blue ]
    ]
  countup
  get_results
  tick-advance 1
end

to delete_patches
  ask patches [ set pcolor brown ]
end

to reset_patches
  ask patches [
    if pcolor = green
        [ set pcolor blue]
    if pcolor = cyan
        [ set pcolor blue]
    if pcolor = red
        [ set pcolor blue]
    ]
end

to get_results
  set num_patches count patches with [ pcolor = blue ]
  ;; set artifact_count count turtles-on patches with [ pcolor = blue ]
  ask patches [ set num_arts count turtles-here ]
  ;; carefully [ set artifact_count sum [ num_arts ] of patches with [ pcolor = blue ] ] [ set artifact_count [num_arts] of patches with [ pcolor = blue ] ]
  set artifact_count sum [ num_arts ] of patches with [ pcolor = blue ]
  set calculated_density mean [ num_arts ] of patches with [ pcolor = blue ]
  carefully [ set calculated_density_sd standard-deviation [ num_arts ] of patches with [ pcolor = blue ] ] [ set calculated_density_sd 0 ]
  set tot_artifacts count turtles
  set mean_density mean [ num_arts ] of patches
  set mean_density_sd standard-deviation [ num_arts ] of patches
    ask patches [
      if (pcolor = blue) and (any? turtles-here)
        [ set pcolor green]
      if pcolor = blue
        [ set pcolor red]
      ]
  set positives count patches with [ pcolor = green ]
  set negatives count patches with [ pcolor = red ]
  ask patches with [ pcolor = green ] [
    if count turtles-here >= density_thresh
    [ set pcolor cyan ]
  ]
  set num_dense_patches count patches with [ pcolor = cyan ]
  set sample_size ( (positives + negatives) / (count patches) ) * 100
  carefully [ set percentage_found ( artifact_count / tot_artifacts ) * 100 ] [ set percentage_found 0 ]
  carefully [ set percentage_positive ( positives / ( positives + negatives ) ) * 100 ] [ set percentage_positive 0 ]
  carefully [ set extrapolated_count ( artifact_count / (sample_size / 100) ) ] [ set extrapolated_count 0 ]
  set dif extrapolated_count - tot_artifacts
  ;; carefully [ set calculated_density (artifact_count / num_patches) ] [ set calculated_density 0 ]
  set density_dif calculated_density - mean_density
  output-type precision sample_size 3
  output-type ","
  output-type num_patches
  output-type ","
  output-type positives
  output-type ","
  output-type negatives
  output-type ","
  output-type num_dense_patches
  output-type ","
  output-type precision percentage_positive 3
  output-type ","
  output-type artifact_count
  output-type ","
  output-type precision percentage_found 3
  output-type ","
  output-type precision extrapolated_count 3
  output-type ","
  output-type tot_artifacts
  output-type ","
  output-type precision dif 3
  output-type ","
  output-type precision calculated_density 3
  output-type ","
  output-type precision calculated_density_sd 3
  output-type ","
  output-type precision mean_density 3
  output-type ","
  output-type precision mean_density_sd 3
  output-type ","
  output-type precision density_dif 3
  output-type ","
  output-type gridx
  output-type ","
  output-type gridy
  output-type ","
  output-type x_offset
  output-type ","
  output-type y_offset
  output-print ""
end
@#$#@#$#@
GRAPHICS-WINDOW
609
10
1382
784
-1
-1
15.0
1
10
1
1
1
0
1
1
1
0
50
0
50
1
1
1
ticks
30.0

BUTTON
40
145
245
178
1) Setup Artifact Distribution
setup_artifacts
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
35
280
287
313
2a) Select n random survey patches
random_patches
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
35
355
334
388
2b) Setup a systematic grid of survey patches
systematic_patches
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
35
430
293
463
2c) Interactively select survey patches
judgemental_patches
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
295
280
482
313
n
n
0
100
1.0
1
1
NIL
HORIZONTAL

TEXTBOX
58
325
89
343
or...
14
15.0
1

TEXTBOX
57
407
89
425
or...
14
15.0
1

BUTTON
30
560
210
618
3) Display Results!
get_results
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
255
150
425
183
artifact_clustering
artifact_clustering
0
100
0.0
1
1
NIL
HORIZONTAL

MONITOR
30
625
210
670
# of artifacts discovered
artifact_count
17
1
11

MONITOR
30
675
210
720
# of postive survey patches
positives
17
1
11

MONITOR
30
725
210
770
# of negative survey patches
negatives
17
1
11

TEXTBOX
36
465
282
497
Don't forget to \"unclick\" this button!
11
0.0
1

MONITOR
215
625
395
670
% of all artifacts discovered
percentage_found
2
1
11

MONITOR
215
675
440
720
Positivity rate (% of survey patches)
percentage_positive
2
1
11

MONITOR
215
725
440
770
Extrapolated number of artifacts
extrapolated_count
0
1
11

MONITOR
215
575
395
620
Sample size (% of landscape)
sample_size
2
1
11

BUTTON
435
150
585
183
Hide some artifacts
hide_some_artifacts
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
435
220
585
253
Show artifacts
show_artifacts
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
435
185
585
218
proportion_hid
proportion_hid
0
1
1.0
0.05
1
NIL
HORIZONTAL

SLIDER
345
335
450
368
grid_x
grid_x
1
50
10.0
1
1
NIL
HORIZONTAL

BUTTON
355
440
580
487
Count survey patches/artifacts
countup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
450
490
580
535
# of survey patches
num_patches
17
1
11

BUTTON
40
490
195
531
Reset survey patches
reset_patches
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
5
40
610
58
READ THE \"MODEL INFO\" TAB FOR INSTRUCTIONS ON HOW TO USE THIS MODEL.
15
15.0
1

TEXTBOX
215
556
430
577
Total number of landscape patches is 2500.
10
0.0
1

BUTTON
45
190
215
231
Clear artifact distribution
delete_artifacts
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
40
65
222
111
Start/Reset Experiment
reset_all
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
355
490
445
535
# of artifacts
tot_artifacts
0
1
11

MONITOR
445
725
605
770
Count difference
dif
0
1
11

OUTPUT
22
789
1338
863
12

TEXTBOX
70
115
220
133
Click this first!
14
105.0
1

SLIDER
255
185
425
218
cluster_x
cluster_x
0
50
15.0
1
1
NIL
HORIZONTAL

SLIDER
255
220
425
253
cluster_y
cluster_y
0
50
15.0
1
1
NIL
HORIZONTAL

SLIDER
455
335
563
368
grid_y
grid_y
1
50
10.0
1
1
NIL
HORIZONTAL

SLIDER
345
373
450
406
x_offset
x_offset
0
50
0.0
1
1
NIL
HORIZONTAL

SLIDER
455
373
564
406
y_offset
y_offset
0
50
0.0
1
1
NIL
HORIZONTAL

SWITCH
1400
350
1565
383
iterate_random
iterate_random
0
1
-1000

SWITCH
1399
388
1564
421
iterate_grid_size
iterate_grid_size
1
1
-1000

INPUTBOX
1400
285
1565
345
iterations
500.0
1
0
Number

SWITCH
1399
426
1564
459
iterate_grid_offset
iterate_grid_offset
1
1
-1000

BUTTON
1405
130
1495
180
Iterate!
iterate
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
0

TEXTBOX
245
65
595
90
For iterative use, see the other side of the canvas --->
12
0.0
1

TEXTBOX
1355
802
1567
877
To save out your results to a file, right click on this output window, and select \"export.\"
12
0.0
1

TEXTBOX
1391
68
1577
113
Remember to click the \"Start/Reset Experiment\" button first!!
12
0.0
1

TEXTBOX
355
410
550
428
Offsets should be less than grid spacing.
10
0.0
1

TEXTBOX
1398
467
1567
512
Note that these switches are not mutually exclusive!
12
0.0
1

BUTTON
1405
225
1567
266
Reset iterations!
reset-ticks\ndelete_patches\nclear-output\nset_header
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1393
752
1571
785
Clear output window
clear-output\nset_header
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1405
185
1495
218
Step
step
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
435
85
585
145
density_thresh
2.0
1
0
Number

MONITOR
495
575
605
620
# dense patches
num_dense_patches
2
1
11

BUTTON
200
490
345
531
Clear survey patches
delete_patches
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
1400
525
1570
558
additive_iterations
additive_iterations
0
1
-1000

INPUTBOX
255
85
425
145
num_artifacts
500.0
1
0
Number

MONITOR
400
575
490
620
Actual density
mean_density
2
1
11

MONITOR
400
625
605
670
Calculated density (#/patch)
calculated_density
2
1
11

MONITOR
445
675
605
720
Density difference
density_dif
2
1
11

TEXTBOX
60
10
560
35
The Archaeological Sampling Experimental Laboratory
18
0.0
1

@#$#@#$#@
## WHAT IS IT?

The Archaeological Sampling Experimental Laboratory (tASEL) is an interactive tool for setting up and conducting experiments about sampling strategies for archaeological excavation, survey, and prospection.

## HOW IT WORKS

You first seed a simple "landscape" with a random, clustered, or a mixed distribution of "artifacts" (but these could be sites or anything else in practice). You then create a sampling frame with set of sampling patches either by randomly distributing them, uniformly laying out on a grid or transect, or by judgmentally placing them by clicking on the map. You can combine techniques for a "stratified" or "mixed" approach as well. Finally, the program will then count up the number of "artifacts" that were detected, calculate the sample positivity rate, sample density, and the statistically extrapolated estimate of the total number of "artifacts" that would be predicted from the sample (among other measures). A "good" sampling strategy for a given distribution of artifacts would predict an extrapolated count that closely matches the actual total number of artifacts that were seeded across the landscape.

The landscape consists of a 50 x 50 grid of survey patches (2500 total landscape patches). The simulated survey landscape is scale-free, so there is no specific spatial scale to the patches. It may, however, be useful to imagine the landscape at a familiar scale, such as a series of 1x1 meter grid squares, to help you visualize these results in a "real world" context.

## HOW TO USE IT

There are two ways to use this model: 1) "Manual" mode, or 2) "Iterative" mode. Manual mode is useful for simple experiental experimentation, teaching and learning, or when setting up a more complex set of experiments. You can get a quick inital sense of the comparative utility of different potential sampling frames for different types of artifact distributions. Iterative mode, on the other hand, allows the deployment of an iterative sampling experiment that can provide robust statistical quantification of the performance of different sampling frames with different artifact distributions. It can also help you to understand and quantify the expected error of any specific style of sampling with different types of artifact distributions. Workflows for both modes are explained here.

For either Manual or Iterative operation of the model, you must first click the *Start/Reset Experiment* button to set up a blank landscape before conducting any experimentation. Note that this button can also be used to clear all existing distributions, sampling frames, and results once you've started using the model.

### Manual Mode

All of the tools for Manual Mode appear to the left side of landscape window (i.e., the "world" display in NetLogo terminology).

For manual experimentation, you next set up the artifact distribution. The *num_artifacts* sets the total number of artifacts, and the *artifact_clustering* slider sets up the way they are distributed across the landscape. If *artifact_clustering* is set to 0, then a true Gaussian random distribution of artifacts is used. If set to 1 or higher, then artifacts are randomly distributed within neighborhoods around a set of cluster centers. The number of cluster centers is the same as the value set by *artifact_clustering* (i.e., *artifact_cluster* of 5 will make 5 clusters, etc.). The size and shape of the cluster neighborhoods are determined with the "cluster_x" and "cluster_y" sliders in number of cells per dimension. Use the *Setup Artifact Distribution* button to place the artifacts. You can change settings and click the button again to superimpose different distributions. This is useful, for example, to create mixed random background scatter with clusters of artifacts. You can click the *Clear artifact distribution* to erase any previous distributions. Note that for some values of *artifact_clustering*, the actual number of artifacts may be automatically adjusted to evenly divide artifacts across clusters. To display the actual count of seeded artifacts, you can at any time click the *Count Survey Patches/Artifacts* button. 

At this stage, you can choose to save out your artifact distribution so that you can load it in at another stage (e.g., in order to repeat your experiments again). To do so, go to the File menu in NetLogo, and choose *Export > Export World...*. Give a descriptive name for the output .csv file so that you will know what kind of distribution is in it. Note that this also exports the current state of any sliders or switches, so ensure that all of those are set to a neutral or otherwise desired position to avoid future mistakes. To reimport the distribution, go to the File menu and choose *Import > Import World...*, and choose the file you exported previously. 

Once the artifacts are distributed, you can optionally use the *hide some artifacts* button in conjunction with the *proportion_hid* slider to hid a portion of the artifacts from view. This would allow you to, for example,use the distribution of a small proportion of "surface" artifacts when planning a "shovel test" grid, which will then be used to prospect for buried artifacts as well. You could even choose to hide all artifacts, and then layout a grid with no a priori knowledge of artifact locations at all. It is, therefore, a useful tool for limiting the impact of bias when setting up your survey patches.

Next you will need to set up your survey patches. There are three tools that you can use for this, and they can be used separately or in any combination. As you add survey patches, they will turn blue on the map.

The *Select n random survey patches* tool works in conjunction with the *n* slider to randomly distribute some number of survey patches around the landscape. 

The *Setup a systematic grid of survey patches* button is used in conjunction with four other sliders to create an evenly distributed sampling grid with survey patches at the grid intersections. The value of *grid_x* is the number of patches between each survey patch in the x direction, and the value of "grid_y" is the number of patches between each survey patch in the y direction. The *x_offset* and *y_offset* sliders set the distance (in # of patches) of the lower left survey patch from the lower left corner of the landscape. It is important the values for x and y offsets be lower than the values for the grid x and y dimensions, respectively. These four sliders can be used together to position your survey grid very precisely.

The *Interactively select survey patches* button is used to interactively click on patches on the map to select them as survey patches. This can be used to create a "judgemental" sampling strategy, where you use your prior knowledge to choose the location of each sampling patch. This button is a "latching" button, so you must "unclick" it once you've finished your selection of judemental survey patches.

Once you have selected your patches, you can optionally click the *Count survey patches/artifact* button to quickly count the number of survey patches you've created. This is useful if you need to constrain the number of patches for your experiment (e.g., you are limited by time or budget to a set maximum number of survey patches). You can also use the *Reset survey patches* button to return all survey patches to a blank (blue) state. This is useful if you want to use the same survey sampling frame with a new artifact distribution. Alternatively, you can use the *Clear survey patches* to delete your current set of surve patches so that you can design a new one. This is useful if you've made a mistake, gone over your survey patch limit, or if you want to keep the same artifact distribution, but test different survey patch arrangements.

Once your artifact distribution and survey patches are set up, you can use the *Display Results!* button to quickly calculate a series of summary statistics and to change the color of the positive survey patches to green, and negative patches to red. There is one variable that you can set in this area, which is the *density_thresh* variable. The value you enter here will determine which survey patches are thought to be in a dense area of artifacts. If the count within a positive survey patch is greater than or equal to *density_thresh*, then the color of that patch will turn to cyan, and the total number of positive patches in "dense" areas will be counted.

### Iterative Mode

The additional tools for Iterative Mode are on the right side of landscape window. There are three buttons, one text entry box, and four switches. You must first create or load in an existing artifact distribution. You can create a new distribution as described in Manual Mode above, and you can save and reload an existing distribution with the Export World and Import World options in the File menu as described above. 

To run an experiment, use the Manual Mode sliders to parameterize a random or a systematic sampling frames as described in Manual Mode, and then use the switches to turn on various aspects of the iterative sampling procedure. The *iterate_random* switch will create a series of random sampling surveys with *n* survey patches. The *iterate_grid_size* switch will create a series of systematic grid-based sampling surveys where the x and y spacing of the sampling grid will vary randomly between 0 and the values set by *grid_x* and *grid_y*. The *iterate_grid_offset* switch will create a series of systematic grid-based sampling surveys where the offset from the lower left corner will randomly be chosen between 0 and the values set by *grid_x* and *grid_y*. Note that these three switches are *not* mutually exclusive! You can have all three enabled, and this will potentially produce very complex combinations of random and systemic grid-based sampling frames. This may produce undesired behavior, so it is important ot carefully check both the status of these three switches *and* the state of the sliders on the left side of the landscape window before proceeding.

A final switch, *additive_iterations* allows for new survey patches to be added to the array of previous survey patches at each tick. This is useful, for example, for determining the smallest number of survey patches that can provide a robust sampling result. For this to work, at least one of the other three switches (*iterate_random*, *iterate_grid_size*, or *iterate_grid_offset*) must be turned on. This option is most useful with the *iterate_random* switch, and *n* set to 1. When set up in this way, the simulation will start with one random survey patch, and then will iterative add one additional random survey patch at each tick until the number of ticks equals the value set in *iterations*.

At this point you can start to run your experiment. To manually step through a series of iterations, you can click the "Step" button as many or as few times as you would like. Each click of the *Step* button will advance the tick counter by one. The latest sampling frame and results will be shown in the landscape window and output areas, respectively. If you would like to quickly run through a set number of iterations, you can enter the total number of iterations desired into the *iterations* text entry box, and then click the *Iterate!* button. You will see the tick counter automatically advance, and the landscape window and output area will rapidly change with the various scenarios and results.

The output area at the bottom of the window will create a new line of statistics for each iteration of your experiment. When the experiment is complete, you can save this out either by right clicking on the output area and slecting *Export...* or by going to the File menu, and selecting *Export > Export output...*. 

To quickly proceed with a new sampling experiment while keeping the current artifact distribution loaded in, you can click the *Reset Iterations!* button. Note that this will clear the output area, so be sure that you have saved out that data if you wish to keep a record of your previous experimental results. If you would like to start completely fresh, you can use the *Start/Reset Experiment* button on the left side of the window, which will also blank out the artifact distribution.

### Summary statistics

Summary statistics are shown on the bottom left side in labeled output boxes, and formatted as comma-delimited text in the bottom text output window. They include (note that some of these are only inlcluded in the formatted text output window):

- The sample size (% of the total landscape that was surveyed)
- The total number of survey patches
- The number of survey patches that contained some artifacts (positive patches)
- The number of survey patches that had no artifacts (negative patches)
- The number of survey patches with a number of artifacts above the density threshold
- The positivity rate (% of survey patches with artifacts in them)
- The raw count of discovered artifacts (artifacts that fell inside a survey patch)
- The percentage of the total number of artifacts that were discovered 
- The extrapolated estimate of the total number of artifacts based on the sampling proportion and the number of artifacts discovered in the survey patches.
- The differnce between the extrapolated count and the actual count of artifacts
- The calculated density of artifacts in the sampled patches (mean number of artifacts per patch)
- The calculated standard deciation of the density of artifacts in the sampled patches
- The actual mean density of artifacts in the landscape (mean number of artifacts per patch)
- The actual standard deviation of artifact density in the landscape
- The difference between the calculated density in the sampled patches and the real density of artifacts in the total landscape
- The grid x interval (# of patches)
- The grid y interval (# of patches)
- The grid x offset (# of patches)
- The grid y offset (# of patches)

The count of survey patches and total number of artifacts are also updated if you have not yet used the "Count survey patches/artfiacts" button.

The extrapolated count is calculated as the number of artifacts discovered in the current sampling frame divided by the sample size (percent of landscape covered). If this number is close to the actual number of seeded artifacts (*num_artifacts*), then it can be concluded that the sampling strategy is effective. The "Count difference" output window shows you this comparison, and similarly, the "Density difference" output window shows you the difference between the calcualted artifact density in the sampling frame versus the true density of artifacts in the total landscape.

Finally, note that there is an output text window at the very bottom of the screen that will keep a running tally of all the results that are calculated each time you click the "Display Results!" button, the "Step" button, or the "Iterate" button. If you are using the model for statistical analysis or comparison, this formatted text area will help you export all of the salient information you will need. The text in this window is formatted as comma-delimited columns with a header row of column labels. This means that it can be directly imported (or copied and pasted) into a standard spreadsheet or other statistical analysis software. You can quickly save out the entire contents of the output window either by right clicking on the output area and slecting *Export...* or by going to the File menu, and selecting *Export > Export output...*. By default, the text export will be saved with a ".txt" file suffix, but you can change this to ".csv" for simpler import into your favorite spreadsheet program. At any point, you can clear and reset the output window by clicking the *Clear output window* button that appears just to the left of the output window.


## THINGS TO TRY

Set up an artifact distribution, and then using the "Reset survey patches" button to iteratively test the effectiveness of several different types of sampling strategies on that same artifact distribution. Note also, that if you use a random sampling strategy, the placement of the actual sampling patches would be different each time you reset it.

Try iteratively increasing the number of survey patches, and note how the extrapolated prediction changes. Is it possible to "under sample" and get a prediction that is too small? Is it possible to "oversample" and get a prediction that is too large? Are you ever able to predict the exact number of artifacts? How big is the window of sample sizes where predicted results are reasonably accurate? 

Try combining survey sampling strategies. You can, for example, create a "stratified random" sampling strategy by combining an overall random distribution with some interactive (but randomly chosen) "clicked" sampling patches in a specific part of th map.

You can set up a survey sampling frame, and then use the "Reset artifact distribution!" button to cycle through a series of different artifact distributions. This can test the effectiveness of a single sampling frame on multiple types of artifact distributions.

Try increasing the artifact cluster size. As it gets larger and larger, the distribution of seed artifacts approaches a uniform distribution.

Experiment with the artifact cluster number and dimensions set by "cluster_x" and "cluster_y". By carefully superimposing different types and sizes of artifact clusters, you can create very realistic "palimpsests" of activity areas, occupational phases, or regional site histories. You can also superimpose a sparse "background scatter' of artifacts by setting "num_artifacts" to a small number, and choosing 0 clusters for a random distribution.

You can create continuous linear survey "transects" in the x or y direction by setting one of "grid_x" or "grid_y" to 1. You would want to set the cooresponding "offset" slider to 0 (e.g., if you set "grid_x" to 1, then also set "x_offset" to 0) if you wanted your transects to cross the entire length or breadth of the landscape. The transect spacing and locations would then be controled by the value you set in the other grid dimension and offset.

## EXTENDING THE MODEL

The gridded sampling frame is only available as a rectangular grid oriented orthogonally to the landscape grid. It would be useful to add the functionality for the sampling grid to be rotated obliquely to the landscape grid, and for the ability to design triangular or hexagonal grids. In the same way, artifact clusters can only be oriented in the x and y directions. It would be useful to allow them to be rotated as well.


## RELATED MODELS

The DIDI and DICI models (www.DigItTools.net) are also NetLogo models developed for survey experiments. This model is much simpler, and is aimed more at education than true statistical analysis of real survey strategies.

## CREDITS AND REFERENCES

This model was created by Isaac I.T. Ullah, PhD, 2022, at San Diego State University. It is intended for educational purposes only, and comes with no warantee or guarantee of accuracy. The model derives from an analog sampling experiment lab created as part of ANTH 302 "Principles of Archaeology," and is used in a presention I have given at the 2022 Society for American Archaeology meetings in Chicago. It is available under the GNU public license, and is published on the web at http://isaacullah.github.io/models/Sampling_Experiment.html. Please cite the author if you use this model in any publication.
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

projectile point
false
0
Polygon -7500403 true true 150 15 30 240 270 240
Polygon -7500403 true true 150 180 60 285 150 270 240 285

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.1.1
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
1
@#$#@#$#@
