dat.lim2014.1 <- read.csv("data-raw/dat.lim2014.1.csv", stringsAsFactors = F)
dat.lim2014.1<-dat.lim2014.1[,c(1:4, 6, 17:19, 21, 22, 23, 25, 26, 28:32, 36, 35)]
names(dat.lim2014.1)[dim(dat.lim2014.1)[2]]<-"yi"
dat.lim2014.1$Datapoint<-seq(1, dim(dat.lim2014.1)[1], 1)
save(dat.lim2014.1, file="data/dat.lim2014.1.rda")

dat.lim2014.2 <- read.csv("data-raw/dat.lim2014.2.csv", stringsAsFactors = F)
dat.lim2014.2<-dat.lim2014.2[,c(1:4, 6, 17, 18, 20, 21, 22, 23, 25, 26, 28:32, 36, 35)]
names(dat.lim2014.2)[dim(dat.lim2014.2)[2]]<-"yi"
dat.lim2014.2$Datapoint<-seq(1, dim(dat.lim2014.2)[1], 1)
save(dat.lim2014.2, file="data/dat.lim2014.2.rda")

dat.lim2014.3 <- read.csv("data-raw/dat.lim2014.3.csv", stringsAsFactors = F)
dat.lim2014.3<-dat.lim2014.3[,c(1:3, 15:20, 22, 23, 26:30, 33)]
names(dat.lim2014.3)[dim(dat.lim2014.3)[2]]<-"yi"
names(dat.lim2014.3)[which(names(dat.lim2014.3) == "Reproduction..0...itero..1...semel.")]<-"Reproduction"
my.repro<-dat.lim2014.3$Reproduction
my.repro<-as.character(my.repro)
my.repro[which(my.repro == 0)]<-"it"
dat.lim2014.3$Reproduction<-my.repro
dat.lim2014.3$Datapoint<-seq(1, dim(dat.lim2014.3)[1], 1)
save(dat.lim2014.3, file="data/dat.lim2014.3.rda")

dat.lim2014.4 <- read.csv("data-raw/dat.lim2014.4.csv", stringsAsFactors = F)
dat.lim2014.4<-dat.lim2014.4[,c(1:3, 15:20, 22, 23, 26:30, 33)]
names(dat.lim2014.4)[dim(dat.lim2014.4)[2]]<-"yi"
names(dat.lim2014.4)[which(names(dat.lim2014.4) == "Reproduction..0...itero..1...semel.")]<-"Reproduction"
my.repro<-dat.lim2014.4$Reproduction
my.repro<-as.character(my.repro)
my.repro[which(my.repro == 0)]<-"it"
dat.lim2014.4$Reproduction<-my.repro
dat.lim2014.4$Datapoint<-seq(1, dim(dat.lim2014.4)[1], 1)
save(dat.lim2014.4, file="data/dat.lim2014.4.rda")

library(ape)
dat.lim2014.phy1 <- read.tree("data-raw/dat.lim2014.phy1.tre")
dat.lim2014.phy2 <- read.tree("data-raw/dat.lim2014.phy2.tre")
dat.lim2014.phy3 <- read.tree("data-raw/dat.lim2014.phy3.tre")
dat.lim2014.phy4 <- read.tree("data-raw/dat.lim2014.phy4.tre")
save(dat.lim2014.phy1, file="data/dat.lim2014.phy1.rda")
save(dat.lim2014.phy2, file="data/dat.lim2014.phy2.rda")
save(dat.lim2014.phy3, file="data/dat.lim2014.phy3.rda")
save(dat.lim2014.phy4, file="data/dat.lim2014.phy4.rda")