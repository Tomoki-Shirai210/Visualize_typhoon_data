# Python script for plotting observation included in prepbufr(by NCEP) using GMT v5.4.5
### By T., Shirai (Chuo Univ., Japan)
### All the codes are now under developing. You may use it freely, but at your own risk.

## Data preparation
1. Use rda-ncepbufr-decode program provided by NCEP to decode the original PrepBUFR file
For example, 
```
readpb_config.x prepbufr.gdas.20191010.t12z.nr prepbufr.gdas.20191010.t12z ./prepbufr_config
```

## Requirements
- Python (numpy)

## Usage
Run python code (bufr2gmt)
```
python3 bufr2gmt.py
```

