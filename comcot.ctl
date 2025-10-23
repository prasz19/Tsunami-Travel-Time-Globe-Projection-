#################################################
#                                               #
# Control file for COMCOT program (v1.7)        #
#                                               #
#################################################
#--+-----1----+----2----+----3----+----4----+----5----+----6----+----7----+----8
#===============================================:===============================
# General Parameters for Simulation             : Value Field                  |
#===============================================:===============================
#Job Description: NZ30sec bathymetry, Spherical Coordinates for code testing
 Total Simulated Duration (Wall clock, seconds) : 259200.000      
 Time interval to Save Data    ( unit: sec )    : 3600.0        
 Zmax & Gauge Output  (0-ZMax Z;1-Gauge;2-Both) :     0          
 Start Type (0-Cold start; 1-Hot start)         :     0          
 Resuming Time for Hot Start          (Seconds) :     0.00       
 Minimum WaterDepth offshore           (meters) :     0.00, 0.1       
 Initial Cond. (0:FLT,1:File,2:WM,3:LS,4:FLT+LS):     0 
 Specify BC  (0-Open;1-Sponge;2-Wall;3-FACTS)   :     1, 0
 Specify Input Z filename (for BC=3, FACTS)     : 23926h.asc
 Specify Input U filename (for BC=3, FACTS)     : 23926u.asc
 Specify Input V filename (for BC=3, FACTS)     : 23926v.asc
 
#===============================================:===============================
# Parameters for Fault Model (Segment 01)       :Values                        |
#===============================================:===============================
 No. of FLT Planes (With fault_multi.ctl if >1) :       1        
 Fault Rupture Time (seconds)                   :       0.0      
 Faulting Option (0: Model; 1- Data;)           :       0        
 Focal Depth                            (meters):   20000.00    
 Length of Fault Plane                  (meters):  339671.00    
 Width of Fault Plane                   (meters):   117128.00    
 Dislocation of Fault Plane             (meters):      11.57     
 Strike Angle (theta)                  (degrees):     284.00    
 Dip  Angle (delta)                    (degrees):      9.00    
 Slip/Rake Angle (lamda)               (degrees):      87.00    
 Origin of Numerical Domain: Latitude  (degrees):     -86.5      
 Origin of Numerical Domain: Longitude (degrees):     4.0     
 Epicenter Location: Latitude          (degrees):      -9.284   
 Epicenter Location: Longitude         (degrees):     107.419
 File Name of Deformation Data                  : ini_deformation.dat
 Data Format Option (0-COMCOT; 1-MOST; 2-XYZ)   :     0
 
#===============================================:===============================
#  Parameters for Wave Maker                    :Values                        |
#===============================================:===============================
 Wave type  ( 1:Solit, 2:given, 3:focusing )    :     1
 FileName of Customized Input (for Type=2)      : fse.dat
 Incident direction( 1:top,2:bt,3:lf,4:rt,5:ob ):     3
 Characteristic Wave Amplitude        (meter)   :     0.500
 Typical Water depth                  (meter)   :  2000.000 
 
#===============================================:===============================
#  Parameters for Submarine LS/Transient Motion :ValUes                        |
#===============================================:===============================
 X Coord. of Left/West Edge of Landlide Area    :  177.00
 X Coord. of Right/East Edge of Landlide Area   :  179.00
 Y Coord. of Bottom/South Edge of Landlide Area :  -41.00
 Y Coord. of Top/North Edge of Landlide Area    :  -39.00
 File Name of landslide Data                    : landslide_test.dat
 Data Format Option (0-Old; 1-XYT; 2-Function)  :     2
 
