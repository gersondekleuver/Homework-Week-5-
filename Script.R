library(tidyverse)
library(spotifyr)
PL <- get_playlist_audio_features("", "7JXJKP3xMvIMbEBBGApTPQ")

PL %>%
  summarise(
    mean_speechiness = mean(speechiness),
    mean_acousticness = mean(acousticness),
    mean_liveness = mean(liveness),
    sd_speechiness = sd(speechiness),
    sd_acousticness = sd(acousticness),
    sd_liveness = sd(liveness),
    median_speechiness = median(speechiness),
    median_acousticness = median(acousticness),
    median_liveness = median(liveness),
    mad_speechiness = mad(speechiness),
    mad_acousticness = mad(acousticness),
    mad_liveness = mad(liveness)
  )
PL %>%
  filter(track.name == trac)

PL %>% ggplot(aes(x = valence, y = energy)) + geom_point() + geom_smooth()
