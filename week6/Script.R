library(tidyverse)
library(spotifyr)
library(compmus)

LP <- get_playlist_audio_features("", "37i9dQZF1DWVi45nh2EuPP")

LP <-
  bind_rows(
    LP %>% mutate(category = "League of legends Playlist"),
  )



LP %>%
  ggplot(aes(x = category, y = acousticness)) +
  geom_violin() +
  ggtitle("Acousticness of the LoL playlist")

LP %>% ggplot(aes(x = valence, y = energy, color=loudness)) + geom_jitter() + geom_smooth() + ggtitle("Valence to Enegry of the LoL playlist")
