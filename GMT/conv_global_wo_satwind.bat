gmtset BASEMAP_TYPE = plain
gmtset ANNOT_FONT_SIZE_PRIMARY 11p

makecpt -Cpolar -Z -T-30/30/5 > wind.cpt
makecpt -Ccool -Z -T100/1000/100 > press.cpt



pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapADPSFC.ps
pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapSFCSHP.ps
pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapADPUPA.ps
pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapSATWND.ps
pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapSYNDAT.ps
pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapVADWND.ps
pscoast -R-179/179/-80/80 -JQ18 -W1 -P -Di -Ggray -Swhite -Ba15f15g15WseN -K > mapwosatALL.ps

psxy ADPSFC_P.txt -R-179/179/-80/80 -JQ18 -Sc0.05 -Gred -K -O >> mapADPSFC.ps
psxy ADPSFC_U.txt -R-179/179/-80/80 -JQ18 -Sc0.038 -Ggreen -K -O >> mapADPSFC.ps
psxy ADPSFC_V.txt -R-179/179/-80/80 -JQ18 -Sc0.036 -Gblue -K -O >> mapADPSFC.ps
psxy ADPSFC_Z.txt -R-179/179/-80/80 -JQ18 -Sc0.034 -Gpink -K -O >> mapADPSFC.ps
psxy ADPSFC_T.txt -R-179/179/-80/80 -JQ18 -Sc0.032 -Gorangered -K -O >> mapADPSFC.ps
psxy ADPSFC_SH.txt -R-179/179/-80/80 -JQ18 -Sc0.05 -Gturquoise -O >> mapADPSFC.ps


psxy SFCSHP_P.txt -R-179/179/-80/80 -JQ18 -Sc0.07 -Gred -K -O >> mapSFCSHP.ps
psxy SFCSHP_U.txt -R-179/179/-80/80 -JQ18 -Sc0.068 -Gnavy -K -O >> mapSFCSHP.ps
psxy SFCSHP_V.txt -R-179/179/-80/80 -JQ18 -Sc0.066 -Gblue -K -O >> mapSFCSHP.ps
psxy SFCSHP_Z.txt -R-179/179/-80/80 -JQ18 -Sc0.064 -Gpink -K -O >> mapSFCSHP.ps
psxy SFCSHP_T.txt -R-179/179/-80/80 -JQ18 -Sc0.062 -Gorangered -K -O >> mapSFCSHP.ps
psxy SFCSHP_SH.txt -R-179/179/-80/80 -JQ18 -Sc0.06 -Gturquoise -O >> mapSFCSHP.ps

psxy ADPUPA_P.txt -R-179/179/-80/80 -JQ18 -Sc0.05 -Gred -K -O >> mapADPUPA.ps
psxy ADPUPA_U.txt -R-179/179/-80/80 -JQ18 -Sc0.038 -Gnavy -K -O >> mapADPUPA.ps
psxy ADPUPA_V.txt -R-179/179/-80/80 -JQ18 -Sc0.036 -Gblue -K -O >> mapADPUPA.ps
psxy ADPUPA_Z.txt -R-179/179/-80/80 -JQ18 -Sc0.034 -Gpink -K -O >> mapADPUPA.ps
psxy ADPUPA_T.txt -R-179/179/-80/80 -JQ18 -Sc0.032 -Gorangered -K -O >> mapADPUPA.ps
psxy ADPUPA_SH.txt -R-179/179/-80/80 -JQ18 -Sc0.05 -Gturquoise -O >> mapADPUPA.ps

psxy SATWND_P.txt -R-179/179/-80/80 -JQ18 -Sc0.032 -Cpress.cpt -K -O >> mapSATWND.ps
psxy SATWND_U.txt -R-179/179/-80/80 -JQ18 -Sc0.028 -Cwind.cpt -K -O >> mapSATWND.ps
psxy SATWND_V.txt -R-179/179/-80/80 -JQ18 -Sc0.026 -Cwind.cpt -O >> mapSATWND.ps
:psscale -D16.3/4/5/0.3 -Cwind.cpt -B10/:[m/s]: -K -O >>mapSATWND.ps
:psscale -D16.3/12/5/0.3 -Cpress.cpt -B100/:[hpa]: -O >>mapSATWND.ps


psxy SYNDAT_P.txt -R-179/179/-80/80 -JQ18 -Sc0.055 -Cpress.cpt -K -O >> mapSYNDAT.ps
psxy SYNDAT_U.txt -R-179/179/-80/80 -JQ18 -Sc0.05 -Cwind.cpt -K -O >> mapSYNDAT.ps
psxy SYNDAT_V.txt -R-179/179/-80/80 -JQ18 -Sc0.05 -Cwind.cpt  -O >> mapSYNDAT.ps
:psscale -D16.3/4/5/0.3 -Cwind.cpt -B10/:[m/s]: -K -O >>mapSYNDAT.ps
:psscale -D16.3/12/5/0.3 -Cpress.cpt -B100/:[hpa]: -O >>mapSYNDAT.ps

psxy VADWND_U.txt -R-179/179/-80/80 -JQ18 -Sc0.038 -Gnavy -K -O >> mapVADWND.ps
psxy VADWND_V.txt -R-179/179/-80/80 -JQ18 -Sc0.036 -Gblue -O >> mapVADWND.ps
:psscale -D16.3/4/5/0.3 -Cwind.cpt -B10/:[m/s]:  -O >>mapVADWND.ps

:psxy SATWND_U.txt -R-179/179/-80/80 -JQ18 -Sc0.028 -Gpink -K -O >> mapALL.ps
psxy ADPSFC_U.txt -R-179/179/-80/80 -JQ18 -Sc0.044 -Ggreen -K -O >>mapwosatALL.ps
psxy SFCSHP_U.txt -R-179/179/-80/80 -JQ18 -Sc0.032 -Gnavy -K -O >> mapwosatALL.ps
psxy ADPUPA_U.txt -R-179/179/-80/80 -JQ18 -Sc0.042 -Gred -K -O >> mapwosatALL.ps
psxy VADWND_U.txt -R-179/179/-80/80 -JQ18 -Sc0.028 -Gturquoise -K -O >> mapwosatALL.ps
psxy SYNDAT_U.txt -R-179/179/-80/80 -JQ18 -Sc0.046 -Gblue -O >> mapwosatALL.ps


psconvert -P mapADPSFC.ps
psconvert -P mapSFCSHP.ps
psconvert -P mapADPUPA.ps
psconvert -P mapSATWND.ps
psconvert -P mapSYNDAT.ps
psconvert -P mapVADWND.ps
psconvert -P mapwosatALL.ps

pause