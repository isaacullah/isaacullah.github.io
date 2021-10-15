---
title: Accessible pipelines for creating and sharing 3D heritage data
excerpt: Based on a presentation for the Web3D 2021 conference
tags: [digital, Archaeology]
header:
    overlay_color: "#333"
permalink: /Web3D_pipelines/
---

<!-- Import the model viewer script and set viewport size -->
<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
<style>
model-viewer {
  width: 800px;
  height: 600px;
}
</style>

These are 3D models created for the paper "Preserving the Past for an Uncertain Future: Accessible, Low-Cost Methods for 3-D Data Creation, Processing, and Dissemination in Digital Cultural Heritage Preservation." Presented at the 2021 Web3D conference special track ["Online Legacies And Cultural Heritage"](https://web3d.siggraph.org/call-for-papers/online-legacies-and-cultural-heritage/).

## Accessible pipelines for embedding interactive Web3D viewers for 3D heritage data

Sharing access to to community-derived and/or open 3D heritage scan data is a major hurdle for completing a total accessible pipeline for 3D heritage data creation, analysis, and dissemination. Although specialized archives do exist for these kinds of data, such as [Open Heritage 3D](https://openheritage3d.org/), there remains some institutional gatekeeping that might serve to reduce the number of stakeholders that feel like they can participate. On the other extreme, large, corporate-owned "freemium" repositories, such as [Sketchfab](https://sketchfab.com/) are clearly seen as more welcoming to amateur and "citizen scientist" practitioners; but, these platforms are so large that data can be hard to find or organize, and their corporate nature means that their long-term stability and openness are not guaranteed. 

Here, we showcase two accessible means of embedding interactive Web3D viewers in websites that can help to alleviate both of the above issues: individual hosting means that there is a minimum of gatekeeping, while still keeping thematic organization tractable. We envision that a variety of stakeholder groups could leverage these simple techniques to create community-based and community-curated web archives of locally generated 3D heritage data. The first pipeline uses [Github](www.github.com) to host the 3D data files, and the simple javascript-based [`<model-viewer>`](https://modelviewer.dev/) tool to create the interactive viewer in the website. This pipeline is the most "open," and we think is therefore the most amenable as a long-term solution, but is fairly "technical," which may reduce it's overall accessibility. The second pipeline is much easier to implement, but relies on [Sketchfab](https://sketchfab.com/) to host the data, and uses their easy-to-generate embed codes to create the interactive viewer.

### Accessibility notes

We take "accessible" to mean "widely usable," in a general sense. We are sensitive to the ethos of the [Open Science Movement](https://opensource.com/resources/open-science), and so preference open sharing with permissive licensing wherever possible. We are are also in favor of [Free and open Source Software](https://opensource.com/resources/what-open-source) wherever possible. However, we also recognize that doing everything the correctly "open" way can be very difficult for novice or unexperienced practitioners who may not have any sort of institutional backing or much technical training. We therefore err on the side of pragmatism to include _both_ "open" tools and tools that are not necessarily "open," but which are low-cost and/or easy to use.

### Data notes

Three accessible data-creation pipelines were used to create three different 3D models (more detail is in the main paper), which are visualized below. The raw data used in these visualizations are archived in the Open Science Framework repository, including Web3D-friendly ".glTF" versions. To access these data please access [this OSF repository referencing DOI: DOI 10.17605/OSF.IO/8GKHT](https://osf.io/8gkht/).

The Sketchfab models can also be viewed [directly on Sketchfab](https://sketchfab.com/isaaciullah).

Please wait for the interactive model-viewer frames to load (it may take a minute or more, depending on your connection speed).

## McKinney House [Livox Avia](https://www.livoxtech.com/avia) LiDAR Scanning Pipeline

Note: The Livox Avia scan data has been subsampled to 50% of the original points in order to facilitate faster loading of the Web3D viewer.

### Model-viewer embedded interactive viewer


<model-viewer src="/images/McKinney_Livox_Avia_gltf/scene.gltf" loading="eager" ar ar-modes="webxr scene-viewer quick-look" camera-controls environment-image="neutral" shadow-intensity="1" alt="A 3D model of the McKinney House in La Mesa">

    <div class="progress-bar hide" slot="progress-bar">
        <div class="update-bar"></div>
    </div>
</model-viewer>

### Sketchfab embedded interactive viewer

<div class="sketchfab-embed-wrapper"> <iframe title="McKinney Livox Avai -- 50 pcnt subsample" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share width="800" height="600" src="https://sketchfab.com/models/f33d0b40ca6f4855a485a2d16289c221/embed"> </iframe> <p style="font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;"> <a href="https://sketchfab.com/3d-models/mckinney-livox-avai-50-pcnt-subsample-f33d0b40ca6f4855a485a2d16289c221?utm_medium=embed&utm_campaign=share-popup&utm_content=f33d0b40ca6f4855a485a2d16289c221" target="_blank" style="font-weight: bold; color: #1CAAD9;"> McKinney Livox Avai -- 50 pcnt subsample </a> by <a href="https://sketchfab.com/isaaciullah?utm_medium=embed&utm_campaign=share-popup&utm_content=f33d0b40ca6f4855a485a2d16289c221" target="_blank" style="font-weight: bold; color: #1CAAD9;"> isaaciullah </a> on <a href="https://sketchfab.com?utm_medium=embed&utm_campaign=share-popup&utm_content=f33d0b40ca6f4855a485a2d16289c221" target="_blank" style="font-weight: bold; color: #1CAAD9;">Sketchfab</a></p></div>

## McKinney House Interchangeable Lens Camera and [WebODM](https://www.opendronemap.org/webodm/) Photogrammetry Scanning Pipeline

### Model-viewer embedded interactive viewer

<model-viewer src="/images/McKinney_WebODM_ILC_gltf/scene.gltf" loading="eager" ar ar-modes="webxr scene-viewer quick-look" camera-controls environment-image="neutral" shadow-intensity="1" alt="A 3D model of the McKinney House in La Mesa">

    <div class="progress-bar hide" slot="progress-bar">
        <div class="update-bar"></div>
    </div>
</model-viewer>

### Sketchfab embedded interactive viewer

<div class="sketchfab-embed-wrapper"> <iframe title="McKinney House pointcloud - WebODM using an ILC" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share width="800" height="600" src="https://sketchfab.com/models/52f99461b8ac43ef9bec3dd63cbb2794/embed"> </iframe> <p style="font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;"> <a href="https://sketchfab.com/3d-models/mckinney-house-pointcloud-webodm-using-an-ilc-52f99461b8ac43ef9bec3dd63cbb2794?utm_medium=embed&utm_campaign=share-popup&utm_content=52f99461b8ac43ef9bec3dd63cbb2794" target="_blank" style="font-weight: bold; color: #1CAAD9;"> McKinney House pointcloud - WebODM using an ILC </a> by <a href="https://sketchfab.com/isaaciullah?utm_medium=embed&utm_campaign=share-popup&utm_content=52f99461b8ac43ef9bec3dd63cbb2794" target="_blank" style="font-weight: bold; color: #1CAAD9;"> isaaciullah </a> on <a href="https://sketchfab.com?utm_medium=embed&utm_campaign=share-popup&utm_content=52f99461b8ac43ef9bec3dd63cbb2794" target="_blank" style="font-weight: bold; color: #1CAAD9;">Sketchfab</a></p></div>


## McKinney House iPhone and [Trnio App](https://www.trnio.com/) Scanning Pipeline

### Model-viewer embedded interactive viewer

<model-viewer src="/images/McKinney_Trnio_gltf/scene.gltf" loading="eager" ar ar-modes="webxr scene-viewer quick-look" camera-controls environment-image="neutral" shadow-intensity="1" alt="A 3D model of the McKinney House in La Mesa">

    <div class="progress-bar hide" slot="progress-bar">
        <div class="update-bar"></div>
    </div>
</model-viewer>

### Sketchfab embedded interactive viewer

<div class="sketchfab-embed-wrapper"> <iframe title="McKinney House pointcloud - Trnio and iPhone" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share width="800" height="600" src="https://sketchfab.com/models/09f0a75db0ff454ab6f27f7922a15b7b/embed"> </iframe> <p style="font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;"> <a href="https://sketchfab.com/3d-models/mckinney-house-pointcloud-trnio-and-iphone-09f0a75db0ff454ab6f27f7922a15b7b?utm_medium=embed&utm_campaign=share-popup&utm_content=09f0a75db0ff454ab6f27f7922a15b7b" target="_blank" style="font-weight: bold; color: #1CAAD9;"> McKinney House pointcloud - Trnio and iPhone </a> by <a href="https://sketchfab.com/isaaciullah?utm_medium=embed&utm_campaign=share-popup&utm_content=09f0a75db0ff454ab6f27f7922a15b7b" target="_blank" style="font-weight: bold; color: #1CAAD9;"> isaaciullah </a> on <a href="https://sketchfab.com?utm_medium=embed&utm_campaign=share-popup&utm_content=09f0a75db0ff454ab6f27f7922a15b7b" target="_blank" style="font-weight: bold; color: #1CAAD9;">Sketchfab</a></p></div>

