# Tsunami-Travel-Time-Globe-Projection-
This project simulates tsunami travel time (TTT) from a hypothetical Mw 8.8 megathrust earthquake along the Java subduction zone, using seismic parameters from PUSGEN. The COMCOT model applies nonlinear shallow water equations with a modified leap-frog scheme for accurate wave propagation.

This project presents a tsunami travel time (TTT) simulation for a hypothetical maximum-magnitude (Mw 8.8) megathrust earthquake occurring along the Java subduction zone. The earthquake scenario is based on seismic source parameters provided by PUSGEN (Pusat Studi Gempa Nasional) in bahasa.
The tsunami simulation is conducted using the COMCOT model (Cornell Multi-grid Coupled Tsunami Model), developed by Wang and Liu. The model solves the nonlinear shallow water equations (SWE) in spherical coordinates using a modified leap-frog finite difference scheme. This method allows for efficient and accurate simulation of tsunami wave propagation across ocean basins.

Requirements
To run the visualization and plotting scripts, the following Python packages are required:
    • numpy
    • matplotlib
    • cartopy

Required Simulation Output Files
The following output files from the COMCOT simulation must be present in the working directory for visualization:
    • ttt_layerAA.dat – Tsunami travel time grid
    • layerAA.dat – Elevation Grid
    • layerAA_x.dat – Longitude
    • layerAA_y.dat – Latitude
