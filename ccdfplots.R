
par(pin=c(3.1,3.1))
#showing the heavy tails along the nine dimensions to show the general nature of the data
par(mar=c(3.5,3.5,3.5,3.5)+0.4)
plot(log(quantile(Allpara_nazero[,1],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Account logins",col="blue",pch="+",ps=".5")

plot(log(quantile(Allpara_nazero[,2],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Forum posts",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,3],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Messages exchanged",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,4],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Conversartion requests",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,5],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Forum views",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,6],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Help views",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,7],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Page views from web",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,8],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Page views from app",col="blue",pch="+",ps=".5")
plot(log(quantile(Allpara_nazero[,9],p=p)),log(1-p),ylab="Pr(X > x)",xlab="x",main="Active days",col="blue",pch="+",ps=".5")
