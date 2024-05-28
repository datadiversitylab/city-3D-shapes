# An analysis of the 3D shape of cities

# Abstract

We describe the three-dimensional shapes of cities using a dataset that summarizes information about the heights of buildings globally. To analyze the city shapes, we compute histograms of area versus building heights (hypsographic curves) for 5973 cities around the world. Overall, cities exhibited four distinct area-height patterns: unimodal right skew (linear/exponential decline in area with height; 56.27% of cities), bimodal distribution, irrespective of skew (a curve with peaks at low and high heights; 41.15%), unimodal with no skew (a normal curve with peak area at mid-height; 2.41%), and unimodal left skew (linear/exponential increase in area with height; 0.17%), termed as 'pyramid', 'hourglass', 'diamond', and 'inverse pyramid' shapes, respectively. To address concerns such as the impacts of urban heat islands and climate change, we anticipated greater variance in city shapes. However, this classification system may not be conducive to addressing these issues. We plan to use more sophisticated strategy considering various variables alongside city shapes to address the issues effectively.	

# Introduction

Understanding the three-dimensional shapes of cities, particularly the heights of their buildings, is crucial for effective urban planning. This information further allows us to address contemporary challenges associated with urbanization, including the association between the urban heat island (UHI) effects and contemporaneous climate change. Urban areas experience higher temperatures than surrounding rural areas is known as Urban Heat Island (UHI) effect [1]. Prior research have found that UHI effects depend on a city layout [2]. In fact, the way streets and buildings are arranged strongly influences how heat builds up. Similarly, building materials like concrete absorb and radiate heat, leading to dramatic temperature increases of up to 10 degrees Celsius in some cities. Elevated health problems and increased energy usage during hot weather, highlighting the importance of understanding and addressing the UHI effect. UHI is positively correlated with city size [3]. 

 Climate change affects living conditions within cities. The effects of climate change are seen on air pollution, increased flood frequency, patterns of occurrence in animal and plant species, and oftentimes, increased temperatures. In a recent article, Mackres et al.  [4] presented a new tool to get information about how climate change is projected to affect particular cities. This tool helps cities see how climate change is connected to city life using different measurements of how sustainable things are likely to be. This helps decision-makers re-design and develop existing parts of their cities to provide more sustainable and equitable livelihood opportunities, and responsibly expand their cities in the most nature-sensitive ways possible.
 
 Hughes et al. [5] studied how rising temperatures from climate change affect household energy use, with people relying on extra energy for heating and cooling. The Extra-Metabolic Scholander-Irving model (EMSI) describes this, but has only been studied in moderately warm cities, leaving out extremely hot temperatures. They demonstrate in Arizona, a hot semi-arid state, that household energy use increases in response to the hottest summer months, completing the EMSI model. Energy use is lowest in spring and fall, rising in colder temperatures in winter, with income disparities affecting cooling demand. Their findings provide insights into the challenges of sustaining thermoregulation amid global warming, studied in Yuma, Arizona, where even a small temperature rise has significant effects on cooling needs. 
 
 Elsen et al. [6] studied how species worldwide are responding to climate change by shifting their ranges in latitude and elevation. Montane species, in particular, face significant challenges due to their narrow elevational ranges and high rates of local endemism. Concerns arise over their fate under climate change, with expectations of further upslope shifts potentially leaving them with less habitable area. They analyzed the elevation availability of surface area for a global data set containing 182 of the world’s mountain ranges. They show that, mountain range topographies exhibited four distinct area–elevation patterns: decreasing (decline in area with elevation), increasing (increase in area with elevation), a mid-elevation peak in area, and a mid-elevation trough in area. It suggests that many species may encounter increases in available area as they shift upslope. These findings challenge prevailing ecological assumptions. Further exploration of underlying mountain topography can inform strategies to mitigate the impacts of climate change on montane species and their habitats. For our work, we are taking inspiration from this work to get the classification categories for cities. 
 
 Our objective is to explore how building shapes interact with urban policies and regulations. In future, we plan to develop urban planning strategies aimed at mitigating climate change impacts. This study aims to contribute to this endeavor by exploring the relationship between urban morphology, building heights, and the UHI effect, with the goal of informing smarter and more sustainable urban development practices.

# Remarks

This repo has the following basic structure.

