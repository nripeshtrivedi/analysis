library(cluster)
library(kernlab)
library(foreach)
library(doParallel)
clusts <-sort(unique(sm8)) #number of clusters clusts<-{1,2,3} for k=3
sigma_1<-0 #summation 1
sigma_2<-0 #summation 2
a<-rep(0,1) #list of lenght 1, as placeholder
b<-rep(0,1)  #list of lenght 1, as placeholder
c<-rep(0,1) #list of lenght 1, as placeholder
sigma<-0.00782 #sigma value used
sum<-rep(-2,length(clusts)) #different arrays to use for calculating distortion score
cluster_sum<-rep(-2,length(clusts)) 
totalsum<-rep(-2,length(clusts))
square_error<-rep(-2,length(clusts)) #total error
stopCluster(cl) #stop cluster is already running
cluster_size<-size(sm8)
cl<-makeCluster(8) #intialize paralllelisation
registerDoParallel(cl) #parallel computation

compute<-function(i)
{
  a<-0
  for(j in 1:length(sm8))
  {
    if(i!=j)
    {
      if((sm8[i]==1)&&(sm8[j]==1))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==2)&&(sm8[j]==2))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==3)&&(sm8[j]==3))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==4)&&(sm8[j]==4))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==5)&&(sm8[j]==5))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==6)&&(sm8[j]==6))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==7)&&(sm8[j]==7))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==8)&&(sm8[j]==8))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
      if((sm8[i]==9)&&(sm8[j]==9))
      {
        a=a+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
      }
    }
  }
  return (a)
}
var1<-foreach(i = 1:length(sm8),.combine=c) %dopar% compute(i) #specify the number of points, othereise use 1:length(formal specc class object)
compute_clustersum<-function(i)
{
  b<-0
  for(j in 1:length(sm8))
  {
    if((sm8[i]==sm8[j])&&(i!=j))
    {
      b<-b+exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[j,]))/sigma*sigma)
    }
    
  }
  return (b)
}
var2<-foreach(i = 1:length(sm8),.combine=c) %dopar% compute_clustersum(i) #specify the number of points, othereise use 1:length(formal specc class object)

total_sum<-function(i)
{
  c<-exp(-dist(rbind(Allpara_nazero[i,],Allpara_nazero[i,]))/sigma*sigma)
  return (c)
}

var3<-foreach(i = 1:length(sm8),.combine=c) %dopar% total_sum(i) #specify the number of points, othereise use 1:length(formal specc class object)


for(i in 1:length(sm8)) #iterating over the points, in simple case use 1:length(formal specc class object)
{
  sum[sm8[i]]<-sum[sm8[i]]+var1[i]
  cluster_sum[sm8[i]]<-cluster_sum[sm8[i]]+var2[i]
  totalsum[sm8[i]]<-totalsum[sm8[i]]+var3[i]
}
for(count in 1:9) #dividing by the number of data points in each cluster, iterate according to the number of clusters
{
  sum[count]<-sum[count]/cluster_size[i]
  cluster_sum[count]<-cluster_sum[count]/(cluster_size[i]*cluster_size[i])
}
for(count in 1:9) #summing the error, use number of clusters as upper limit
  square_error[count]<-totalsum[count]-2*sum[count]+cluster_sum[count]



