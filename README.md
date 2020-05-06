# Plex-Auto-Collections Docker image
 
This is a docker image of [vladimir-tutin](https://github.com/vladimir-tutin)'s [Plex-Auto-Collections](https://github.com/vladimir-tutin/Plex-Auto-Collections)

## Installation
The following example will automatically forward the image server port 5000 (TCP).
```
docker run \
-d \
--name Plex-Auto-Collections \
--network=host \
-v <path/to/config/folder>:/config \
xeltor/plex-auto-collections
```

In order for this application to run it requires a config.yml to be present in the config folder, see the example below for more info.

## Config file example
```
collections:
    Jurassic Park:
        tmdb-list: https://www.themoviedb.org/collection/328
        details:
          tmdb-summary: 328
          poster: https://i.imgur.com/QMjbyCX.png
      1080p Documentaries:
        genres: Documentary
        subfilters:
          video-resolution: 1080
        details:
          summary: A collection of 1080p Documentaries
      Daniel Craig only James Bonds:
        imdb-list: https://www.imdb.com/list/ls006405458/
        subfilters:
          actors: Daniel Craig
plex:
    library: Movies
    token: PLEX_TOKEN_HERE
    url: http://PLEX_SERVER_IP_HERE:32400
radarr:
    url: http://RADARR_SERVER_IP_HERE:7878
    token: RADARR_API_HERE
    quality_profile_id: 1
    search: true
tmdb:
    apikey: TMDB_API_HERE
    language: en
image-server:
    host: SERVER_IP_HERE
    port: 5000
```

For more specific configurations please check the original github repository here: https://github.com/vladimir-tutin/Plex-Auto-Collections

## Debugging
For debugging purposes please check the `/config/logs/log.txt` a full console dump is stored there.