#===============================================:==============================
# Configurations for all grids                  :Values                        |
#===============================================:===============================
# Parameters for 1st-level grid -- layer 01     :Values                        |
#===============================================:==============================
 Run This Layer ?       (0:Yes,       1:No     ):       0        
 Coordinate System    (0:spherical, 1:cartesian):       0        
 Governing Equations  (0:linear,    1:nonlinear):       1        
 Grid Size  (dx, sph:minute, cart:meter)        :      25.0      
 Time step                            ( second ):      25.0      
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :       1        
 Manning's Roughness Coef. (For fric.option=0)  :      0.011    
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):       2        
 X_start                                        :     5.0     
 X_end                                          :     179.0    
 Y_Start                                        :     -86.0      
 Y_end                                          :      86.0    
 File Name of Bathymetry Data                   :    etopo_world.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3
 Grid Identification Number                     :    01
 Grid Level                                     :     1
 Parent Grid's ID Number                        :     0

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 02    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     2
 GridSize Ratio of Parent layer to current layer:     2
 X_start                                        :    102.60
 X_end                                          :    106.65
 Y_Start                                        :     -8.65
 Y_end                                          :     -5.25
 FileName of Water depth data                   : sunda.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3
 Grid Identification Number                     :    02
 Grid Level                                     :     2
 Parent Grid's ID Number                        :     1

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 03    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     2
 GridSize Ratio of Parent layer to current layer:     2
 X_start                                        :    103.35
 X_end                                          :    106.42
 Y_Start                                        :     -8.1
 Y_end                                          :     -5.7
 FileName of Water depth data                   : sunda.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    03
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 04    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     2
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :    104.20
 X_end                                          :    106.20
 Y_Start                                        :     -7.74
 Y_end                                          :     -6.00
 FileName of Water depth data                   :  sunda.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    04
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    01 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 05    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     0
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     1
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     0
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :    104.70
 X_end                                          :    105.90
 Y_Start                                        :     -7.30
 Y_end                                          :     -6.30
 FileName of Water depth data                   :  sunda.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :     5
 Grid Level                                     :     5
 Parent Grid's ID Number                        :    04 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 06    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     2
 Manning's Roughness Coef. (For fric.option=0)  :     0.025
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     0
 GridSize Ratio of Parent layer to current layer:     3
 X_start                                        :    105.36000000
 X_end                                          :    105.65000000
 Y_Start                                        :     -6.87750000
 Y_end                                          :     -6.64187586
 FileName of Water depth data                   :  sumur.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :     6
 Grid Level                                     :     6
 Parent Grid's ID Number                        :    05
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 07    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     16
 X_start                                        :   120.4562042092812
 X_end                                          :   120.9175729323763
 Y_start                                        :    24.15490301533408
 Y_end                                          :    24.80244805853942
 FileName of Water depth data                   :  4_4.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    07
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 

#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 08    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     16
 X_start                                        :   120.808842317314
 X_end                                          :   121.3231069967601
 Y_start                                        :    24.69987279481362
 Y_end                                          :    25.19808824930069
 FileName of Water depth data                   :  4_5.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    08
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 09    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     16
 X_start                                        :   121.2320085958588
 X_end                                          :   122.0460161131184
 Y_start                                        :    24.96080357036498
 Y_end                                          :    25.3508512831777
 FileName of Water depth data                   :  4_6.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    09
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 10    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     16
 X_start                                        :   121.7227643425554
 X_end                                          :   122.0489548154786
 Y_start                                        :    24.22894457248688
 Y_end                                          :    25.0404101584892
 FileName of Water depth data                   :  4_7.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    10
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 11    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     16
 X_start                                        :   121.3906957787801
 X_end                                          :   121.8079853387364
 Y_start                                        :    23.41747516260113
 Y_end                                          :    24.38422152963531
 FileName of Water depth data                   :  4_8.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    11
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02 
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 12    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     16
 X_start                                        :   121.1203399645682
 X_end                                          :   121.4906102867619
 Y_start                                        :    22.74369554382476
 Y_end                                          :    23.51418785598371
 FileName of Water depth data                   :  4_9.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    12
 Grid Level                                     :     3
 Parent Grid's ID Number                        :    02
 
#===============================================:=============================== 
#  Parameters for Sub-level grid -- layer 13    :Values                        |
#===============================================:===============================
 Run This Layer ?       (0:Yes,       1:No     ):     1
 Coordinate           (0:spherical, 1:cartesian):     0
 Governing Eqn.       (0:linear,    1:nonlinear):     1
 Bottom Friction Switch? (0:Yes,1:No,2:var. n ) :     0
 Manning's Roughness Coef. (For fric.option=0)  :     0.013
 Layer Ouput Option? (0:Z+Hu+Hv;1:Z Only;2:NONE):     1
 GridSize Ratio of Parent layer to current layer:     4
 X_start                                        :   120.808842317314
 X_end                                          :   121.2084996631093
 Y_start                                        :    22.14603554034114
 Y_end                                          :    22.78475484366331
 FileName of Water depth data                   :  4_10.xyz
 Data Format Option (0-OLD;1-MOST;2-XYZ;3-ETOPO):     3 
 Grid Identification Number                     :    13
 Grid Level                                     :     4
 Parent Grid's ID Number                        :    03 
 
 
