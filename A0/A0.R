"
BASICS
"

  # Simple object manipulation, vectors and matrices
x<-3
x==3; x==4
y<-c(x,6)
y
1:10
seq(0,10,length=41)
seq(0,10,by=0.25)
rep(2,5)
rep(1:3,5)
y=c(1.4,1.6,7.5,3.1,9.5,1.0,3.8,2)
length(y)
y[2]
y[c(1,4,5)]
y[-1]
y<4
y[y<4]
which(y>2)
y[which(y>2)]
matrix(1:6,nrow=2); matrix(1:6,ncol=3)
M=matrix(1:6,ncol=3,byrow=TRUE); M
dim(M); nrow(M); ncol(M)
M[2,3]; M[,3]; M[2,]; M[1,1:2]
yv=c(y,5.0)
yM=matrix(yv,ncol=3,byrow=TRUE)
rbind(yM,M)
t(M); M+M; M-M; M%*%t(M); t(M)%*%M
### Also scalar product of a vector with %*%
### Using only * is element-wise
det(yM)
solve(yM)

  # Plotting
help(boxplot); boxplot(y)
z=c(2.7,4.3,9.5,1.4,5.5,7.2); boxplot(y,z)
x=seq(0,10,length=31); x
y=sin(x); y
plot(x,sin(x))
plot(x,sin(x),type="l",xlab="x",ylab="sin(x)")

x=seq(0,10,length=300)
plot(x,sin(x),type="l")
plot(x,y,main="Plot",xlab="x",ylab="y",pch=15,cex=1.5,col="blue")
points(x,cos(x),pch=15,col="red")
abline(v=1,lty=2,lwd=2)
abline(a=-0.3, b=0.02)
z=seq(from=0,to=1.2,by=0.01); f=212.68*z/(0.06412+z)
lines(z,f,col="green",lwd=1.5)
## Multiple plots:         par(mfrow=c(n,m))

  # Arithmetic and build-in R functions, getting help
2*3-7; 2^3
y^3
4*(3:9)
mean(y)
var(y)
sum((y-mean(y))^2)/(length(y)-1)
sort(y)
sample(y)
median(y)
?numeric

  # Simulating data
x=rnorm(100)
hist(x,nclass=30)
hist(x,prob=TRUE)
x=rbinom(50,30,0.5)

  # Loops
m=numeric(500)
for (i in 1:500) m[i]=mean(rexp(25))
hist(m)

hist(m,prob=TRUE)
u=seq(min(m),max(m),length=100)
lines(u,dnorm(u,mean(m),sqrt(var(m))))
hist(rexp(500))

  # Reading data from files
data=read.table(file="C:\\Users\\Angel\\Desktop\\VU IA\\P4\\EDDA\\Assignments\\A0\\mortality.txt",header=TRUE)
data # to view the data set
head(data) # to view first rows (useful if data is too large)
dim(data) # the numbers of rows and columns in your data
data$teen
data[,3]
data[1:5,3]
names(data) <- c("name1","name2","name3","name4")

  # Data types
labels=1:10
labels
sum(labels)

labels=as.factor(labels)
labels
sum(labels)

  # Histograms and QQ-plots
qnorm(0.95); qnorm(0.975); qnorm(0.99)
x=rnorm(100)
x=runif(100)
x=rchisq(30,5)

par(mfrow=c(1,2))
hist(x)
qqnorm(x)

hist(10*x+3)
qqnorm(10*x+3)

  # Two-sample t-test
n=30; m=30; mu=180; nu=175; sd=10
x=rnorm(n,mu,sd); y=rnorm(m,nu,sd)
t.test(x,y,var.equal=TRUE)
t.test(x,y,var.equal=TRUE)[[3]]

n=m=30; mu=180; nu=175; sd=10; B=1000; p=numeric(B)
for (b in 1:B) {x=rnorm(n,mu,sd); y=rnorm(m,nu,sd)
p[b]=t.test(x,y,var.equal=TRUE)[[3]]}
power=mean(p<0.05)

  # Practice R-session
x=1:20
x
m=matrix(x,4,5,byrow=T) 
m
m[2,3]
m[2,]
m[,3]
y=sample(1:100,20)
z=x+y
y=x+2*y
cbind(x,y)
plot(x,y)
abline(100,2)
x=rnorm(50,0,sqrt(2))
y=rnorm(50)
mean(x)
sd(x)
var(x)
cor(x,y)
x[x<0]
sum(x<0)
hist(x,prob=T)
help(hist)
?hist
u=seq(-5,5,0.1)
v=dnorm(u,0,sqrt(2))
lines(u,v)
{hist(x,prob=T)
  + lines(u,v)}
plot(ecdf(x))
lines(u,pnorm(u,0,sqrt(2)))
qqnorm(x)
data=rexp(25,rate=0.25)


  # E1
#a
x=rnorm(100); y=rnorm(100000)
par(mfrow=c(2,3))
mean(x);sd(x)
mean(y);sd(y)
u=seq(-5,5,0.1)
v=dnorm(u,0,1)
w=pnorm(u,0,1)
hist(x,prob=T);lines(u,v)
plot(ecdf(x));lines(u,w)
qqnorm(x)
hist(y,prob=T);lines(u,v)
plot(ecdf(y));lines(u,w)
qqnorm(y)

#b
pnorm(2,mean=0,sd=1)
1-pnorm(-0.5,mean=0,sd=1)
pnorm(2,mean=0,sd=1)-pnorm(-1,mean=0,sd=1)

#c
p1=sum(x<2)/length(x)
p2=sum(y<2)/length(y)
p3=sum(x>-0.5)/length(x)
p4=sum(y>-0.5)/length(y)
p5=sum(x<2&x>-1)/length(x)
p6=sum(y<2&y>-1)/length(y)

#d
x=rnorm(100,3,2); y=rnorm(100000,3,2)
par(mfrow=c(2,3))
mean(x);sd(x)
mean(y);sd(y)
hist(y,prob=T);lines(u,v)
plot(ecdf(y));lines(u,w)
qqnorm(y)
hist(x,prob=T);lines(u,v)
plot(ecdf(x));lines(u,w)
qqnorm(x)
hist(y,prob=T);lines(u,v)
plot(ecdf(y));lines(u,w)
qqnorm(y)

pnorm(2,mean=3,sd=2)
1-pnorm(-0.5,mean=3,sd=2)
pnorm(2,mean=3,sd=2)-pnorm(-1,mean=3,sd=2)

#e
x=rnorm(1000)
y=5*x-10
u=seq(-20,15,0.1)
v=dnorm(u,-10,5)
w=pnorm(u,-10,5)
hist(y,prob=T);lines(u,v)
plot(ecdf(y));lines(u,w)
qqnorm(y)

  # E2
par(mfrow=c(1,3))
s1=rlnorm(10000,2,2)
s2=rbinom(50,40,0.25)
s3=runif(60,-2,3)
s4=rpois(200,9)
hist(s1,prob=T,xlim=c(0,100),breaks=1000)
boxplot(s1)
qqnorm(s1)
hist(s2,prob=T)
boxplot(s2)
qqnorm(s2)
hist(s3,prob=T)
boxplot(s3)
qqnorm(s3)
hist(s4,prob=T)
boxplot(s4)
qqnorm(s4)

  # E3
