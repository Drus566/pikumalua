
-- INPUT OPTIONS:
------------------
-- txt = io.read("a")          --> This reads "a"ll input from the stdin (ie. keyboard or whatever)
-- txt = io.read("*a")         --> Same as above, also reads all input from stdin
-- txt = io.read("*n")         --> This reads a number
-- txt = io.read("*l")         --> Read entire line from stdin (default when io.read() has no params)
-- txt = io.read(4)            --> Reads 4 characters
-- a, b = io.read(4, 6)        --> Reads 4 and 6 characters and assign them to a and b
-- a, b = io.read("*n", "*n")  --> Reads two numbers and assign them to a and b
-- local num = tonumber(io.read()) --> read a number from the keyboard

function display_menu()
    print("+-------------------")
    print("! Welcome, "..os.date())
    print("+-------------------")
    print("1. Generate random enemy position")
    print("2. Distance from enemy to player")
    print("3. Get angle from enemy")
    print("4. Exit")
    print("+-------------------")
end

function get_distance(x1, y1, x2, y2)
    return math.sqrt((x1 - x2)^2 + (y1 - y2)^2)
end

math.randomseed(os.time()) 

-- Player position in the middle of the screen
-- local player_x, player_y = 400, 300
local player = {x = 400, y = 300}
-- Enemy pos
-- local enemy_x, enemy_y = 0, 0
local enemy = {x = 0, y = 0}

local user_option = 0

-- Loop while user option is different than 4 (exit)
while user_option ~= 4 do
    -- Display console
    display_menu()

    -- read the user option from the keyboard
    print("Please, select your option:")
    user_option = io.read("*n")

    if user_option == 1 then
        enemy.x = math.random(0, 800)
        enemy.y = math.random(0, 600)
        print("New enemy pos: ("..enemy.x..", "..enemy.y..")")
    end

    if user_option == 2 then
        -- local d = math.sqrt((enemy_x - player_x)^2 + (enemy_y - player_y)^2)
        local d = get_distance(enemy.x, enemy.y, player.x, player.y)
        print("Distance from enemy to player: "..d)
    end

    if user_option == 3 then
        local a = math.atan2(enemy.y - player.y, enemy.x - player.x)
        print("Angle between enemy and player is: "..math.deg(a).." degrees")
    end
end

print("Thank you, goodbye!")
