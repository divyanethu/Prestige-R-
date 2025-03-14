#TASK 6

#FIND MEAN PRESTIGE

prestigemean<-mean(setData$prestige)
prestigemean

#FIND VARIANCE PRESTIGE
prestigevar<-var(setData$prestige)
prestigevar

#FIND MEAN CENSUS
censusmean<-mean(setData$census)
censusmean

#FIND VARIANCE CENSUS
censusvar<-var(setData$census)
censusvar

#STATISTICAL ANALYSIS FOR PRESTIGE
y<-rnorm(setData$prestige)
png(file="satisticalprestige.png")
plotNormalHistogram(y,prob = FALSE,
                    main = "Statistical analysis for Prestige",
                    xlab ="PRESTIGE",length = 1000)
dev.off()
