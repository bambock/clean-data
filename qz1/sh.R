library(XML)
fileUrl<-"http://espn.go.com/nfl/team/_/name/sea/seattle-seahawks"
doc<-htmlTreeParse(fileUrl, useInternal=TRUE)
scores<-xpathSApply(doc, "//li[@class='score']", xmlValue)
teams<-xpathSApply(doc, "//li[@class='team-name']", xmlValue)