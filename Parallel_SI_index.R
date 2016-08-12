# Compute Si index for a given sigma and a particular K

library(foreach)
library(doMC)
library(doParallel)
library(ROCR)
library(cluster)
library(kernlab)
cluster_size<-size(of_sm4_1_0.008) #array for number of elements in each cluster
clusts <-sort(unique(of_sm4_1_0.008)) #number of clusters
sigma_1<-0 #summation 1
sigma_2<-0 #summation 2
sigma<-0.008 #given sigma value
stopCluster(cl) #stop cluster if already running
cl<-makeCluster(3) #specify the number of clusters
registerDoParallel(cl) #do parallel computation

SIindex<-function(i) #function returning value of SI index for each element
{
  cluster_size<-size(of_sm4_1_0.008)
  clusts <-sort(unique(of_sm4_1_0.008))
  sigma_1<-0
  sigma_2<-0
  sigma<-0.008
  temp<-rep(200000000000,length(clusts)-1)#for choosing minimum value of b, temp is placeholder
  for(j in 1:length(of_sm4_1_0.008)) #for a in Si index
  {
    if((of_sm4_1_0.008[j]==of_sm4_1_0.008[i])&&(i!=j))
    {
      sigma_1<-sigma_1-2*exp(-dist(rbind(Part_matrix[i,],Part_matrix[j,]))/sigma*sigma) 
      sigma_2<-sigma_2+exp(-dist(rbind(Part_matrix[j,],Part_matrix[j,]))/sigma*sigma)
    }
  }   
  a<-(exp(-(dist(rbind(Part_matrix[i,],Part_matrix[i,]))/sigma*sigma))+sigma_1+sigma_2)/cluster_size[of_sm4_1_0.008[i]] 
  sigma_1<-0
  sigma_2<-0
  for(k in 1:length(clusts)) #for b in SI index
  {
    if((k==of_sm4_1_0.008[i])) #skipping the same cluster points
    {
      next();
    }
    else
    {
      for(j in 1:length(of_sm4_1_0.008))
      {
        if(of_sm4_1_0.008[j]==k)
        {
          sigma_1<-sigma_1-2*exp(-dist(rbind(Part_matrix[i,],Part_matrix[j,]))/sigma*sigma)
          sigma_2<-sigma_2+exp(-dist(rbind(Part_matrix[j,],Part_matrix[j,]))/sigma*sigma) 
        }
      }
    }
    
    if(!(k==of_sm4_1_0.008[i]))
      temp[k]<-(exp(-dist(rbind(Part_matrix[i,],Part_matrix[i,]))/sigma*sigma)+sigma_1+sigma_2)/cluster_size[k]
    sigma_1<-0
    sigma_2<-0
  }
  b<-min(temp) #use minimum value of in temp array as value of b
  return(b-a[1])/max(b,a[1]) #return value of b-a/max(b,a)
}

store1<-foreach(i = 1:length(of_sm4_1_0.008),.packages='kernlab') %dopar% SIindex(i) #list of values , to mean, use v<-mean(unlist(store))
registerDoSEQ() #unregistering the parallel backened
