library(rvest)
library(dplyr)


## Scrape & format 2018 data
url <- "https://www.footballoutsiders.com/stats/fei/2018"

ratings_2018 <- url %>% html() %>% html_nodes(xpath='//*[@id="node-14002"]/div/div/table') %>%
  html_table()
ratings_2018 <- ratings_2018[[1]]

## Turn top row into column names
names(ratings_2018) <- ratings_2018[1,]
ratings_2018 <- ratings_2018[-1,]
ratings_2018 <- ratings_2018[c(2, 4, 5, 7, 9, 11, 13)]
ratings_2018 <- ratings_2018 %>% filter(Team != "Team")

## Scrape & format 2017 data
url <- "https://www.footballoutsiders.com/stats/fei/2017"

ratings_2017 <- url %>% html() %>% html_nodes(xpath='//*[@id="node-13675"]/div/div/table') %>%
  html_table()
ratings_2017 <- ratings_2017[[1]]

## Turn top row into column names
names(ratings_2017) <- ratings_2017[1,]
ratings_2017 <- ratings_2017[-1,]
ratings_2017 <- ratings_2017[c(2, 4, 5, 7, 9, 11, 13)]
ratings_2017 <- ratings_2017 %>% filter(Team != "Team")

## Scrape & format 2016 data
url <- "https://www.footballoutsiders.com/stats/fei/2016"

ratings_2016 <- url %>% html() %>% html_nodes(xpath='//*[@id="node-13952"]/div/div/table') %>%
  html_table()
ratings_2016 <- ratings_2016[[1]]

## Turn top row into column names
names(ratings_2016) <- ratings_2016[1,]
ratings_2016 <- ratings_2016[-1,]
ratings_2016 <- ratings_2016[c(2, 4, 5, 7, 9, 11, 13)]
ratings_2016 <- ratings_2016 %>% filter(Team != "Team")
