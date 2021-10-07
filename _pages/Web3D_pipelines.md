---
title: Pipelines for creating and sharing 3D heritage data
excerpt: Based on a presentation for Web3D 2021
tags: [digital, Archaeology]
header:
    overlay_color: "#333"
permalink: /Web3D_pipelines/
---

## McKinney House Livox Avia LiDAR Scan Data

### 3D model data hosted on Github and served via the model-viewer script.

Please wiat for the model to load (may take a minute or more)
<!-- Import the model viewer script -->
<script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>

<model-viewer src="/mckinney_livox_avia/scene.gltf" alt="A 3D model of Braki Cloth Store" ar ar-modes="webxr scene-viewer quick-look" environment-image="neutral" auto-rotate camera-controls></model-viewer>

<style>
  model-viewer#interaction {
    --poster-color: transparent;
  }
</style>
<!-- use unique asset to ensure preloading -->
<model-viewer id="interaction" camera-controls loading="eager" reveal="interaction" poster="/mckinney_livox_avia/McKinney_lidar.png" src="/mckinney_livox_avia/scene.gltf" alt="A 3D model of the McKinney House in La Mesa"></model-viewer>

### 3D model data hosted and served via Sketchfab.

<div class="sketchfab-embed-wrapper"> <iframe title="McKinney House - Livox Avia pointcloud" frameborder="0" allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true" allow="autoplay; fullscreen; xr-spatial-tracking" xr-spatial-tracking execution-while-out-of-viewport execution-while-not-rendered web-share src="https://sketchfab.com/models/b8740a7e91804fc2a81804a9d12dda7b/embed"> </iframe> <p style="font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;"> <a href="https://sketchfab.com/3d-models/mckinney-house-livox-avia-pointcloud-b8740a7e91804fc2a81804a9d12dda7b?utm_medium=embed&utm_campaign=share-popup&utm_content=b8740a7e91804fc2a81804a9d12dda7b" target="_blank" style="font-weight: bold; color: #1CAAD9;"> McKinney House - Livox Avia pointcloud </a> by <a href="https://sketchfab.com/isaaciullah?utm_medium=embed&utm_campaign=share-popup&utm_content=b8740a7e91804fc2a81804a9d12dda7b" target="_blank" style="font-weight: bold; color: #1CAAD9;"> isaaciullah </a> on <a href="https://sketchfab.com?utm_medium=embed&utm_campaign=share-popup&utm_content=b8740a7e91804fc2a81804a9d12dda7b" target="_blank" style="font-weight: bold; color: #1CAAD9;">Sketchfab</a></p></div>

## Next Section

TBD
