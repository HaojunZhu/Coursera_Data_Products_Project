---
title       : Vehicle MPG Prediction
subtitle    : 
author      : Haojun Zhu
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

This simple app predicts vehicle MPG based on some simple vehicle informations, such as number of cylinders, weight, manufacation year, etc. 


The data set can be found [here] (https://archive.ics.uci.edu/ml/datasets/Auto+MPG)

---

A simple GLM model is used to fit the data. 

```r
mpg <- read.csv("mpg.csv")
modFit <- train(mpg ~ cyl + disp + horse + weight + accel + year + origin, 
method="glm", data=mpg)
```

---

This simple app is deployed to Shiny website. You can find it [here](https://hzhu.shinyapps.io/Coursera_Data_Product_Project)

---

Source codes can be found [here](https://github.com/HaojunZhu/Coursera_Data_Products_Project)
