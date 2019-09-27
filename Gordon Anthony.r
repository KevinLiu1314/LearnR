getwd()
setwd('c:\\Repositories\\LearnR')
list.files()
df <- read.csv('NBA GameDetails 2012-2013 v0.csv')
df$NewField <- 1
write.csv(df, 'NBA v001.csv')
tail(df)
df$game_date <- as.Date(substr(df$Game.ID,1,8), '%Y%m%d')
tail(df)

?strptime
tail(df)

df <- read.csv('NBA GameDetails 2012-2013 v0.csv')
df$game_date <- as.Date(substr(df$Game.ID,1,8), '%Y%m%d')
head(df)
df$Minutes.Played <- substr(df$Minutes.Played,1,5)
df$game_date 
df$Minutes.Played
df[9961,]

class("1")
df$Minutes.Played <- (60*as.numeric(sub(':.*', '', df$Minutes.Played)) +
as.numeric(sub('[0-9]{1,2}:', '', df$Minutes.Played)))/60
?sub
df$Games <-1
getwd()
df <- read.csv('nba v001.csv')
tail(df)
mean(df$Games)
summary(df$Games)
summary(df$game_date)
head(df)
df$dddd
df$X
remove(df$X)
head(df)
df <- df[,2:27]
length(df)
head(df)
write.csv(df,'NBA v001.csv',row.names=FALSE)
df <- read.csv('nba v001.csv')
?write.csv
write.csv(df2,'NBA v003.csv')
df2 <- read.csv('nba v002.csv')
class(df$game_date)
df$game_date <- as.Date(df$game_date)
tail(df)
df$playoff_ind[df$game_date < as.Date('2013-04-20')] <- 0
df$playoff_ind[df$game_date==as.Date('2013-04-19')]
'a'=='b'
a=b
temp <- df[df$game_date > as.Date('2013-04-15') & df$game_date < as.Date('2013-04-22'), c(1,2,3,26,27)]
head(df)
t3 <- df[df$Team=='WAS', c(1,2,3,4)]
write.csv(temp,'temp.csv',row.names=FALSE)
temp<-df[,c(-1,-2,-3,-27)]
c(-1,-2,-3,-27)
names(df)
head(df[,-c(Team,Assists)])
Team='Team'
Assists='Assists'
head(subset(df,select=-Team))
temp <- df[df$playoff_ind==0,]
temp <- df[df$Player=='LeBron James','Points']
head(temp)
sum(temp)
dim(temp)
names(temp)
temp$Games[1:6]
head(df)
df <- df[df$playoff_ind==0,]
tail(df)
library(plyr)
?summarize
?ddply
rs_leaders <-
  ddply(
    df, .(Player, Player.ID),
    summarise, ppg = sum(Points) / sum(Games), sd = sd(Points)
  )
head(rs_leaders)

head(rs_leaders[order(rs_leaders$ppg, decreasing=TRUE),],10)
names(df)
?ggplot2
library(ggplot2)
install.packages("ggplot2")
?install.packages
players <- c('LeBron James','Carmelo Anthony')
comp_2p_df <- df[df$Player %in% players,]

