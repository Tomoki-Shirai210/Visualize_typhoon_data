:run this batch file on windows system
:gmt version = 5.x
gmtset BASEMAP_TYPE = plain
gmtset ANNOT_FONT_SIZE_PRIMARY 11p


pscoast -R125/145/20/40 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5 -K > map201824d02.ps

psxy 211_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Gpurple -K -O >> map201824d02.ps
psxy 211_6.txt -R125/145/20/40 -JM16c -W1.05,purple -K -O >> map201824d02.ps
psxy 212_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Gnavy -K -O >> map201824d02.ps
psxy 212_6.txt -R125/145/20/40 -JM16c -W1.05,navy -K -O >> map201824d02.ps
psxy 411_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Gblue -K -O >> map201824d02.ps
psxy 411_6.txt -R125/145/20/40 -JM16c -W1.05,blue -K -O >> map201824d02.ps
psxy 412_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Gturquoise -K -O >> map201824d02.ps
psxy 412_6.txt -R125/145/20/40 -JM16c -W1.05,turquoise -K -O >> map201824d02.ps
psxy 611_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Ggreen -K -O >> map201824d02.ps
psxy 611_6.txt -R125/145/20/40 -JM16c -W1.05,green -K -O >> map201824d02.ps
psxy 612_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Glightgreen -K -O >> map201824d02.ps
psxy 612_6.txt -R125/145/20/40 -JM16c -W1.05,lightgreen -K -O >> map201824d02.ps
psxy 811_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Gyellow -K -O >> map201824d02.ps
psxy 811_6.txt -R125/145/20/40 -JM16c -W1.05,yellow -K -O >> map201824d02.ps
psxy 812_6.txt -R125/145/20/40 -JM16c -Sc0.2 -Gorange -K -O >> map201824d02.ps
psxy 812_6.txt -R125/145/20/40 -JM16c -W1.05,orange -K -O >> map201824d02.ps

psxy 201824.txt -R125/145/20/40 -JM16c -Sc0.2 -Gblack -K -O >> map201824d02.ps
psxy 201824.txt -R125/145/20/40 -JM16c -W1.2,black  -O >> map201824d02.ps

psconvert -P map201824d02.ps

pscoast -R131/137/30/37 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5 -K > small.ps

psxy 211_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Gpurple -K -O >> small.ps
psxy 211_6.txt -R131/137/30/37 -JM16c -W1.05,purple -K -O >> small.ps
psxy 212_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Gnavy -K -O >> small.ps
psxy 212_6.txt -R131/137/30/37 -JM16c -W1.05,navy -K -O >> small.ps
psxy 411_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Gblue -K -O >> small.ps
psxy 411_6.txt -R131/137/30/37 -JM16c -W1.05,blue -K -O >> small.ps
psxy 412_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Gturquoise -K -O >> small.ps
psxy 412_6.txt -R131/137/30/37 -JM16c -W1.05,turquoise -K -O >> small.ps
psxy 611_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Ggreen -K -O >> small.ps
psxy 611_6.txt -R131/137/30/37 -JM16c -W1.05,green -K -O >> small.ps
psxy 612_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Glightgreen -K -O >> small.ps
psxy 612_6.txt -R131/137/30/37 -JM16c -W1.05,lightgreen -K -O >> small.ps
psxy 811_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Gyellow -K -O >> small.ps
psxy 811_6.txt -R131/137/30/37 -JM16c -W1.05,yellow -K -O >> small.ps
psxy 812_6.txt -R131/137/30/37 -JM16c -Sc0.2 -Gorange -K -O >> small.ps
psxy 812_6.txt -R131/137/30/37 -JM16c -W1.05,orange -K -O >> small.ps

psxy 201824.txt -R131/137/30/37 -JM16c -Sc0.2 -Gblack -K -O >> small.ps
psxy 201824.txt -R131/137/30/37 -JM16c -W1.2,black  -O >> small.ps

psconvert -P small.ps

pause
