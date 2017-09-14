--#EVENT s2bq4z1g62v0g8440 event
if event.type == "data_in" then
    id = event.identity
    sci_note_ts = event.payload[1].timestamp
    -- print(type(sci_note_ts))
    tags = {
        identity = id
    }
    tsdb_response = Tsdb.write({
        metrics = event.payload[1].values,
        tags = tags,
        ts = sci_note_ts
    })
    print(tsdb_response)
end


-- Write data points of metrics with tags
-- If timestamp is not provided, it will use the received time in microseconds from server side
-- local metrics = {
--   temperature = 37.2,
--   humidity = 73,
--   switch = "on"
-- }
-- local tags = {
--   pid = "pzomp8vn4twklnmi",
--   identity = "000001",
--   region = "us",
--   city = "minneapolis"
-- }
-- local out = Tsdb.write({
--   metrics = metrics,
--   tags = tags
-- })
-- response.message = out

-- -- Write data points of metrics with tags and timestamp
-- local metrics = {
--   temperature = 37.2,
--   humidity = 73
-- }
-- local tags = {
--   identity = "000002"
-- }
-- local out = Tsdb.write({
--   metrics = metrics,
--   tags = tags,
--   ts = "1476243965s"
-- })
-- response.message = out