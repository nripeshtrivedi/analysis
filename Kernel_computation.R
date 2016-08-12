library(foreach)
library(doParallel)
library(ROCR)
library(cluster)
library(kernlab)


#computation for 25% of data
# to point out the object -
 
#use  -----of_sm_2_sigmavalue for k=2
#for other k values use-- of_sm(k-1)_1_sigmavalue
of_sm_2_0.003<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.003))


of_sm2_1_0.003<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.003))


of_sm3_1_0.003<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.003))

of_sm4_1_0.003<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.003))


of_sm5_1_0.003<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.003))

of_sm6_1_0.003<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.003))

of_sm7_1_0.003<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.003))

# For sigma=0.009

of_sm_2_0.009<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.009))


of_sm2_1_0.009<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.009))


of_sm3_1_0.009<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.009))

of_sm4_1_0.009<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.009))


of_sm5_1_0.009<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.009))

of_sm6_1_0.009<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.009))

of_sm7_1_0.009<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.009))
of_sm8_1_0.009<-kkmeans(part_matrix, centers=9,kpar=list(sigma=0.009))
# For sigma=0.005

of_sm_2_0.005<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.005))


of_sm2_1_0.005<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.005))


of_sm3_1_0.005<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.005))

of_sm4_1_0.005<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.005))


of_sm5_1_0.005<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.005))

of_sm6_1_0.005<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.005))

of_sm7_1_0.005<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.005))
# For sigma=0.007


of_sm_2_0.007<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.007))


of_sm2_1_0.007<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.007))


of_sm3_1_0.007<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.007))

of_sm4_1_0.007<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.007))


of_sm5_1_0.007<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.007))

of_sm6_1_0.007<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.007))

of_sm7_1_0.007<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.007))



# For sigma=0.00782

of_sm_2_0.00782<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.00782))



of_sm2_1_0.00782<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.00782))


of_sm3_1_0.00782<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.00782))

of_sm4_1_0.00782<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.00782))


of_sm5_1_0.00782<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.00782))

of_sm6_1_0.00782<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.00782))

of_sm7_1_0.00782<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.00782))

# For sigma=0.001

of_sm_2_0.001<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.001))


of_sm2_1_0.001<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.001))


of_sm3_1_0.001<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.001))

of_sm4_1_0.001<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.001))


of_sm5_1_0.001<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.001))

of_sm6_1_0.001<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.001))

of_sm7_1_0.001<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.001))
of_sm8_1_0.001<-kkmeans(part_matrix, centers=9,kpar=list(sigma=0.001))

# For sigma=0.01

of_sm_2_0.01<-kkmeans(part_matrix, centers=2,kpar=list(sigma=0.01))


of_sm2_1_0.01<-kkmeans(part_matrix, centers=3,kpar=list(sigma=0.01))


of_sm3_1_0.01<-kkmeans(part_matrix, centers=4,kpar=list(sigma=0.01))

of_sm4_1_0.01<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.01))


of_sm5_1_0.01<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.01))

of_sm6_1_0.01<-kkmeans(part_matrix, centers=7,kpar=list(sigma=0.01))

of_sm7_1_0.01<-kkmeans(part_matrix, centers=8,kpar=list(sigma=0.01))


#final value of sigma and K used on complete data to generate data plots
usage_sm<-kkmeans(Allpara_nazero,centers=6,kpar=list(sigma=0.009))



#sigma=0.002
of_sm4_1_0.002<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.002))


of_sm5_1_0.002<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.002))

#sigma=0.004
of_sm4_1_0.004<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.004))


of_sm5_1_0.004<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.004))

#sigma=0.006
of_sm4_1_0.006<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.006))


of_sm5_1_0.006<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.006))


#sigma=0.008
of_sm4_1_0.008<-kkmeans(part_matrix, centers=5,kpar=list(sigma=0.008))


of_sm5_1_0.008<-kkmeans(part_matrix, centers=6,kpar=list(sigma=0.008))

#sigma=0.009
sm2_1_0.009<-kkmeans(Allpara_nazero, centers=2,kpar=list(sigma=0.009))
sm3_1_0.008<-kkmeans(Allpara_nazero, centers=3,kpar=list(sigma=0.009))
sm4_1_0.008<-kkmeans(Allpara_nazero, centers=4,kpar=list(sigma=0.009))
sm5_1_0.008<-kkmeans(Allpara_nazero, centers=5,kpar=list(sigma=0.009))
sm6_1_0.008<-kkmeans(Allpara_nazero, centers=6,kpar=list(sigma=0.009))
