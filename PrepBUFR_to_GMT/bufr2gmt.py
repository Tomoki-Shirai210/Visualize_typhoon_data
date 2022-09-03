###Python program to make gmt5.4.5 input for ncep prepbufr observation 
###Last Edited 20220903 T., Shirai (v2.0)
#Notion: Please execute [readpb_config.x] first using ncepbufrlib. 
#P = Pressure [mb]
#Q = Specific Humidity [MG/KG] 
#T = Temp [DEG C]
#Z = Height [m]
#U = U-wind component [m/s]
#V = V-wind component [m/s]
#
#
import numpy as np
import os


#set the input file as inf
#obsdate='20220831.t00z'

files = []
files = os.listdir("./bufr/data")
print("Files are: ",files)
#inf='prepbufr.gdas.20220831.t00z.ADPSFC'
#inf='prepbufr.gdas.20220831.t00z.SFCSHP'
#inf='prepbufr.gdas.20220831.t00z.SYNDAT'
#inf='prepbufr.gdas.20220831.t00z.SATWND'
#inf='prepbufr.gdas.20220831.t00z.ADPUPA'
#inf='prepbufr.gdas.20220831.t00z.VADWND'

for inf in (files):
#######Input fileの読み込み(行ごと)#########
    f = open(os.path.join('./bufr/data/',inf), 'r', encoding='UTF-8')

    count = 0
    with open(os.path.join('./bufr/data/',inf)) as f:
        for line in f:
            count += 1
    print('Num of lines: ',count)
    f.close()

    f = open(os.path.join('./bufr/data/',inf), 'r', encoding='UTF-8')

    datas =[]

    for I in range(3):
        skip = f.readline()
        
    for i in range(count-3):
        data = f.readline()
        data = data.replace("\n", "")
        datas.append(data)
    f.close()

    lon=[]
    lat=[]
    #elv=[] #elevation[m]
    obs_time=[]
    lev=[]
    var=[]
    value=[]
    quality=[]

    for i in range(count-3):
        lon.append(float(datas[i][10:17]))
        lat.append(float(datas[i][18:25]))
        #elv.append(float(datas[i][26:33]))
        obs_time.append(float(datas[i][34:40]))
        lev.append(int(datas[i][66:70]))
        var.append(datas[i][74:75])
        quality.append(datas[i][89:93])
        value.append(datas[i][76:85])
        #quality.append(999.0)
        #if (datas[i][76:85]).isnumeric == True:
        #    value.append(float(datas[i][76:85]))
        #else: 
        #    value.append(-999)
        
    lonp=np.array(lon)
    latp=np.array(lat)
    value=np.array(value)
    #elv=np.array(elv) #elevation[m]
    lev=np.array(lev)
    quality=np.array(quality)
    
    for i in range(len(quality)):
        if quality[i]=='    ' :
            quality[i]=99.0
    #print(quality)
    for i in range(len(value)):
        if value[i]=='         ' :
            value[i]=-999.0
        value[i]=float(value[i])
    #print(value)
    
    obs_time=np.array(obs_time)
   
    

    #print('Debug:',lonp[7], latp[7], value[7], lev[7], obs_time[7])#elv[7],)
    #print(lonp[2356])
    #print(lonp.shape)
    #各種変数の配列（np.arrayの作成）

    press=[]
    press_con=[]

    u=[]
    u_con=[]

    v=[]
    v_con=[]

    z=[]
    z_con=[]

    t=[]
    t_con=[]

    sh=[]
    sh_con=[]

    for i in range(count-3):
        if var[i]=='P' and float(quality[i]) < 4.0:
            press = [lonp[i], latp[i], value[i]]
            press_con.append(press)
        elif var[i]=='U' and float(quality[i]) < 4.0:
            u = [lonp[i], latp[i], value[i]]
            u_con.append(u)
        elif var[i]=='V' and float(quality[i]) < 4.0:
            v = [lonp[i], latp[i], value[i]]
            v_con.append(v)        
        elif var[i]=='Z' and float(quality[i]) < 4.0:
            z = [lonp[i], latp[i], value[i]]
            z_con.append(z)
        elif var[i]=='T' and float(quality[i]) < 4.0:
            t = [lonp[i], latp[i], value[i]]
            t_con.append(t)
        elif var[i]=='Q' and float(quality[i]) < 4.0:
            sh = [lonp[i], latp[i], value[i]] #Q[MG/KG] 
            sh_con.append(sh)
    
    outf_header=inf[28:35]
    print('Processing... ',outf_header)
      
    press_con = np.array(press_con)
    u_con  =  np.array(u_con)
    v_con  =  np.array(v_con)
    z_con  =  np.array(z_con)
    t_con  =  np.array(t_con)
    sh_con =  np.array(sh_con)
    
    with open('datanum.txt','a') as f:
        f.write(outf_header+'\n')
        f.write('u,v,z,t,sh'+'\n')
        f.write(str(len(u_con))+'\n')
        f.write(str(len(v_con))+'\n')
        f.write(str(len(z_con))+'\n')
        f.write(str(len(t_con))+'\n')
        f.write(str(len(sh_con))+'\n')
    f.close()
    

#    outf_header=inf[28:35]

    with open(outf_header+'_P.txt','w') as of:
        np.savetxt(of, press_con ,newline='\n', fmt='%s')
    of.close()

    with open(outf_header+'_U.txt','w') as of:
        np.savetxt(of, u_con ,newline='\n', fmt='%s')
    of.close()

    with open(outf_header+'_V.txt','w') as of:
        np.savetxt(of, v_con ,newline='\n', fmt='%s')
    of.close()

    with open(outf_header+'_Z.txt','w') as of:
        np.savetxt(of, z_con ,newline='\n', fmt='%s')
    of.close()

    with open(outf_header+'_T.txt','w') as of:
        np.savetxt(of, t_con ,newline='\n', fmt='%s')
    of.close()

    with open(outf_header+'_SH.txt','w') as of:
        np.savetxt(of, sh_con ,newline='\n', fmt='%s')
    of.close()


   
print('Finished')
