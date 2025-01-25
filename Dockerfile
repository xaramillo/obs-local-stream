FROM linuxserver/ffmpeg:latest

# Instalar dependencias para ffplay
RUN apt-get update && apt-get install -y \
    x11-utils \
    && rm -rf /var/lib/apt/lists/*

# Comando para recibir la transmisión SRT
CMD ["ffplay", "-window_title", "SRT Stream", "srt://0.0.0.0:9998?mode=listener"]
