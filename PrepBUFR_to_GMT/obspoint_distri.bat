gmtset BASEMAP_TYPE = plain
gmtset ANNOT_FONT_SIZE_PRIMARY 11p

makecpt -Cpolar -Z -T-30/30/5 > wind.cpt
makecpt -Ccool -Z -T100/1000/100 > press.cpt



pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapADPSFC.ps
pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapSFCSHP.ps
pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapADPUPA.ps
pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapSATWND.ps
pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapSYNDAT.ps
pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapVADWND.ps
pscoast -R125/155/18/46 -JM16c -W1 -P -Di -Ggray -Swhite -Ba5f5g5WseN -K > mapALL.ps

psxy ADPSFC_P.txt -R125/155/18/46 -JM16c -Sc0.2 -Gred -K -O >> mapADPSFC.ps
psxy ADPSFC_U.txt -R125/155/18/46 -JM16c -Sc0.18 -Ggreen -K -O >> mapADPSFC.ps
psxy ADPSFC_V.txt -R125/155/18/46 -JM16c -Sc0.16 -Gblue -K -O >> mapADPSFC.ps
psxy ADPSFC_Z.txt -R125/155/18/46 -JM16c -Sc0.14 -Gpink -K -O >> mapADPSFC.ps
psxy ADPSFC_T.txt -R125/155/18/46 -JM16c -Sc0.12 -Gorangered -K -O >> mapADPSFC.ps
psxy ADPSFC_SH.txt -R125/155/18/46 -JM16c -Sc0.1 -Gturquoise -O >> mapADPSFC.ps


psxy SFCSHP_P.txt -R125/155/18/46 -JM16c -Sc0.2 -Gred -K -O >> mapSFCSHP.ps
psxy SFCSHP_U.txt -R125/155/18/46 -JM16c -Sc0.18 -Gnavy -K -O >> mapSFCSHP.ps
psxy SFCSHP_V.txt -R125/155/18/46 -JM16c -Sc0.16 -Gblue -K -O >> mapSFCSHP.ps
psxy SFCSHP_Z.txt -R125/155/18/46 -JM16c -Sc0.14 -Gpink -K -O >> mapSFCSHP.ps
psxy SFCSHP_T.txt -R125/155/18/46 -JM16c -Sc0.12 -Gorangered -K -O >> mapSFCSHP.ps
psxy SFCSHP_SH.txt -R125/155/18/46 -JM16c -Sc0.1 -Gturquoise -O >> mapSFCSHP.ps

psxy ADPUPA_P.txt -R125/155/18/46 -JM16c -Sc0.2 -Gred -K -O >> mapADPUPA.ps
psxy ADPUPA_U.txt -R125/155/18/46 -JM16c -Sc0.18 -Gnavy -K -O >> mapADPUPA.ps
psxy ADPUPA_V.txt -R125/155/18/46 -JM16c -Sc0.16 -Gblue -K -O >> mapADPUPA.ps
psxy ADPUPA_Z.txt -R125/155/18/46 -JM16c -Sc0.14 -Gpink -K -O >> mapADPUPA.ps
psxy ADPUPA_T.txt -R125/155/18/46 -JM16c -Sc0.12 -Gorangered -K -O >> mapADPUPA.ps
psxy ADPUPA_SH.txt -R125/155/18/46 -JM16c -Sc0.1 -Gturquoise -O >> mapADPUPA.ps

psxy SATWND_P.txt -R125/155/18/46 -JM16c -Sc0.12 -Cpress.cpt -K -O >> mapSATWND.ps
psxy SATWND_U.txt -R125/155/18/46 -JM16c -Sc0.08 -Cwind.cpt -K -O >> mapSATWND.ps
psxy SATWND_V.txt -R125/155/18/46 -JM16c -Sc0.06 -Cwind.cpt -K -O >> mapSATWND.ps
psscale -D16.3/4/5/0.3 -Cwind.cpt -B10/:[m/s]: -K -O >>mapSATWND.ps
psscale -D16.3/12/5/0.3 -Cpress.cpt -B100/:[hpa]: -O >>mapSATWND.ps


psxy SYNDAT_P.txt -R125/155/18/46 -JM16c -Sc0.15 -Cpress.cpt -K -O >> mapSYNDAT.ps
psxy SYNDAT_U.txt -R125/155/18/46 -JM16c -Sc0.1 -Cwind.cpt -K -O >> mapSYNDAT.ps
psxy SYNDAT_V.txt -R125/155/18/46 -JM16c -Sc0.1 -Cwind.cpt -K -O >> mapSYNDAT.ps
psscale -D16.3/4/5/0.3 -Cwind.cpt -B10/:[m/s]: -K -O >>mapSYNDAT.ps
psscale -D16.3/12/5/0.3 -Cpress.cpt -B100/:[hpa]: -O >>mapSYNDAT.ps

psxy VADWND_U.txt -R125/155/18/46 -JM16c -Sc0.18 -Gnavy -K -O >> mapVADWND.ps
psxy VADWND_V.txt -R125/155/18/46 -JM16c -Sc0.16 -Gblue -K -O >> mapVADWND.ps
psscale -D16.3/4/5/0.3 -Cwind.cpt -B10/:[m/s]:  -O >>mapVADWND.ps

psxy ADPSFC_U.txt -R125/155/18/46 -JM16c -Sc0.15 -Ggreen -K -O >>mapALL.ps
psxy SFCSHP_U.txt -R125/155/18/46 -JM16c -Sc0.14 -Gnavy -K -O >> mapALL.ps
psxy ADPUPA_U.txt -R125/155/18/46 -JM16c -Sc0.13 -Gred -K -O >> mapALL.ps
psxy SATWND_U.txt -R125/155/18/46 -JM16c -Sc0.12 -Gpink -K -O >> mapALL.ps
psxy VADWND_U.txt -R125/155/18/46 -JM16c -Sc0.12 -Gturquoise -K -O >> mapALL.ps
psxy SYNDAT_U.txt -R125/155/18/46 -JM16c -Sc0.11 -Gblue -O >> mapALL.ps


psconvert -P mapADPSFC.ps
psconvert -P mapSFCSHP.ps
psconvert -P mapADPUPA.ps
psconvert -P mapSATWND.ps
psconvert -P mapSYNDAT.ps
psconvert -P mapVADWND.ps
psconvert -P mapALL.ps

pause
