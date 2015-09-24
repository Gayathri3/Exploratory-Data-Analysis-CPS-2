NEI <- readRDS("./summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
 if(!exists("NEI")){ NEI <- readRDS("./summarySCC_PM25.rds")}
 if(!exists("SCC")){ SCC <- readRDS("./data/Source_Classification_Code.rds")}
aggTotals <- aggregate(Emissions ~ year,NEI, sum)
barplot(
  (aggTotals$Emissions)/10^6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources")

Dev.off()