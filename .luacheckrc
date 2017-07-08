include_files = {
   "src/main/resources/assets/computercraft/lua/**/*.lua",
}

exclude_files = {
   -- Treasure programs are a bit of a mess (and the feature is
   -- pretty much deprecated).
   "src/main/resources/assets/computercraft/lua/treasure",
}

std = "lua52"

unused_secondaries = false

read_globals = {
   "_CC_DEFAULT_SETTINGS", "_ENV", "_HOST", "bit", "colors", "colours",
   "commands", "disk", "fs", "gps", "help", "http", "keys", "loadstring",
   "multishell", "paintutils", "parallel", "peripheral", "pocket", "printError",
   "read", "rednet", "redstone", "rs", "settings", "shell", "sleep", "term",
   "textutils", "turtle", "vector", "window", "write",

   "os.cancelAlarm", "os.cancelTimer", "os.clock", "os.computerID",
   "os.computerLabel", "os.day", "os.epoch", "os.getComputerID",
   "os.getComputerLabel", "os.loadAPI", "os.pullEvent", "os.pullEventRaw",
   "os.queueEvent", "os.reboot", "os.run", "os.setAlarm", "os.setComputerLabel",
   "os.shutdown", "os.sleep", "os.startTimer", "os.time", "os.unloadAPI",
   "os.version",
}

ignore = {
    "21*", -- Unused variables
    "42.", -- Shadowing normal vars
    "43.", -- Shadowing upvalues
    "6.*", -- Formatting
}

files["src/main/resources/assets/computercraft/lua/bios.lua"] = {
   -- Ignore stub methods here.
   ignore = { "12*" },
}

files["src/main/resources/assets/computercraft/lua/rom/apis"] = {
   -- Allow defining globals on the top level
   allow_defined_top = true,
   ignore = {
      "122", -- Allow mutating fields of global variables (we extend _ENV) a bit.
      "131", -- Unused globals definitions
   },
}
