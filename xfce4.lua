oldx = 1
oldbosx = 1
oldbosy = 1
oldy = 1
function drawdesktop()
    paintutils.drawLine(1, 1, 8, 1, colors.green)
    term.setCursorPos(1, 1)
    print("X Start")
end
while true do
    drawdesktop()
    local event, button, x, y = os.pullEvent()
    
    if x == 1 then
        if y == 1 then
            paintutils.drawFilledBox(1, 2, 10, 15, colors.white)
            term.setCursorPos(1,2)
            term.setTextColor(colors.black)
            print("X Terminal")
            print("X Redirection")
            print("X Worm")
            print("X Adventure")
            print("X Nautilus")
            print("X Shutdown")
            print("X Reboot")
            term.setTextColor(colors.white)
            sleep(1)
            local event, button, x, y = os.pullEvent()
            if x == 1 then
                if y == 2 then
                    shell.run("fg /ssdan.lua")
                end
                if y == 3 then
                    shell.run("fg redirection")
                    end
                if y == 4 then
                    shell.run("fg worm")
                end
                if y == 5 then
                    shell.run("fg adventure")
                end
                if y == 6 then
                    shell.run("fg /scripts/daniel/nautilus.lua")
                end
                if y == 7 then
                    os.shutdown()
                end
                if y == 8 then
                    os.reboot()
                end
            end
            paintutils.drawFilledBox(1, 2, 10, 15, colors.black)
        end
    end
end

