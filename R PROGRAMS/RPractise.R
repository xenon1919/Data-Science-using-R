x=matrix(c(1,2,3,4,5,6), nrow=2,ncol=3,byrow=TRUE)
x
y=cbind(c(1,2,3),c(4,5,6),c(7,8,9))
y
z=rbind(c(1,2,3),c(4,5,6),c(7,8,9))
z
print(dim(x))
print(dim(y))
print(t(x))
print(diag(3))
print(diag(c(1,2,3)))
#Rank of the Matrix
rank_x=qr(x)$rank
print(rank_x)
print(eigen(y))
mat=matrix(c(1,2,0,2,4,0,3,6,1), nrow=3, ncol=3,byrow=TRUE)
print(mat)
print(qr(mat)$rank)
print(ncol(mat)-qr(mat)$rank)
a=matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
a
a[1,2]
a[3,1]
a[,1]
a[3,]
a[,-2]
a[-3,]
a[1:3,1:2]
a
a[2:3,2:3]
vol=function(dia=5,len=100) {
  volume=pi*dia^2*len/4
  return(volume)
}
vol
pd=data.frame("Name"=c("Rishi", "Sai", "Teja"),
              "Age"=c(1,2,3)
)
pd
pd2=subset(pd, Name=="Rishi")
pd2
pd=cbind(pd,"Place"=c("Hyd","Indore","Pune"))
pd
pd=rbind(pd, data.frame(Name="Xeno",Age=12,Place="Delhi"))
pd
