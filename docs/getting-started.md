# Getting Started

Quick guide to start scripting with Kogama Lua API.

---

## Setup

### Scripts Folder
```
%localappdata%\KogamaLauncher-WWW\Launcher\Standalone\BepInEx\plugins\scripts
```

### Load a Script
In-game chat:
```
/loadscript test.lua
/loadscript test          -- Without extension
/loadscript folder/test   -- From subdirectory
```

### Auto-Load
Name your script `init.lua` - it loads automatically on startup.

---

## Your First Script

**Create `scripts/hello.lua`:**
```lua
print("Hello Kogama!")

local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 1

print("Created a cube!")
```

**Load it:**
```
/loadscript hello
```

You should see the messages in console and a new cube appear!

---

## Next Steps

- 📚 [API Reference](api-reference/) - Full list of functions and properties
- 💡 [Examples](examples/) - More code examples

[Report Issues](https://github.com/amuarte/kogama-lua-api/issues)
