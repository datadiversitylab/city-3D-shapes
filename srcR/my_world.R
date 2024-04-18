hello_world <- function() {
  cat("This is the R world we live in...")
}

hello_world()

# Include the libraries that are needed to be installed
libs <- c(
  "tidyverse", "sf", "geodata",
  "terra", "classInt", "rayshader", "dplyr", "utils", 
  "stars", "raster", "giscoR", "tidyterra", "plotly", "gridExtra", "e1071", 
  "diptest", "xtable"
)

installed_libs <- libs %in% rownames(
  installed.packages()
)

if (any(installed_libs == F)) {
  install.packages(
    libs[!installed_libs]
  )
}

invisible(lapply(
  libs,
  library,
  character.only = T
))

# Define file name and folder path
file_name <- "ne_10m_urban_areas_landscan.shp"
folder_path <- "../data/07_cities_shapefile"

# Check if the folder exists, if not, create it
if (!file.exists(folder_path)) {
  print('data/07_cities_shapefile : directory is created')
  dir.create(folder_path)
} else {
  print('Directory already exist')
}

# Check if the file exists in the folder
if (!file.exists(file.path(folder_path, file_name))) {
  print('hi')
  # If not, download the zip file
  url <- "https://stacks.stanford.edu/file/druid:yk247bg4748/data_EPSG_4326.zip"
  download.file(url, destfile = file.path(folder_path, "data_EPSG_4326.zip"))
  
  # Set a timeout of 10 seconds before unzipping
  Sys.sleep(10)
  
  # Unzip the file
  unzip(zipfile = file.path(folder_path, "data_EPSG_4326.zip"), exdir = folder_path)
} else {
  print('data_EPSG_4326.zip : file already exist')
}


