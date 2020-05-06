FROM python:3

# Expose port 5000 for image server.
EXPOSE 5000/tcp

# Switch to the location of the app.
WORKDIR /app

# Grab Plex-Auto-Collections repo and setup environment.
RUN git clone https://github.com/vladimir-tutin/Plex-Auto-Collections.git /app \
    && mkdir -p /config/logs \
    && ln -s /config/config.yml /app/config.yml \
    && pip install -r requirements.txt

# Config folder mountpoint.
VOLUME /config

# Run script.
ENTRYPOINT exec python plex_auto_collections.py --update > /config/logs/log.txt 2>&1
