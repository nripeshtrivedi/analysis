
par(pin=c(2.1,2.1))#adjust accordingly

#plot of users
par(mar=c(.007,.005,.007,.005)+3.9)
pieplot<-c(64609,31 ,1880 ,145 ,23, 397) # number generated from the formal specc class object 
                                              # with the number of points in each cluster
percentlabels<- round(100*B/sum(pieplot), 1)
lbls <- c("I (96.3%)", " II (0.04%)", "III (2.80%)", " IV (0.21%)", "V (0.03%)", " VI (0.5%)")
cols <- c("grey90","grey50","black","grey30","white","grey70","grey50")
pie(pieplot, main="Distribution of users per cluster using k means", col=cols) #percentage of users in each cluster
legend("topright", c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"), cex=0.8,col=cols)
#initiation plot
variance<-c(3.40,3.57,3.72, 75.59,9.95,3.75) #numbers generated using the centroid positions of in corresponding dimensions
barplot(variance, horiz=TRUE,names.arg=c("I","II","III","IV","V","VI" ), cex.names=0.6, col="blue", main="relative initiation of users from each clusters", xlab="relative initiation", ylab="cluster labels")
#loyality plot
variance<-c(0.31,0.337,0.44,96.51,0.0191,0.478)  #numbers generated using the centroid positions of in corresponding dimensions
barplot(variance, horiz=TRUE,names.arg=c("I","II","III","IV","V","VI"), cex.names=0.6, col="blue", main="relative loyality of users from each clusters", xlab="relative loyality", ylab="cluster labels")
#interaction plot
variance<-c(2.74,18.60,12.22,58.96,0.188,7.27)  #numbers generated using the centroid positions of in corresponding dimensions
,"VI"), barplot(variance, horiz=TRUE,names.arg=c("I","II","III","IV","V"cex.names=0.6, col="blue", main="relative interaction of users from each clusters", xlab="relative interaction", ylab="cluster labels")

variance<-(0.05056948, 0.0010630220, 18.001367, 0.4905847, 0.01799544, 0.01442673, 0.011085801)
L<-c(0.0076,0.0088,0.9990,0.388,0.0101,0.0113)
R<-c(0.0868 ,0.0899, 0.0928, 0.9550, 0.2346, 0.0925)

axis(1, at=c(0,2100), labels=c("",""), lwd.ticks=0)
axis(1, at=c(0), labels=c(""), lwd.ticks=1)

counts<-rbind(L, R)

df.plot<-barplot(counts, main="Initiation",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Normalized centroid co-ordinates",beside=TRUE, col=c("black","white"),log="y")
legend( 15.7,1.51,
        legend = rownames(counts),
        fill=c("black","white") , bty = "n")


M<-c(0.0445,0.3026,0.1987,0.9235,0.0027,0.1182 )
P<-c(0.0012,0.0004,0.0026,0.9999,0.0054,0.0022)
V<-c(0.0013,0.0014,0.0015, 0.9999,0.0081,0.0014)
counts<-rbind(M,P,V)
barplot(counts, main="Interaction",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Normalized centroid co-ordinates", col=c("black","gray","white")
        , beside=TRUE, legend = rownames(counts),log="y")
legend( 22.1,1.75,
        legend = rownames(counts),
        fill=c("black","gray","white"), cex=0.8,box.lty = 0)

{
H<-c(0.0051, 0.0057,0.0048,0.9995,0.0279,0.0068)
PW<-c(0.0011,0.0010,0.0018,0.9999,0.0084,0.0022)
PA<-c(2.43e-05 ,NA,3.23e-04,9.99e-01,8.61e-04,4.81e-05)
A<-c(0.0055,0.0060,0.0081,0.9993,0.0328,0.0082)

counts<-rbind(H,PW,PA,A)
barplot(counts, main="Loyality",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Normalized centroid co-ordinates", col=c("black","gray","white","darkgray")
        , beside=TRUE, legend = rownames(counts), log="y")
axis(1,at=c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=5+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=10+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=15+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=20+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=25+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
legend( 27.1,2.16,
        legend = rownames(counts),
        fill=c("black","gray","white","darkgray"), cex=0.8,box.lty = 0)
axis(2,at=c(5e-05, 5e-03, 5e-01) ,labels=c(5e-05, 5e-03, 5e-01,"0"))
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)
barplot(d, horiz=TRUE,names.arg=c("I","II","III","IV","V","VI" ), cex.names=0.6, col="blue", main="relative initiation of users from each clusters", xlab="relative initiation", ylab="cluster labels",pch=t(1:2))

B <- c(5, 3, 1, 8, 9, 4, 6)
cols <- c("grey90","grey50","black","grey30","white","grey70","grey50")
percentlabels<- (100*pieplot/sum(pieplot))
pielabels<- paste(percentlabels, "%", sep="")
pie(pieplot, main="Distribution of users using k-means", col=cols,  cex=0.000000009)
legend("topright", c("I (96.3%)", "II (0.04%)", "III (2.80%)", "IV (0.21%)", "V (0.03%)", "VI (0.5%)"), cex=0.8, fill=cols)
legend("topright", c("I (96.3%)","II (0.04%)","III (2.80%)","IV (0.21%)","V (0.03%)","VI (0.5%)"), cex=0.8, fill=cols)

#plot of users
pieplot<-c(13170,2682 ,7914,20314,16348,6657) # number generated from the formal specc class object 
# with the number of points in each cluster
cols <- c("grey90","grey50","black","grey30","white","grey70","grey50")
lbls <- c("I (19.6%)", " II (3.99%)", "III (11.78%)", " IV (30.28%)", "V (24.37%)", " VI (9.92%)")
pie(pieplot, labels = lbls, main="Distribution of users using Kernel k-means",col=cols) #percentage of users in each cluster

#trace plots
SI<-c(0.184, 0.199, 0.190, 0.196, 0.193)
k<-c(5,6,6,6,5)
Entropy<-c(1.250008, 1.626085, 1.682574, 1.673561, 1.243552)
data<-rbind(SI, k, Entropy)
traceplot(as.mcmc(data))
#barplots for kmeans clusters
first<-0.003219844*100
second<-0.9494365*100
third<-0.0001788802*100
fourth<-0.009361398*100
fifth<-0.0005962674*100
sixth<- 0.03720708*100
L<-c(0.00193658888,7.380943e-05 ,0.6383778 ,0.003333717, 0.3562781,0)
R<-c(0.0009847397 ,0,0.0928, 0.8799447,0.0001483922, 0.1189221 ,0)
counts<-rbind(first, second, third, fourth, fifth, sixth)
barplot(counts, main="",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Percentage of users per cluster",col=c("grey90","grey50","black","grey30","white","grey70","grey50"),
        beside=TRUE,box.ity=0)
km<-kmeans(Part_matrix,6)
#data normalization

fun <- function(x){ 
  a <- min(x) 
  b <- max(x) 
  (x - a)/(b - a) 
}
normed <- as.data.frame(apply(km$centers, 2,fun))
L<-c(normed[1,1], normed[2,1],NA, normed[4,1], normed[5,1], NA)
R<-c(normed[1,2], NA,normed[3,2], normed[4,2], normed[5,2],NA)
counts<-rbind(L, R)

barplot(counts, main="Initiation",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Normalized centroid co-ordinates",beside=TRUE, col=c("black","white"), log="y")
legend( 15.9,1.91,
        legend = rownames(counts),
        fill=c("black","white") , bty = "n")
axis(1,at=c(1,2,3),labels=rep("",3),lwd.ticks=0)
axis(1,at=3+c(1,2,3),labels=rep("",3),lwd.ticks=0)
axis(1,at=6+c(1,2,3),labels=rep("",3),lwd.ticks=0)
axis(1,at=9+c(1,2,3),labels=rep("",3),lwd.ticks=0)
axis(1,at=12+c(1,2,3),labels=rep("",3),lwd.ticks=0)
axis(1,at=15+c(1,2,3),labels=rep("",3),lwd.ticks=0)

legend( 16.5,2.02,
        legend = rownames(counts),
        fill=c("black","white"), cex=0.8, box.lty=0, bty = "n")

M<-c(normed[1,3], normed[2,3],NA, normed[4,3], normed[5,3], normed[6,3])
FP<-c(normed[1,4], normed[2,4],normed[3,4], normed[4,4], normed[5,4], NA)
FV<-c(normed[1,5], NA,normed[3,5], normed[4,5], normed[5,5], NA)


counts<-rbind(M, FP,FV)
barplot(counts, main="Interaction",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Normalized centroid co-ordinates", col=c("black","gray","white")
        , beside=TRUE,log="y")
axis(1,at=c(1,2,3),labels=rep("",3),lwd.ticks=0)
axis(1,at=4+c(1,2,3,4),labels=rep("",4),lwd.ticks=0)
axis(1,at=8+c(1,2,3,4),labels=rep("",4),lwd.ticks=0)
axis(1,at=12+c(1,2,3,4),labels=rep("",4),lwd.ticks=0)
axis(1,at=16+c(1,2,3,4),labels=rep("",4),lwd.ticks=0)
axis(1,at=20+c(1,2,3,4),labels=rep("",4),lwd.ticks=0)
legend( 21.7,1.95,
        legend = rownames(counts),
        fill=c("black","gray","white"), cex=0.8, bty="n")

H<-c(normed[1,6], NA,normed[3,6], normed[4,6], normed[5,6], NA)
PW<-c(normed[1,7], normed[2,7],normed[3,7], normed[4,7], normed[5,7], NA)
PA<-c(NA, NA, normed[3,8], normed[4,8], normed[5,8], NA)
A<-c(normed[1,9], normed[2,9],normed[3,9], normed[4,9], normed[5,9], NA)
counts<-rbind(H,PW,PA,A)
barplot(counts, main="Loyality",names.arg=c("I","II","III","IV","V","VI" ),
        xlab="cluster labels",ylab="Normalized centroid co-ordinates", col=c("black","gray","white","darkgray")
        , beside=TRUE,log="y")
axis(1,at=c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=5+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=10+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=15+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=20+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
axis(1,at=25+c(1,2,3,4,5),labels=rep("",5),lwd.ticks=0)
legend( 26.5,2.02,
        legend = rownames(counts),
        fill=c("black","gray","white","darkgray"), cex=0.8, bty="n")
x<-rcorr(Part_matrix, type="pearson")
#pearson coefficient
library(heatmaply)
nba_heatmap <- heatmap(counts, Rowv=NA, Colv=NA, col = heat.colors(256), scale="column", margins=c(5,10))
#making a heatmap for the matrix
L<-c(1.00000000 ,0.273413658, -0.015613228,  0.39575982,  0.269812524,  0.30846977,  0.332725197,0.24058941,  0.80467337)
R<-c(0.27341366, 1.000000000,-0.002378924, 0.31686783, 0.861290216, 0.27449927, 0.427404970, 0.29520828,  0.32654196)
M<-c(-0.01561323,-0.002378924,1.000000000, -0.01363365, -0.004240911, -0.01542459, -0.008156767, -0.00724091,-0.01877278)
P<-c(0.39575982, 0.316867828, -0.013633653, 1.00000000, 0.323659897, 0.21763651, 0.556398213,0.15237318,0.36615095)
V<-c(0.26981252, 0.861290216, -0.004240911, 0.32365990, 1.000000000, 0.29328206, 0.512243211, 0.342952520, 0.323410273)
H<-c(0.30846977,0.274499267, -0.015424590, 0.21763651, 0.293282062, 1.00000000, 0.231731534, 0.16568840,0.27592298)
PW<-c( 0.33272520, 0.427404970, -0.008156767, 0.55639821, 0.512243211, 0.23173153, 1.000000000, 0.27961138 ,0.35527185)
PA<-c(0.24058941, 0.295208275, -0.007240910, 0.15237318, 0.342952520, 0.16568840, 0.279611379, 1.00000000, 0.28409550)
A<-c(0.80467337, 0.326541960, -0.018772783, 0.36615095, 0.323410273, 0.27592298, 0.355271846, 0.28409550, 1.00000000)
counts<-rbind(L,R,M,P,V,H, PW, PA, A)
datf<-data.frame(L,R,M,P,V,H,PW,PA,A)

x = c("L","R","M","P","V","H", "PW", "PA", "A"), y = c("L","R","M","P","V","H", "PW", "PA", "A"),
p<-plot_ly(z = counts, x = c(""), y = c("L","R","M","P","V","H", "PW", "PA", "A"),
        type = "heatmap")

Sys.setenv("plotly_username"="NripeshTrivedi")
Sys.setenv("plotly_api_key"="d6oxmdkyhp")
plotly_POST(p, "Sample Plotly Chart")


plot(1:10, xaxt = "n")
axis(1, xaxp = c(2, 9, 7))
axis(1,at=c(0.5,1,2,3,3.5),labels=rep("",5),lwd.ticks=0)
axis(1,at=3+c(0.5,1,2,3,3.5),labels=rep("",5),lwd.ticks=0)
axis(1, at=c(0,2100), labels=c("",""), lwd.ticks=0)
axis(1,at=4+c(0.5,1,2,3,3.5),col="red",line=2.5,tick=T,labels=rep("",5),lwd=2,lwd.ticks=0)

#subclu
library(subspace)
x<-SubClu(Part_matrix, epsilon = 2, minSupport = 8)
#percentage users in each cluster
percent1<-(counts[1]/(counts[1]+counts[2]+counts[3]+counts[4]))*100
percent2<-(counts[2]/(counts[1]+counts[2]+counts[3]+counts[4]))*100
percent3<-(counts[3]/(counts[1]+counts[2]+counts[3]+counts[4]))*100
percent4<-(counts[4]/(counts[1]+counts[2]+counts[3]+counts[4]))*100

counts<-cbind(percent1,percent2, percent3, percent4)
barplot(counts, names.arg=c("I","II","III","IV" ),
        xlab="cluster labels",ylab="Percentage of users per cluster", col="black")

