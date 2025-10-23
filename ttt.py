# -----------------------------------------------------------------------------
# Project: Tsunami Travel Time (Globe Projection)
# File: ttt.py
# Author: achmad.budi@bmkg.go.id
# License : MIT License
# Copyright (c) 2025 prasz19
# -----------------------------------------------------------------------------

import os
import numpy as np
import matplotlib.pyplot as plt
import cartopy.crs as ccrs
import cartopy.feature as cfeature
from matplotlib.colors import LightSource, ListedColormap
from get_comcot_info import get_comcot_info  # Make sure this function

# Load simulation settings
total_run_time, output_dt, dt, layer_onoff = get_comcot_info()
end_step = int(total_run_time / dt)
time_step = int(output_dt / dt)
savefolder1 = '04_Arrival_time'

# Create save directory if it doesn't exist
if not os.path.exists(savefolder1):
    os.makedirs(savefolder1)

for jj in range(len(layer_onoff)):
    if layer_onoff[jj] == 1:
        layer_id = f'{jj+1:02d}'

        # Load data
        xx = np.loadtxt(f'layer{layer_id}_x.dat')
        yy = np.loadtxt(f'layer{layer_id}_y.dat')
        hh = np.loadtxt(f'layer{layer_id}.dat')

        xx = np.unique(xx)
        yy = np.unique(yy)
        nx = len(xx)
        ny = len(yy)
        hh = hh.reshape((ny, nx))  # Reshape to 2D grid

        topo = -hh  # Elevation (positive upward)
        water_mask = topo < 0 # Define ocean

        # Read arrival time
        arrival_name = f'ttt_layer{layer_id}.dat'
        with open(arrival_name, 'r') as fid3:
            arrival = np.fromfile(fid3, dtype=np.float64, sep=' ')
        arrival = arrival.reshape((ny, nx))
        arrival = arrival / 3600.0

        # Mask invalid values
        arrival[hh < 0] = np.nan
        arrival[arrival <= 0] = np.nan

        # Create meshgrid of lon/lat
        Lon, Lat = np.meshgrid(xx, yy)

        # Compute hillshade
        ls = LightSource(azdeg=315, altdeg=45)
        dx = np.mean(np.diff(xx))
        dy = np.mean(np.diff(yy))
        hs = ls.hillshade(topo, vert_exag=1, dx=dx, dy=dy)

        # Set hillshade to white where water_mask is True (optional)
        hs_masked = np.ma.masked_where(topo < 0, hs)

        # Plotting with globe projection
        fig = plt.figure(figsize=(10, 8))
        ax = plt.axes(projection=ccrs.Orthographic(central_longitude=96, central_latitude=0))
        ax.set_global()
        ax.coastlines(resolution='110m')
        ax.add_feature(cfeature.BORDERS, linestyle=':')
        gl = ax.gridlines(draw_labels=True,
                          xlocs=range(-180, 181, 60),
                          ylocs=range(-90, 91, 20),
                          linestyle='-',
                          color='black',
                          linewidth=0.2)
        gl.top_labels = True
        gl.right_labels = True
        gl.xlabel_style = {'size': 10, 'color': 'black'}
        gl.ylabel_style = {'size': 10, 'color': 'black'}

        # Plot hillshade
        pcm_hs = ax.pcolormesh(Lon, Lat, hs_masked, cmap='binary', shading='auto',
                               transform=ccrs.PlateCarree())

        # Add blue water mask
        blue_ocean = np.zeros_like(topo)
        blue_ocean[water_mask] = 1  # Mark water with 1
        custom_cmap = ListedColormap(['none', 'blue'])  # Transparent for land, blue for water
        ax.pcolormesh(Lon, Lat, blue_ocean, cmap=custom_cmap, shading='auto',
                      transform=ccrs.PlateCarree(), alpha=0.5)

        # Plot arrival time
        pcm_arrival = ax.pcolormesh(Lon, Lat, arrival, cmap='terrain_r', shading='auto',
                                    transform=ccrs.PlateCarree())
        cbar = plt.colorbar(pcm_arrival, ax=ax, orientation='horizontal', pad=0.05)
        cbar.set_label('Tsunami Travel Time (hours)')

        # Contour lines for arrival time (5 Hours)
        contour_levels = np.arange(5, 30, 5)
        contours = ax.contour(Lon, Lat, arrival, levels=contour_levels, colors='k', linewidths=0.5,
                              transform=ccrs.PlateCarree())
        labels = ax.clabel(contours, inline=True, fontsize=8, fmt='%1.0f hours', colors='gray') 
        for label in labels:
            label.set_fontstyle('italic')

        # Contour lines for arrival time (1 Hour)
        contour_levels = np.arange(0, total_run_time / 3600 + 1, 1)
        ax.contour(Lon, Lat, arrival, levels=contour_levels, colors='b', linewidths=0.2,
                   linestyles='dashed', transform=ccrs.PlateCarree())

        # Plot the epicenter
        epicenter_lon = 107.419
        epicenter_lat = -9.284
        ax.plot(epicenter_lon, epicenter_lat,
                marker='*', color='orange', markersize=10,
                markeredgecolor='black', markeredgewidth=1.0,
                transform=ccrs.PlateCarree(), zorder=5)

        # Add credit label
        ax.text(89, 2, 'Handcrafted by Puaichi',
                transform=ccrs.PlateCarree(),
                ha='right', va='bottom',
                fontsize=8, color='navy', fontweight='bold')

        # Save figure
        filename = f'ttt_java_terrain.png'
        filepath = os.path.join(savefolder1, filename)
        plt.savefig(filepath, dpi=300, bbox_inches='tight')
        plt.close()
