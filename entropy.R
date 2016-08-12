library(kernlab)
library("entropy")
#calculating entropy for subclu
y<-c(2184, 10941, 3382, 17)
y1<-entropy.empirical(y)
y2<-1.682574
all<-cbind(y1, y2, y3)
barplot(all, main="",names.arg=c("SUBCLU","Kernel k-means", "k-means"),
        xlab="",ylab="Entropy",beside=TRUE, col=c("black","gray","white"))
k3<-kmeans(Part_matrix, 4)
cluster_size<-k3$size
y3<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4])
y3<-entropy.empirical(y)

#sigma=0.007 k=5
cluster_size<-size(of_sm4_1_0.007)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4])
entropy.empirical(y)

#sigma=0.007 k=5
cluster_size<-size(of_sm4_1_0.007)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4])
entropy.empirical(y)

#sigma=0.01 k=5
cluster_size<-size(of_sm4_1_0.01)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4])
entropy.empirical(y)

#sigma=0.007 k=6
cluster_size<-size(of_sm5_1_0.007)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6])
entropy.empirical(y)

#sigma=0.009 k=6
cluster_size<-size(of_sm5_1_0.009)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6])
entropy.empirical(y)


#sigma=0.01 k=6
cluster_size<-size(of_sm5_1_0.01)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6])
entropy.empirical(y)

#sigma=0.007 k=7
cluster_size<-size(of_sm6_1_0.007)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6],cluster_size[7])
entropy.empirical(y)

#sigma=0.009 k=7
cluster_size<-size(of_sm6_1_0.009)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6],cluster_size[7])
entropy.empirical(y)

#sigma=0.01 k=7
cluster_size<-size(of_sm6_1_0.01)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6],cluster_size[7])
entropy.empirical(y)

#sigma=0.01 k=9
cluster_size<-size(of_sm7_1_0.01)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6],cluster_size[7],cluster_size[8])
entropy.empirical(y)

#for kmeans
cluster_size<-k1$size
y<-c(cluster_size[1],cluster_size[2])
entropy.empirical(y)

cluster_size<-k2$size
y<-c(cluster_size[1],cluster_size[2],cluster_size[3])
entropy.empirical(y)

cluster_size<-k3$size
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4])
entropy.empirical(y)

cluster_size<-k4$size
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5])
entropy.empirical(y)

cluster_siz<-k5$size
y<-c(cluster_siz[1],cluster_siz[2],cluster_siz[3],cluster_siz[4],cluster_siz[5],cluster_siz[6])
entropy.empirical(y)

#sigma=0.009 k=2
cluster_size<-size(of_sm_2_0.009)
y<-c(cluster_size[1],cluster_size[2])
entropy.empirical(y)

#sigma=0.009 k=3
cluster_size<-size(of_sm2_1_0.009)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3])
entropy.empirical(y)

#sigma=0.009 k=4
cluster_size<-size(of_sm3_1_0.009)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4])
entropy.empirical(y)

#sigma=0.009 k=5
cluster_size<-size(of_sm4_1_0.009)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5])
entropy.empirical(y)


#sigma=0.009 k=6
cluster_size<-size(of_sm5_1_0.009)
y<-c(cluster_size[1],cluster_size[2],cluster_size[3],cluster_size[4],cluster_size[5],cluster_size[6])
entropy.empirical(y)

#calculating entropy
k <- c(5, 5,6, 6, 6)
sigma <-c(0.01,0.007,0.007, 0.009, 0.01)
entropy<-c(1.243552, 1.250008,1.673561, 1.682574, 1.626085)
df<-cbind(k,sigma,entropy)
df<-rbind(k,sigma, entropy)
scatterplot3d(k, sigma, entropy, highlight.3d = TRUE, col.axis = "blue",
              col.grid = "lightblue", main = "Variation of entropy with k and sigma", pch = 20)
df <- setNames(data.frame(k,sigma, entropy),c("k", "sigma", "entropy"))
Sys.setenv("plotly_username"="NripeshTrivedi")
Sys.setenv("plotly_api_key"="d6oxmdkyhp")

p<-plot_ly(df, x = k, y = sigma, z = entropy, type = "scatter3d")
plotly_POST(p, "Sample Plotly Chart")
