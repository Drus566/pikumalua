color = "#ce10e3ff"

-- replace all occurences of # with nothing
-- pure_color = string.upper(string.gsub(color, "#", ""))

-- get substring of string
pure_color = string.sub(color, 2, #color)

print("Pure color: "..pure_color)