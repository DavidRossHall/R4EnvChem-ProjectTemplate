# Title: Example R Script for Visualizing Air Quality Data 
# Author: John Guy Rubberboots
# Date: 24 June 2021

# 1. Packages ---- 

# Install and open tidyverse if you haven't already 

#install.packages("tidyverse")

library(tidyverse)


# 2. Importing air quality data ----

airPol <- read_csv("data/2018-01-01_60430_Toronto_ON.csv")

View(airPol)

# 3. Visualizing data ----
## 3.1. Scatter plot for time series ----

ggplot(data = airPol, 
       aes(x = date.time,
           y = concentration,
           colour = pollutant)) +
  geom_point()


## 3.2. Boxplot for distribution ----

ggplot(data = airPol, 
       aes(x = pollutant, 
           y = concentration, 
           colour = pollutant)) +
  geom_boxplot() +
  geom_jitter() +
  labs(title = "Toronto 60430 Air Quality Data", 
       subtitle = "from July 1st to July 8th, 2020",
       x = "Airborn Pollutant",
       y = "Concentration (ppm)",
       caption = "Data from 2018 ECCC NAPS Hourly Data") +
  theme(legend.position = "none")
