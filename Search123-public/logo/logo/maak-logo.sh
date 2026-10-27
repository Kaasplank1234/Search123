#!/bin/bash
cd .

W=800
H=200
PT=110
FONT="Helvetica-Bold"

# "S" in donkerblauw
convert -size 120x${H} xc:white -gravity center -font ${FONT} -pointsize ${PT} -fill "#0a2540" -annotate 0 "S" S.png

# "earch" in SearXNG-blauw
convert -size 400x${H} xc:white -gravity center -font ${FONT} -pointsize ${PT} -fill "#3050ff" -annotate 0 "earch" earch.png

# "123" in kleurverloop van licht naar donker
convert -size 280x${H} gradient:"#7ab8ff"-"#0a2540" -gravity center -font ${FONT} -pointsize ${PT} -fill white -annotate 0 "123" 123.png

# Voeg alles samen
convert +append S.png earch.png 123.png searxng.png

# Opruimen
rm -f S.png earch.png 123.png
