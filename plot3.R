if(!exists("NEI")){ NEI <- readRDS("./summarySCC_PM25.rds")}
if(!exists("SCC")){ SCC <- readRDS("./data/Source_Classification_Code.rds")}

library(ggplot2)
library(ply)
baltimoreNEI <- NEI[NEI$fips=="24510",]
aggTotalsBaltimore <- aggregate(Emissions ~ year,NEI,sum)

ggp <- ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
  labs(title=expression("PM"[2.5]*" Emissions for Baltimore City from 1999-2008 by Source"))
Print (ggp)
  
  
  