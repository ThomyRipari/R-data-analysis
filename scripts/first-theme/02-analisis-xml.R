install.packages("XML")
library(XML)

url = "../data/first-theme/cd_catalog.xml"

xmldoc = xmlParse(url) #XMLInternalDocument
rootnode = xmlRoot(xmldoc)
rootnode[2]

cds_data = xmlSApply(rootnode, function (x) xmlSApply (x, xmlValue))
cds_dataframe = data.frame(t(cds_data), row.names = NULL)

head(cds_dataframe, 2)
cds_dataframe[1:5,]

population_url = "../data/first-theme/WorldPopulation-wiki.htm"
tables = readHTMLTable(population_url)

most_populated_table = tables[[6]]
head(most_populated_table, 2)
