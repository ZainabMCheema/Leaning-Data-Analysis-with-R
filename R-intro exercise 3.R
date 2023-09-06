n1<- 15
typeof(n1)

n2 <- 1.2
typeof(n2)

n3 <- 1

typeof(n3)
c1<- "C"
typeof(c1)

c2<- "this is a exercise "
typeof(c2)

v1 <- c(1,2,3,4,5)

v1
v2 <- c("a", "b", "c")

v3 <- c(T, F, F, T, T)

m1 <- matrix(c(1,2,3,4,5,6), nrow=2)
m1
m2 <- matrix(c( "a", "b",
               "c", "d"),
              nrow= 2,
              byrow=T
)
m2
a1 <- array(c(1:24), c(4, 3, 2))
a1

Vnumeric <-c(1, 2, 3)
Vchara <- c("a", "b", "c")
Vlogic<- c( T, F, T)

df <- cbind(Vnumeric, Vchara, Vlogic)
df

df<- as.data.frame(cbind(Vnumeric, Vchara, Vlogic))
df

o1 <-c(1, 2, 3)
o2 <- c("a", "b", "c")
o3<- c( T, F, T)

list1 <-list(o1, o2, o3)
list1












