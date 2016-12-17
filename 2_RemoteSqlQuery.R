# Scenario:
# 
# 1. Use RODBC to establish a connection to another SQL Server
#    machine on the corp Intranet.
# 2. Note that we are using INTEGRATED AUTH
# 3. Connect to a remote R machine on the corp Intranet
# 4. DO THE SAME THING.

library(RODBC)

Sys.getenv("COMPUTERNAME")

dbConnection <- 'Driver={SQL Server};Server=JFLAM-Z440;Database=NYCTaxiData;Trusted_Connection=yes'

conn <- odbcDriverConnect(connection = dbConnection)
df <- sqlQuery(conn, "select top 10 * from nyctaxi_sample")