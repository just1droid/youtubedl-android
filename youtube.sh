#!/bin/bash
termux-setup-storage
apt update && apt upgrade && apt install python ffmpeg && pip install youtube-dl
mkdir -p ~/.config/youtube-dl
echo '# Default Output Directory and Pattern
-o ~/storage/downloads/%(extractor_key)s/%(title)s-%(id)s.%(ext)s' >> ~/.config/youtube-dl/config
mkdir ~/bin
echo '#!/bin/bash
url=$1
youtube-dl $url' >> ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener
