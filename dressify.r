train <- read.csv("C:\\Users\\431539\\Desktop\\dressify\\train.csv")

test<- read.csv("C:\\Users\\431539\\Desktop\\dressify\\test.csv")

plot(train$Style)
train$Style[c(which(train$Style=="sexy"))]="Sexy"
train$Style=as.character(train$Style)
train$Style=as.factor(train$Style)
 
plot(train$Price)
table(train$Price)
train$Price[c(which(train$Price=='low'))]='Low'
train$Price[c(which(train$Price=='high'))]='High'
train$Price[which(train$Price=="")] <- 'Average'
train$Price=as.character(train$Price)
train$Price =as.factor(train$Price)

boxplot(train$Rating)
table(train$Rating)
train$Rating=round(train$Rating)
train$Rating=as.factor(train$Rating)


plot(train$Size)
table(train$Size)
train$Size =as.character(train$Size)
train$Size[c(which(train$Size=='free'))]='F'
train$Size[c(which(train$Size=='small'))]='S'
train$Size =as.factor(train$Size)


plot(train$Season)
table(train$Season)
train$Season =as.character(train$Season)
train$Season[c(which(train$Season=='Automn'))]='Autumn'
train$Season[c(which(train$Season=='spring'))]='Spring'
train$Season[c(which(train$Season=='summer'))]='Summer'
train$Season[c(which(train$Season=='winter'))]='Winter'
train$Season[which(train$Season=="")] <- 'Summer'
train$Season =as.factor(train$Season)

table(train$NeckLine)
plot(train$NeckLine)
train$NeckLine[train$NeckLine %in% c('NULL')] = 'o-neck'
train$NeckLine=as.character(train$NeckLine)
train$NeckLine=as.factor(train$NeckLine)


table(train$SleeveLength)
train$SleeveLength[train$SleeveLength %in% c('sleeevless')] = 'sleevless'
train$SleeveLength[train$SleeveLength %in% c('sleeveless')] = 'sleevless'
train$SleeveLength[train$SleeveLength %in% c('sleveless')] = 'sleevless'
train$SleeveLength[train$SleeveLength %in% c('cap-sleeves')] = 'capsleeves'
train$SleeveLength[train$SleeveLength %in% c('half')] = 'halfsleeve'
train$SleeveLength[train$SleeveLength %in% c('thressqatar')] = 'threequarter'
train$SleeveLength[train$SleeveLength %in% c('NULL')] = 'sleevless'
train$SleeveLength=as.character(train$SleeveLength)
train$SleeveLength=as.factor(train$SleeveLength)

table(train$waiseline)


table(train$Material)

































