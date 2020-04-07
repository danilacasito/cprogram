while true do
  shell.run("clear")
  paintutils.drawLine(1, 1, 8, 1,colors.green)
  term.setCursorPos(1, 1)
  print("X Start")
  local event, button, x, y = os.pullEvent()
  if y == 1 then
    if x == 1 then
      shell.run("clear")
      write("Execute Command: ")
      com = read()
      shell.run(com)
      sleep(5)
    end
  end
end
