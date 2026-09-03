-- local file = io.open("sea_level.csv", "r")

-- use argument, lua read_content_of_file.lua sea_level.csv
local file = io.open(arg[1], "r")

local text = file:read("all")
file:close()
print(text)