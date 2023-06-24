library(DBI)
# 1.
# establish a connection to the database
con <- dbConnect(RSQLite::SQLite(), dbname = "data/seminar.db")
# 2.
res <- dbGetQuery(con, "SELECT seminar.title, speaker.name from
seminar left join speaker on seminar.speakerIds = speaker.id
where speakerIds == 20")
print(res)
# 3.
res <- dbGetQuery(con, "SELECT seminar.title, venue.name from seminar
left join venue on seminar.venueId = venue.id where venueId == 2")
print(res)
# 4.
res <- dbGetQuery(con, "SELECT seminar.title, seminar.abstract, speaker.name,
venue.name
from seminar left join speaker on seminar.speakerIds = speaker.id
left join venue on seminar.venueId = venue.id where seminar.id = 45")
print(res)
# 5.
res <- dbGetQuery(con, "SELECT speaker.name, speaker.affiliation from seminar
left join speaker on seminar.speakerIds = speaker.id
where time < date('2011-01-01')")
print(res)
# 6.
res <- dbGetQuery(con, "SELECT seminar.title, speaker.name, speaker.affiliation,
seminar.time from seminar
left join speaker on seminar.speakerIds = speaker.id
where time >= date('2012-04-01') and time < date('2012-06-01')
order by speaker.name")
print(res)
# 7.
# destroy the connection to the database
dbDisconnect(con)