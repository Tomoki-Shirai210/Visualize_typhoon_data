# Python script for plotting observation included in prepbufr(by NCEP ds0337.0) using GMT v5.4.5
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
1． Run python code (bufr2gmt) to make GMT's input
```
python3 bufr2gmt.py
```
2. RUN GMT

Following image is the example of the visualization of SATWND (satellite derived wind)

![mapSATWND](https://user-images.githubusercontent.com/84554010/186373081-2dfb4f42-1207-437d-97c0-7e099702c326.jpg)

