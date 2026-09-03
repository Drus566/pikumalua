local user_email = "gustavo@pikuma.com"

-- Find the position of the first "." character in the string
-- print(string.find(user_email, ".")) return 1 1, find any character, '.' - wildcard any character
print(string.find(user_email, "%.")) -- return 15, '%' - escape, '%.' - find symbol '.'

