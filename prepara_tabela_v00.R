rm(list = ls())
require(foreign)



#####################################################################
#####################>>>>>>>>>>0125<<<<<<<###########################
#####################################################################
setwd("E:\\data_2015\\Mitra\\__Resultados\\Diversity\\Shannon_0125")
ls_tab_0125<-list.files(pattern="*.dbf")

Tab_junc_0125<-NULL
for (i in ls_tab_0125)
  {
    nm<-gsub(".dbf","",i)
    nm<-gsub("FID_","esc_0125_FID",nm)
    
    tb<-read.dbf(i)
    tb<-tb[,-c(2,3,4,9,10)]
    tb$FID<-nm
    Tab_junc_0125<-rbind(Tab_junc_0125,tb)
  
  }
write.table(Tab_junc_0125,"Tab_jun_0125.txt",sep="\t",row.names=F,quote=F)






#####################################################################
#####################>>>>>>>>>>0250<<<<<<<###########################
#####################################################################
setwd("E:\\data_2015\\Mitra\\__Resultados\\Diversity\\Shannon_0250")
ls_tab_0250<-list.files(pattern="*.dbf")
Tab_junc_0250<-NULL
for (i in ls_tab_0250)
{
  nm<-gsub(".dbf","",i)
  nm<-gsub("FID_","esc_0250_FID",nm)
  tb<-read.dbf(i)
  tb<-tb[,-c(2,3,4,9,10)]
  tb$FID<-nm
  Tab_junc_0250<-rbind(Tab_junc_0250,tb)
  
}
write.table(Tab_junc_0250,"Tab_jun_0250.txt",sep="\t",row.names=F,quote=F)




#####################################################################
#####################>>>>>>>>>>0500<<<<<<<###########################
#####################################################################
setwd("E:\\data_2015\\Mitra\\__Resultados\\Diversity\\Shannon_0500")
ls_tab_0500<-list.files(pattern="*.dbf")
Tab_junc_0500<-NULL
for (i in ls_tab_0500)
{
  nm<-gsub(".dbf","",i)
  nm<-gsub("FID_","esc_0500_FID",nm)
  tb<-read.dbf(i)
  tb<-tb[,-c(2,3,4,9,10)]
  tb$FID<-nm
  Tab_junc_0500<-rbind(Tab_junc_0500,tb)
  
}
write.table(Tab_junc_0500,"Tab_jun_0500.txt",sep="\t",row.names=F,quote=F)




#####################################################################
#####################>>>>>>>>>>1000<<<<<<<###########################
#####################################################################
setwd("E:\\data_2015\\Mitra\\__Resultados\\Diversity\\Shannon_1000")
ls_tab_1000<-list.files(pattern="*.dbf")
Tab_junc_1000<-NULL
for (i in ls_tab_1000)
{
  nm<-gsub(".dbf","",i)
  nm<-gsub("FID_","esc_1000_FID",nm)
  
  tb<-read.dbf(i)
  tb<-tb[,-c(2,3,4,9,10)]
  tb$FID<-nm
  Tab_junc_1000<-rbind(Tab_junc_1000,tb)
  
}


write.table(Tab_junc_1000,"Tab_jun_1000.txt",sep="\t",row.names=F,quote=F)




tab_junc_all<-rbind(Tab_junc_0125,Tab_junc_0250,Tab_junc_0500,Tab_junc_1000)
write.table(tab_junc_all,"Tab_jun_ALL.txt",sep="\t",row.names=F,quote=F)