```
├── README.md           <- The top-level README for developers.
│
├── data            
│   ├── 01_raw          
│   ├── 02_intermediate 
│   ├── 03_processed    
│   ├── 04_models       
│   ├── 05_model_output 
│   └── 06_reporting   
│   └── 07_cities_shapefile      <- Shapefile of cities around the world
│   └── 08_cities_height         <- Building heights (raster data)
│   └── 09_continents_shapefile  <- Shapefile for continents
│
├── conf               
├── docs                <- Space for documentation. Can also included conceptualization and literature review.
│
├── references          <- Data dictionaries, manuals, reference manager (e.g. EndNote) etc.
│
├── results             
│   ├── figures         <- Generated graphics and figures
│   ├── presentations   
│   ├── submissions     
│   ├── tables          
│
├── .gitignore          <- Avoids uploading data, credentials, outputs, system files etc.
│
├── src_py                    <- Python source code for use in this project.
│
├── src_r                     <- R source code for use in this project.
```

# References

[1] Urban heat island, Wikipedia, Available at https://en.wikipedia.org/wiki/Urban_heat_island

[2] Urban heat island effects depend on a city’s layout, Available at https://news.mit.edu/2018/urban-heat-island-effects-depend-city-layout-0222

[3] City module - City cluster and urban heat islands (Europe), Available at https://www.pik-potsdam.de/cigrasp-2/city-module/heat-island-cluster/index.html

[4] Mackres, E., Pool, J. R., Shabou, S., Wong, T., Anderson, J., Gillespie, C., & Alexander, S. New Data Dashboard Helps Cities Build Urban Resilience in a Changing Climate.

[5] Hughes, H. B., Breshears, D. D., Cook, K. J., Keith, L., & Burger, J. R. (2023). Household energy use response to extreme heat with a biophysical model of temperature regulation: An Arizona case study. PLOS Climate, 2(4), e0000110.

[6] Elsen, PR., & Tingley, MW. (2015). Global mountain topography and the fate of montane species under climate change. Nature Climate Change, 5(8), 772-776.

[7] Kelso, N.V. and Patterson, T. (2012). World Urban Areas, LandScan, 1:10 million (2012). Made with Natural Earth, online at http://www.naturalearthdata.com

[8] Pesaresi, Martino; Politis, Panagiotis (2023): GHS-BUILT-H R2023A - GHS building height, derived from AW3D30, SRTM30, and Sentinel2 composite (2018). European Commission, Joint Research Centre (JRC) [Dataset] doi: 10.2905/85005901-3A49-48DD-9D19-6261354F56FE

[9] sf: Simple Features for R, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/sf/index.html

[10] terra: Spatial Data Analysis, The Comprehensive R Archive Network, URL:  https://cran.r-project.org/web/packages/terra/index.html

[11] rayshader: Create Maps and Visualize Data in 2D and 3D, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/rayshader/index.html

[12] cellSize: Area covered by each raster cell, The Comprehensive R Archive Network, URL: https://search.r-project.org/CRAN/refmans/terra/html/cellSize.html

[13] Physical Labels, Natural Earth, Avaialable at: https://www.naturalearthdata.com/downloads/50m-physical-vectors/50m-physical-labels/ 

[14] tidyverse: Easily Install and Load the Tidyverse, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/tidyverse/index.html

[15] dplyr: Introduction to dplyr, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html 

[16] raster: Geographic Data Analysis and Modeling, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/raster/index.html 

[17] giscoR: Download Map Data from GISCO API - Eurostat, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/giscoR/index.html 

[18] gridExtra: Miscellaneous Functions for "Grid" Graphics, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/gridExtra/index.html 

[19] e1071: Misc Functions of the Department of Statistics, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/e1071/index.html 

[20] diptest: Hartigan's Dip Test Statistic for Unimodality, The Comprehensive R Archive Network, URL: https://cran.r-project.org/web/packages/diptest/index.html 

[21] City module - City cluster and urban heat islands (Europe), URL: https://www.pik-potsdam.de/cigrasp-2/city-module/heat-island-cluster/index.html 

[22] Li, Y., Schubert, S., Kropp, J. P., & Rybski, D. (2020). On the influence of density and morphology on the Urban Heat Island intensity. Nature communications, 11(1), 2647.

[23] Hu, Y., Dai, Z., & Guldmann, J. M. (2020). Modeling the impact of 2D/3D urban indicators on the urban heat island over different seasons: A boosted regression tree approach. Journal of environmental management, 266, 110424.

### Acknowledgment

Initial project structure was created following the structure in [this repo](https://github.com/malill/research-template).
