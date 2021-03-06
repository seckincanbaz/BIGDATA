#1.1 Vekt�r Olusturma
x <- 3

x = 3

x[4] <- 7.5
x

x <- 1:8 # ard���k tam say� vekt�r� olu�turur.
x

y <- 15:11 #azalan bir ard���k tam say� vekt�r� olu�turur. 
y

y <- x+3
y

x <- 1:8
y <- 1:4
x+y

x <- 1:8
y <- 1:3
x+y


x<- c(4,8,15, 16 , 23 , 42)
y<- c ( 501,505,578,586)
z<- c(x,y)

length(z)

m<-c(1,5,1,4,7,4,1)
unique(m) # olu�turulan m vekt�r�ndeki tekil de�erler

table(m) #tekil de�erlerin ka� adet oldu�u

z<- rev(z) # eleman s�ras�n� tersine �evir
z

x<- rep(5,10) #5 de�erini 10 kez tekrar et
x
y<- c(3,5,7)
z<- rep(y,4) #z vekt�r�n� 4 kez tekrar et
z

rep(y,c(2,3,5)) # y nin elemanlar�n� teker teker belirlenen de�erlerde tekrar et

x<- seq(2,3,length.out = 21) #lenght.out vekt�r�n uzunlu�unu belirleyen parametre ad�.
x

x<- seq(2,3,by=0.06)
x

#1.2 Mant�ksal Ifadeler

x<- 10:20
x
x<17 #x in hangi de�erleri 17 den k���kt�r.
x<=17
x>14
x>=14
x==16
x!=16
x<=16 & x>=12 # x ' in hangi de� e r l e r i 16dan k���k e � i t ve 12den b�y�k e � i t t i r
( x<=11) | ( x>=18)

ind=which ( x<17) # x ' in 17den k���k de� e r l e r i n i n i n d e k s l e r i nedi r
ind

ind2=which ( x==16) #x ' in hangi i n d e k s t e k i de� e r i 16ya e � i t t i r
ind2
 # [ 1 ] 7

v1=90:120 
v2=10:100

ind3=which(v1 %in% v2)
ind3

x<- 1:20
y<- (x>=8)*(x)
y



siparisMiktari <- 30:50
birimMaliyet <- 7*siparisMiktari*(siparisMiktari<40)+6.5*siparisMiktari*(siparisMiktari>=40)
birimMaliyet

sabitMaliyet <- 50*(siparisMiktari<=45)+15*(siparisMiktari>45)
sabitMaliyet

toplamMaliyet <- sabitMaliyet+birimMaliyet
toplamMaliyet

siparisMiktari[toplamMaliyet <=318] #318TL' den daha dusuk mal iye t e sahip olan s i p a r i s mi k t a r l a r i n i g o s t e r i r

toplamMaliyet[toplamMaliyet <=318]


x <- seq( 5 , 8 , by=0.3) # 11 elemanl  b i r vekt � r olu � turuyoruz
x
length(x)

y1 <- x [3:7] # 3�nc� eleman  ndan 7 i n c i elemana kadar olan k  sm n  a l  yoruz
y1

y2 <- x [ 2 * ( 1 : 5 ) ] # � i f t say  s  r a s  ndaki e l emanlar  a l  yoruz 2 i n c i , 4�nc� g i b i
y2

y3 <- x[ -1] 
y3

y4 <- x[-length(x)]
y4

y5 <-x[-seq(1,11,3)] # b e l i r t i l e n e l emanlar  �  kar  p g e r i kalan  a l  yoruz
y5

y6 <- x[c(1,3,7)] # sade c e b i r i n c i , ���nc� ve y e d i n c i e l emanlar  a l  yoruz
y6

y7 <-x [seq(1,11,3)]
y7

#1.3 Matrisler

x <-1:5
y <-t(x)
y

t(y) #veya sade c e t ( t ( x ) ) de y a z a b i l i r d i k


vec <-1:12
x <- matrix ( vec,nrow=3, ncol=4)
x #rakamlar  n s  r a s  na dikkat

t(x) #d�nd�r�lm���

vec <-1:12
x <- matrix ( vec,nrow=3, ncol=4,byrow = TRUE)
x


x <- matrix ( c(1,2,-1,1,2,1,2,-2,-1),nrow=3, ncol=3)
x

xinv <- solve(x)
xinv

x <-matrix(0,nrow=4,ncol=4)
x

diag(x) <-1  # mat r i s k� � egenin b�t�n de� e r l e r i n i 1 yapar
x

x <-matrix(0,ncol=5,nrow=4)
ncol(x)
nrow(x)
length(x)
dim(x)

#1.4 R'da Aritmetik Islemler

x<- 2*(1:5)
x

y<-1:5
y

x+y
x*y
x/y
x-y
x^2
x^y
x%%3 # mod( 3 ) i l e kalan hesab 


y<- 3:7
y

x%%y
x%/%y

x<- c(3,1,6,5,8,10,9,12,3)
min(x)
max(x)
sum(x)
prod(x)


x<- 1:10
y<- 10:1
z<- c(3,2,1,6,5,4,10,9,8,7)

a<- pmax(x,y,z)
a

b<- pmin(x,y,z)
b

veri<-c(5,32,6,11,43,11,4,3,2,8) #Sor t bi z e g� z e l b i r s  r a l  l i s t e v e r i r
sort(veri) 
#Order bi z e s  ralaman  n h� c r e numaralar  n  ( indeks ) v e r i r
order(veri)
veri[order(veri)]
order(veri,decreasing=TRUE)
rank(veri)
rank(veri,ties.method="first")
rank(veri,ties.method="random")
rank(veri,ties.method="max")
rank(veri,ties.method="min")
rank(veri,ties.method="average")
rank(-veri)
x<- matrix (1:6,ncol=2,nrow=3)
x

y<- matrix (1:4,ncol=2,nrow=2)
y

x%*%y

y%*%x

y%*%t(x)


x<- 1:3
y<- 3:1

x%*%y

t(x)%*%y

t(x)%*%t(y)

x%*%t(y)

x<- c(1,4,5,6,2,12)
y<- cumsum(x)
y

z<- cumprod(x)
z

diff(x)

factorial(3)
factorial(1:6)
abs(-4)
abs(c(-3:3))
sqrt(4)
sqrt(1:9)

log(100)
log10(100)
log2(100)
log(100,5)
log(c(10,20,30,40))

exp(4.60517)

exp (log(100))
exp(seq(-2,2,0.4))
gamma(5)
gamma(5.5)
x<- c(-3,-3.5,4,4.2)
floor (x)
ceiling(x)
as.integer(x)
