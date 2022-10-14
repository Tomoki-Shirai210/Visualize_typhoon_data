#!/bin/bash

###現Dirの"bin"という名前のファイル名を取得してGRADs用に変換する


files="*grib2"
fileary=()
dirary=()
for filepath in $files; do
	  if [ -f $filepath ] ; then
		      fileary+=("$filepath")
		        elif [ -d $filepath ] ; then
				    dirary+=("$filepath")
				      fi
			      done

			      echo "GPV(grib2) Files to GrADs ctl files"
			      for i in ${fileary[@]}; do
				        echo $i
					g2ctl $i > $i.ctl
					gribmap -i $i.ctl 
				done

			      echo "Job completed!!!"

