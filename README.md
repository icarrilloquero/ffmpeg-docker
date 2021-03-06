# ffmpeg-docker

A docker image with ffmpeg already configured.

### Usage
Bind mount your host's folder with the files to convert and run the desired conversion.

### Example
Example for a .oga to .mp3 audio files conversion:

* Build the image: `docker build . -t icarrilloquero/ffmpeg`
* Create a script with the conversion instructions in the same folder as your media files:
```
#!/bin/sh
for oga in /convert/*/*.oga; do
  echo "Converting $oga to ${oga%.*}.mp3"
  ffmpeg -i "$oga" "${oga%.*}.mp3"
done
```
* Run the container, with a bind mount to the folder with the files to convert and the script:
```
docker run --rm -it \
  -v "<FOLDER>":"/convert/" \
  icarrilloquero/ffmpeg /convert/<YOUR_SCRIPT>
```
