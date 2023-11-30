#The Main Theme of this code is to install MODIS Raster.........................
#Code for Installing MODIStsp Package
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
         password        = "Zalongwa06",
         start_date      = "2020.01.01", 
         end_date        = "2020.12.31", 
         verbose         = FALSE,
         spatmeth        = "file",
         spafile         = spatial_filepath,
         out_format      = "GTiff")


