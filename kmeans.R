
  clusts <- sort(unique(k1$cluster))
  coeffs <- rep(-2,length(clusts))
  for(i in 1:length(k1$cluster)){
    cdist <- rep(0,length(clusts))
    for(j in clusts){
      cdist[j] <- dist(rbind(k1$centers[j,],Allpara_nazero[i,]))
    }
    a <- cdist[k1$cluster[i]]
    b <- min(cdist[clusts != k1$cluster[i]])
    coeffs[i] <- (b-a) / max(b,a)
  }
  return(mean(coeffs))

  clusts <- sort(unique(k2$cluster))
  coeffs <- rep(-2,length(clusts))
  for(i in 1:length(k2$cluster)){
    cdist <- rep(0,length(clusts))
    for(j in clusts){
      cdist[j] <- dist(rbind(k2$centers[j,],Allpara_nazero[i,]))
    }
    a <- cdist[k2$cluster[i]]
    b <- min(cdist[clusts != k2$cluster[i]])
    coeffs[i] <- (b-a) / max(b,a)
  }
  (mean(coeffs))
  
  clusts <- sort(unique(k3$cluster))
  coeffs <- rep(-2,length(clusts))
  for(i in 1:length(k3$cluster)){
    cdist <- rep(0,length(clusts))
    for(j in clusts){
      cdist[j] <- dist(rbind(k3$centers[j,],Allpara_nazero[i,]))
    }
    a <- cdist[k3$cluster[i]]
    b <- min(cdist[clusts != k3$cluster[i]])
    coeffs[i] <- (b-a) / max(b,a)
  }
  (mean(coeffs))
  
  clusts <- sort(unique(k4$cluster))
  coeffs <- rep(-2,length(clusts))
  for(i in 1:length(k4$cluster)){
    cdist <- rep(0,length(clusts))
    for(j in clusts){
      cdist[j] <- dist(rbind(k4$centers[j,],Allpara_nazero[i,]))
    }
    a <- cdist[k4$cluster[i]]
    b <- min(cdist[clusts != k4$cluster[i]])
    coeffs[i] <- (b-a) / max(b,a)
  }
  (mean(coeffs))
  
  clusts <- sort(unique(k5$cluster))
  coeffs <- rep(-2,length(clusts))
  for(i in 1:length(k5$cluster)){
    cdist <- rep(0,length(clusts))
    for(j in clusts){
      cdist[j] <- dist(rbind(k5$centers[j,],Allpara_nazero[i,]))
    }
    a <- cdist[k5$cluster[i]]
    b <- min(cdist[clusts != k5$cluster[i]])
    coeffs[i] <- (b-a) / max(b,a)
  }
  (mean(coeffs))
  
  
