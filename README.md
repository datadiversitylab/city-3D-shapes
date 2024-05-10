# An analysis of the 3D shape of cities

# Abstract

We describe the three-dimensional shapes of cities using a dataset that summarizes information about the heights of buildings globally. To analyze the city shapes, we compute histograms of area versus building heights (hypsographic curves) for 5973 cities around the world. Overall, cities exhibited four distinct area-height patterns: unimodal right skew (linear/exponential decline in area with height; 56.27% of cities), bimodal distribution, irrespective of skew (a curve with peaks at low and high heights; 41.15%), unimodal with no skew (a normal curve with peak area at mid-height; 2.41%), and unimodal left skew (linear/exponential increase in area with height; 0.17%), termed as ‘pyramid’, ‘hourglass’, ‘diamond’, and ‘inverse pyramid’ shapes, respectively. To address concerns such as the impacts of urban heat islands and climate change, we anticipated greater variance in city shapes. However, this classification system may not be conducive to addressing these issues. We plan to use more sophisticated strategy considering various variables alongside city shapes to address the issues effectively.	

# Introduction

Understanding the three-dimensional shapes of cities, particularly the heights of their buildings, is crucial for effective urban planning. This information further allows us to address contemporary challenges associated with urbanization, including the association between the urban heat island (UHI) effects and contemporaneous climate change. Urban areas experience higher temperatures than surrounding rural areas is known as Urban Heat Island (UHI) effect [1]. Prior research have found that UHI effects depend on a city layout [2]. In fact, the way streets and buildings are arranged strongly influences how heat builds up. Similarly, building materials like concrete absorb and radiate heat, leading to dramatic temperature increases of up to 10 degrees Celsius in some cities. Elevated health problems and increased energy usage during hot weather, highlighting the importance of understanding and addressing the UHI effect. UHI is positively correlated with city size [3]. 
 Climate change affects living conditions within cities. The effects of climate change are seen on air pollution, increased flood frequency, patterns of occurrence in animal and plant species, and oftentimes, increased temperatures. In a recent article, Mackres et al.  [4] presented a new tool to get information about how climate change is projected to affect particular cities. This tool helps cities see how climate change is connected to city life using different measurements of how sustainable things are likely to be. This helps decision-makers re-design and develop existing parts of their cities to provide more sustainable and equitable livelihood opportunities, and responsibly expand their cities in the most nature-sensitive ways possible.
 Hughes et al. [5] studied how rising temperatures from climate change affect household energy use, with people relying on extra energy for heating and cooling. The Extra-Metabolic Scholander-Irving model (EMSI) describes this, but has only been studied in moderately warm cities, leaving out extremely hot temperatures. They demonstrate in Arizona, a hot semi-arid state, that household energy use increases in response to the hottest summer months, completing the EMSI model. Energy use is lowest in spring and fall, rising in colder temperatures in winter, with income disparities affecting cooling demand. Their findings provide insights into the challenges of sustaining thermoregulation amid global warming, studied in Yuma, Arizona, where even a small temperature rise has significant effects on cooling needs. 
 Elsen et al. [6] studied how species worldwide are responding to climate change by shifting their ranges in latitude and elevation. Montane species, in particular, face significant challenges due to their narrow elevational ranges and high rates of local endemism. Concerns arise over their fate under climate change, with expectations of further upslope shifts potentially leaving them with less habitable area. They analyzed the elevation availability of surface area for a global data set containing 182 of the world’s mountain ranges. They show that, mountain range topographies exhibited four distinct area–elevation patterns: decreasing (decline in area with elevation), increasing (increase in area with elevation), a mid-elevation peak in area, and a mid-elevation trough in area. It suggests that many species may encounter increases in available area as they shift upslope. These findings challenge prevailing ecological assumptions. Further exploration of underlying mountain topography can inform strategies to mitigate the impacts of climate change on montane species and their habitats. For our work, we are taking inspiration from this work to get the classification categories for cities. 
 Our objective is to explore how building shapes interact with urban policies and regulations. In future, we plan to develop urban planning strategies aimed at mitigating climate change impacts. This study aims to contribute to this endeavor by exploring the relationship between urban morphology, building heights, and the UHI effect, with the goal of informing smarter and more sustainable urban development practices.

# Remarks

This repo has the following basic structure.

```
├── environment.yml     <- Basic Python dependencies for Conda environment.
├── README.md           <- The top-level README for developers.
│
├── data                <- If data sets are too large for repo include in .gitignore and download/provide locally. If
│   │                      multiple data sets are used, create a seperate folder for each data set. Also data sets might
│   │                      be merged. Each subfolder (i.e. data stage) should contain a data description (e.g. URL etc.).
│   ├── 01_raw          <- Immutable input data
│   ├── 02_intermediate <- Cleaned version of raw (no missing values, outliers, unreadable data etc.)
│   ├── 03_processed    <- Train data used to develop models (including interactions, new features etc. with 2 columns
│   │                      (_a, _b) whenever there are transformations using a datapoint's label as part of feature),
│   │                      derived test data for prediction (using processed train data and _b columns when applicable)
│   ├── 04_models       <- Trained models (.pkl files using joblib). Naming convention is date YYYYMMDD (for ordering),
│   │                      '_', score, '_' and a short description of the used model
│   ├── 05_model_output <- Model output
│   └── 06_reporting    <- Reports and input to frontend
│
├── docs                <- Space for documentation. Can also included conceptualization and literature review.
│
├── references          <- Data dictionaries, manuals, reference manager (e.g. EndNote) etc.
│
├── results             <- Final analysis docs.
│   ├── figures         <- Generated graphics and figures to be used in reporting, presentations or papers
│   ├── presentations   <- Presentation slides (e.g. pptx) for conferences, seminars etc.
│   ├── submissions     <- Final submission files (e.g. csv, docx, pdf) including versioning (e.g. v1). Folder also
│   │                      contains revisions & resubmissions (create subfolders if applicable).
│   ├── tables          <- Generated tables to be used in reporting or papers
│
│
├── .gitignore          <- Avoids uploading data, credentials, outputs, system files etc.
│
├── src_py                    <- Python source code for use in this project.
│
├── src_r                     <- R source code for use in this project.
```


### Acknowledgment

Initial project structure was created following the structure in [this repo](https://github.com/malill/research-template).
