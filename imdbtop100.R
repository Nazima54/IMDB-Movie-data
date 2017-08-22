# Load the required packages (if packages are not available, install them first)
for (package in c('caret','readr','ggplot2','magrittr','ggthemes','dplyr','corrplot','caTools','plotly')) {
  if (!require(package, character.only=T, quietly=T)) {
    install.packages(package)
    library(package,character.only=T)
  }
}

# Read the csv file and save in an object called "imdb"
imdb <- read.csv("C:/CompleteMLProjects/MovieDataModel/imdb_whole.csv")

imdb_mfb <- arrange(imdb,desc(movie_facebook_likes))
# ARRANGE THE DATA SHOWING TOP 100 MOVIES WITH FACEBOOK LIKES
sum_mfb <- print(head(imdb_mfb$movie_facebook_likes,100))
sum(sum_mfb) 
#[1] 10594000 # it is the total number of likes for the  top 100 movies with facebook likes.

# CALCULATE GROSS EARNED BY THESE TOP 100 MOVIES WITH FACEBOOK LIKES
sum_mfb_gross <- print(head(imdb_mfb$gross,100))
sum(as.numeric(sum_mfb_gross))
#16384156204 # Total gross earned by these movies

# CALCULATE THE IMDB_SCORE GIVEN TO THESE TOP 100 MOVIES WITH FACEBOOK LIKES
sum_mfb_imdbscore <- print(head(imdb_mfb$imdb_score,100))
mean(sum_mfb_imdbscore)
# [1] 7.491 # Mean imdb_score for these movies

#**********************************************************************************************************

imdb_dfb <- arrange(imdb,desc(director_facebook_likes))
sum_dfb <- print(head(imdb_dfb$director_facebook_likes,100))
sum(sum_dfb)
#[1] 1660000    # Total number of facebook likes given to top 100 directors with facebook likes

# CALCULATE GROSS EARNED BY THESE TOP 100 DIRECTORS WITH FACEBOOK LIKES
sum_dfb_gross <- print(head(imdb_dfb$gross,100))
sum(as.numeric(sum_dfb_gross))
#11219233203     # Total gross earned by these directors

# CALCULATE THE IMDB_SCORE GIVEN TO THESE TOP 100 DIRECTORS WITH FACEBOOK LIKES
sum_dfb_imdbscore <- print(head(imdb_dfb$imdb_score,100))
mean(sum_dfb_imdbscore)
# [1] 7.553      # Mean imdb_score for these directors

#**********************************************************************************************************

imdb_actor1fb <- arrange(imdb,desc(actor_1_facebook_likes))
sum_a1fb <- print(head(imdb_actor1fb$actor_1_facebook_likes,100))
sum(sum_a1fb)
#[1] 5639000     # Total number of facebook likes given to top 100 actor1 with facebook likes

# CALCULATE GROSS EARNED BY THESE TOP 100 ACTOR1 WITH FACEBOOK LIKES
sum_a1fb_gross <- print(head(imdb_actor1fb$gross,100))
sum(as.numeric(sum_a1fb_gross))
#[1] 10017743396     # Total gross earned by these actor1's

# CALCULATE THE IMDB_SCORE GIVEN TO THESE TOP 100 ACTOR1 WITH FACEBOOK LIKES
sum_a1fb_imdbscore <- print(head(imdb_actor1fb$imdb_score,100))
mean(sum_a1fb_imdbscore)
# [1] 6.574      # Mean imdb_score for these actor1's

#**********************************************************************************************************

imdb_actor2fb <- arrange(imdb,desc(actor_2_facebook_likes))
sum_a2fb <- print(head(imdb_actor1fb$actor_2_facebook_likes,100))
sum(sum_a2fb)
#[1] 936786      # Total number of facebook likes given to top 100 actor2 with facebook likes

