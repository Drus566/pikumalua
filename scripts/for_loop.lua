math.randomseed(os.time())

-- for count = 1, 500 do  
--     enemy_x = math.random(0, 800)
--     enemy_y = math.random(0, 600)

--     print("enemy "..count..": ("..enemy_x..","..enemy_y..")")
-- end

for c = 1, 500, 2 do  -- step 2
    enemy_x = math.random(0, 800)
    enemy_y = math.random(0, 600)

    print("enemy "..c..": ("..enemy_x..","..enemy_y..")")
end


print("Thank you, goodbye!")