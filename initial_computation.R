

library("kernlab") #including the kernel kmeans library
Allpara<-cbind(members$numLogins,members$numForumPosts ,members$numMsgUser,members$convRequests,members$forumViews,members$helpViews,members$pageViewsWeb, members$pageViewsApp, members$activedays) #building the data matrix
Allpara_nazero<- Allpara[ apply(Allpara!=0, 1, any), , drop=FALSE) #removing zero rows

nc<-10
seed<-1234
set.seed(seed) #to reproduce the work, set the value of this seed
sm<-kkmeans(Allpara_nazero, centers=2)
sm2<-kkmeans(Allpara_nazero, centers=3)
sm3<-kkmeans(Allpara_nazero, centers=4)
sm4<-kkmeans(Allpara_nazero, centers=5)
sm5<-kkmeans(Allpara_nazero, centers=6)
sm6<-kkmeans(Allpara_nazero, centers=7)
sm7<-kkmeans(Allpara_nazero, centers=8)
sm8<-kkmeans(Allpara_nazero, centers=9)
sm9<-kkmeans(Allpara_nazero, centers=10)

#initial method used for estimation for number of clusters or the value of K, choose the most stable peak.
wss[1] <- sum(withinss(sm))
wss[2]<-sum(withinss(sm2))
wss[3]<-sum(withinss(sm3)) 
wss[4]<-sum(withinss(sm4))
wss[5]<-sum(withinss(sm5))
wss[6]<-sum(withinss(sm6))
wss[7]<-sum(withinss(sm7))
wss[8]<-sum(withinss(sm8))
wss[9]<-sum(withinss(sm9))
plot(2:nc, wss, type="b", xlab="Number of Clusters",ylab="Within groups sum of squares")


