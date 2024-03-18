# Tanzania Modis Classification Map
This Repository Aims TO show Classfication Map Of Tanzania 2020,The Software Used Were R-Programming/R-studio and QGIS,R-studio through MODIStsp Package Was used to Extract MODIS Data and QGIS Was used for Visualizing and Final Touches as shown Below(The Code and Final output which was created in Qgis)

```r
install.packages("MODIStsp")
MODIStsp_get_prodlayers("MCD12Q1")
# remotes::install_github("wmgeolab/rgeoboundaries")
# install.packages("sf")
library(rgeoboundaries)
library(sf)
# Downloading the country boundary of Tanzania
map_boundary <- geoboundaries("Tanzania")
# Defining filepath to save downloaded spatial file
spatial_filepath <- "c:/Users/.../.../TZ/Tanzania.shp"
# Saving downloaded spatial file on to our computer
st_write(map_boundary, paste0(spatial_filepath))

#Downloading Modis
MODIStsp(gui             = FALSE,
         out_folder      = "c:/Users/.../.../TZ",
         out_folder_mod  = "c:/Users/.../.../TZ",
         selprod         = "LandCover_Type_Yearly_500m (MCD12Q1)",
         bandsel         = "LC1", 
         user            = "heed" ,
         password        = "*******",
         start_date      = "2020.01.01", 
         end_date        = "2020.12.31", 
         verbose         = FALSE,
         spatmeth        = "file",
         spafile         = spatial_filepath,
         out_format      = "GTiff")
```


![Tanzania Landcover Classfication for year 2020](https://github.com/Heed725/Tanzania---Modis-Classification-Map/assets/86722789/56c3063a-e6b1-473f-a4e8-e848dd41fd0b)

# Extra notes for Visualization
You can download the codes and modify to you're area of interest(Another country),To use them you must have an account from Nasa Earth                    (https://urs.earthdata.nasa.gov/) In which to use this code would require youre username and password Then you can continue ,For QGIS ive made a styling qml which you could use for styling your map as shown above

# Graph preparation
Also i've used QGIS Through Data Plotly plugin to prepare to graph to show percentage of different classes found in Land-Cover classfication from MODIS as shown below

![Tanzania Landcover Classfication for year 2020(Bar Graph)](https://github.com/Heed725/Tanzania---Modis-Classification-Map/assets/86722789/5dfcc459-d212-42ff-821f-734c5dc36178)

# Credit
Again Extreme credit to:https://rspatialdata.github.io/land_cover.html
