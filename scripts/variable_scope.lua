math.randomseed(os.time())

-- for count = 1, 500 do  
--     enemy_x = math.random(0, 800)
--     enemy_y = math.random(0, 600)

--     print("enemy "..count..": ("..enemy_x..","..enemy_y..")")
-- end


-- Set position of the hero
local player_x, player_y = 400, 300

local num_enemies = 0

while num_enemies < 500 do
    local enemy_x = math.random(0, 800)
    local enemy_y = math.random(0, 600)

    if (player_x == enemy_x and player_y == enemy_y) then
        print("Enemy and player pos clashed")
    else
        print("enemy "..num_enemies+1..": ("..enemy_x..","..enemy_y..")")
        num_enemies = num_enemies + 1
    end
end


-- for c = 1, 500, 2 do  -- step 2
--     enemy_x = math.random(0, 800)
--     enemy_y = math.random(0, 600)

--     if (player_x == enemy_x or player_y == enemy_y) then
--         print("Enemy and player pos clashed")
--     else
--         print("enemy "..c..": ("..enemy_x..","..enemy_y..")")
--     end
-- end


print("Thank you, goodbye!") 