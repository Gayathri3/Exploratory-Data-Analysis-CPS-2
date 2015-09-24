if(!exists("NEI")){ NEI <- readRDS("./summarySCC_PM25.rds")}
if(!exists("SCC")){ SCC <- readRDS("./data/Source_Classification_Code.rds")}

baltimoreNEI <- NEI[NEI$fips=="24510",]

aggTotalsBaltimore <- aggregate(Emissions ~ year, baltimoreNEI,sum)

barplot(
  aggTotalsBaltimore$Emissions,
  names.arg=aggTotalsBaltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Tons)",
  main="Total PM2.5 Emissions From All US Sources")

Dev.off()
  