return {
    -- The inclusion of the below line tells the language server that the first parameter of the cutscene is `WorldCutscene`.
    -- This allows it to fetch us useful documentation that shows all of the available cutscene functions while writing our cutscenes!

    ---@param cutscene WorldCutscene
    wall = function(cutscene, event)
        -- Open textbox and wait for completion
        cutscene:text("* The wall seems cracked.")

        -- If we have Susie, play a cutscene
        local susie = cutscene:getCharacter("susie")
        if susie then
            -- Detach camera and followers (since characters will be moved)
            cutscene:detachCamera()
            cutscene:detachFollowers()

            -- All text from now is spoken by Susie
            cutscene:setSpeaker(susie)
            cutscene:text("* Hey,[wait:5] think I can break\nthis wall?", "smile")

            -- Get the bottom-center of the broken wall
            local x = event.x + event.width/2
            local y = event.y + event.height/2

            -- Move Susie up to the wall over 0.75 seconds
            cutscene:walkTo(susie, x, y + 40, 0.75, "up")
            -- Move other party members behind Susie
            cutscene:walkTo(Game.world.player, x, y + 100, 0.75, "up")
            if cutscene:getCharacter("ralsei") then
                cutscene:walkTo("ralsei", x + 60, y + 100, 0.75, "up")
            end
            if cutscene:getCharacter("noelle") then
                cutscene:walkTo("noelle", x - 60, y + 100, 0.75, "up")
            end

            -- Wait 1.5 seconds
            cutscene:wait(1.5)

            -- Walk back,
            cutscene:wait(cutscene:walkTo(susie, x, y + 60, 0.5, "up", true))
            -- and run forward!
            cutscene:wait(cutscene:walkTo(susie, x, y + 20, 0.2))

            -- Slam!!
            Assets.playSound("impact")
            susie:shake(4)
            susie:setSprite("shock_up")

            -- Slide back a bit
            cutscene:slideTo(susie, x, y + 40, 0.1)
            cutscene:wait(1.5)

            -- owie
            susie:setAnimation({"away_scratch", 0.25, true})
            susie:shake(4)
            Assets.playSound("wing")

            cutscene:wait(1)
            cutscene:text("* Guess not.", "nervous")

            -- Reset Susie's sprite
            susie:resetSprite()

            -- Reattach the camera
            cutscene:attachCamera()

            -- Align the follower positions behind Kris's current position
            cutscene:alignFollowers()
            -- And reattach them, making them return to their target positions
            cutscene:attachFollowers()
            Game:setFlag("wall_hit", true)
        end
    end,
	
    nokia_dog = function(cutscene, event)
        local dog = cutscene:getCharacter("dog")

        --cutscene:showNametag("Dog")
        cutscene:text("* I'm just a dog, but I'm also...")
        --cutscene:hideNametag()

        Game.world.music:pause()
        local nokia = Music("nokia")
        nokia:play()
        cutscene:wait(2.5)

        --cutscene:showNametag("Dog")
        dog:setAnimation("holdphone")
        cutscene:text("* Who the...")
		cutscene:text("* Excuse me for a sec.")
		nokia:remove()
		dog:setAnimation("talkphone")
		cutscene:text("* .[wait:5].[wait:5].[wait:10]Hello?")
        --cutscene:hideNametag()

        local dmc2 = Music("voiceover/plaeDMC2")
        dmc2:play()
        cutscene:wait(2.5)

        --cutscene:showNametag("Dog")
        cutscene:text("* ...[wait:10]You again.")
        cutscene:text("* I already told you...[wait:5]\nTHIS ISN'T FUNNY!")
        dog:setAnimation("holdphone")
        cutscene:text("* Hey...[wait:5] Hey![wait:5] HEEEY![wait:5] \nARE YOU LISTENING TO ME?")
        cutscene:text("* I've had enough of this!")
        cutscene:text("* I have your number you know,[wait:5]\nI know where you live.[wait:8]\n* YOU...[wait:10][shake:2]SCUM!!!")
        --cutscene:hideNametag()

		dmc2:remove()
		Game.world.music:resume()
		dog:resetSprite()
    end,

    malius = function(cutscene, event)
        Game.world:openMenu(FuseMenu())
    end,
}