# CALCULATE GROSS EARNED BY THESE TOP 100 ACTOR2 WITH FACEBOOK LIKES
sum_a2fb_gross <- print(head(imdb_actor2fb$gross,100))
sum(as.numeric(sum_a2fb_gross))
#[1] 15000620052     # Total gross earned by these actor2's

# CALCULATE THE IMDB_SCORE GIVEN TO THESE TOP 100 ACTOR2 WITH FACEBOOK LIKES
sum_a2fb_imdbscore <- print(head(imdb_actor2fb$imdb_score,100))
mean(sum_a2fb_imdbscore)
# [1] 6.941      # Mean imdb_score for these actor1's

#*********************************************************************************************************


imdb_actor3fb <- arrange(imdb,desc(actor_3_facebook_likes))
sum_a3fb <- print(head(imdb_actor1fb$actor_3_facebook_likes,100))
sum(sum_a3fb)
#[1] 277385    # Total number of facebook likes given to top 100 actor2 with facebook likes

# CALCULATE GROSS EARNED BY THESE TOP 100 ACTOR3 WITH FACEBOOK LIKES
sum_a3fb_gross <- print(head(imdb_actor3fb$gross,100))
sum(as.numeric(sum_a3fb_gross))
#[1] 14581492326     # Total gross earned by these actor3's

# CALCULATE THE IMDB_SCORE GIVEN TO THESE TOP 100 ACTOR3 WITH FACEBOOK LIKES
sum_a3fb_imdbscore <- print(head(imdb_actor3fb$imdb_score,100))
mean(sum_a3fb_imdbscore)
# [1] 6.816      # Mean imdb_score for these actor3's

#*********************************************************************************************************


imdb_castfb <- arrange(imdb,desc(cast_total_facebook_likes))
sum_castfb <- print(head(imdb_castfb$cast_total_facebook_likes,100))
sum(sum_castfb)
# [1] 7780860    # Total number of facebook likes given to top 100 cast_total with facebook likes

# CALCULATE GROSS EARNED BY THESE TOP 100 cast_total WITH FACEBOOK LIKES
sum_castfb_gross <- print(head(imdb_castfb$gross,100))
sum(as.numeric(sum_castfb_gross))
#[1] 13964214327     # Total gross earned by these cast_total's

# CALCULATE THE IMDB_SCORE GIVEN TO THESE TOP 100 cast_total WITH FACEBOOK LIKES
sum_castfb_imdbscore <- print(head(imdb_castfb$imdb_score,100))
mean(sum_castfb_imdbscore)
# [1] 6.771      # Mean imdb_score for these cast_total's

#*********************************************************************************************************

# movie_fb_likes <- c(10594000,16384156204,7.491)
# movie_fb_likes
# director_fb_likes <- c(1660000,11219233203,7.553)
# director_fb_likes
# actor1_fb_likes <- c(5639000,10017743396,6.574)
# actor2_fb_likes <-  c(936786,15000620052,6.941)
# actor2_fb_likes
# actor3_fb_likes <-  c(277385,14581492326,6.816)
# actor3_fb_likes
# cast_fb_likes  <-  c(7780860,13964214327,6.771)
# cast_fb_likes

# crew_names <- c('movie_fb_likes','director_fb_likes','actor1_fb_likes','actor2_fb_likes','actor3_fb_likes','cast_fb_likes')
# print(crew_names)
# crew_names_matrix <- matrix(crew_names,byrow = T,nrow = 6)
# print(crew_names_matrix)

# crew_values <- c('total_fb_likes','total_gross','Mean_imdb_score')
# crew_names <- c('movie_fb_likes','director_fb_likes','actor1_fb_likes','actor2_fb_likes','actor3_fb_likes','cast_fb_likes')
# colnames(crew_names_matrix) <- crew_values
#rownames(crew_names_matrix) <- crew_names


library(plotly)

d <- imdb_mfb[sample(nrow(imdb_mfb), 100), ]

p <- plot_ly(
  d, x = ~movies, y = ~movie_facebook_likes,
  color = ~movies, size = ~movies)
  
  
 