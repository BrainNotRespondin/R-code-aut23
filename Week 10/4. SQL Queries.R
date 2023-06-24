library(DBI)
# 1.
# establish a connection to the database
con <- dbConnect(RSQLite::SQLite(), dbname = "data/seminar.db")
# 2.
# list the tables in the database
dbListTables(con)
# 3.
res <- dbGetQuery(con, "SELECT title from seminar where speakerIds == 20")
print(res)
# 4.
res <- dbGetQuery(con, "SELECT title from seminar where venueId == 2")
print(res)
# 5.
res <- dbGetQuery(con, "SELECT title, abstract from seminar where id = 45")
print(res)
# 6.
res <- dbGetQuery(con, "SELECT id, time from seminar where time < date('2011-01-01')")
print(res)
# 7.
# destroy the connection to the database
dbDisconnect(con)