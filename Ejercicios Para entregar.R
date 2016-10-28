
#Ejercicio matrices


#1
a <- matrix(1:20,4,5,byrow = TRUE) 

#2
ind <- matrix(c(4,3,2,3,4,5),3,2) 
a[ind] 

#3
a[ind] <- 0 

#4
i <- diag(,5,5)

#5
b <- rbind(a,rep(1,5)) 

#6
solve(b) 

#7
comprobacion <- b %*% solve(b) 

#8
comprobacion == i   

#9
n <- 25  
error <- 1/n*sum(comprobacion - i)

#_________________________________________________________________

# Ejercicio Data frames

#1
str(iris) 
dim(iris) #150 obs de 5 variables

#2
#    4 variables numericas y 1 variable factor

#3
summary(iris)

#Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
#Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
#1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
#Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
#Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
#3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
#Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500

#4
attach(iris)
mean(Sepal.Width) #3.057333, coincide
mean(Petal.Length)# 3.758, coincide
range(Sepal.Length)#  4.3 7.9, coincide con los min y max

#5
Sepal.Width[1:5] <- NA
Sepal.Length[1:5] <- NA

#6
#Si hay algun valor NA las funciones mean y range devuelven NA, en cambio, con
# la funcion summary nos devuelve el valor sin tener en cuenta los NA

#7
#Para solucionar el problema anterior bastaria con añadir el parametro na.rm=TRUE

#8
#Para que tengamos en cuenta a la hora de aplicar las funciones que no considere
#esos valores y no los asigne como 0 ya que afectarian a los valores de las funciones.

#9
na.omit(Sepal.Width)
na.omit(Sepal.Length)

#10
tapply(Petal.Length,Species,FUN=mean)





