FROM debian

MAINTAINER <icarrilloquero@gmail.com>

# Setup transcoder
RUN apt-get update && apt-get install -y ffmpeg

CMD ["ffmpeg"]
