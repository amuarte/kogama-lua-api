# Getting Started

Quick guide to start scripting with KogamaLuaAPI.

---

## Setup

### Scripts Folder

Your scripts go here:
```
%localappdata%/KogamaLuaAPI/scripts/
```

The folder auto-creates on first run. You can also create subfolders to organize scripts.

---

## Loading Scripts

In-game chat, type:

```
/loadscript test
/loadscript myfolder/script
```

**Note:** Don't include `.lua` extension - the mod adds it automatically.

### Auto-Load

Name your script `init.lua` and place it in `scripts/` - it loads automatically when you join a game.

---

## Your First Script

Create `scripts/hello.lua`:

```lua
print("Hello Kogama!")

local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 2
cube:spawn()

print("Cube created!")
```

Load it in-game:
```
/loadscript hello
```

You should see messages in chat and a red cube appear at position 0,0,0!

---

## Common Tasks

### Create Multiple Cubes

```lua
for i = 0, 10 do
    local cube = new_cube()
    cube.position = {i, 0, 0}
    cube.materials[1] = 5
    cube:spawn()
end
```

### Create a Text Object

```lua
local text = new_object(OBJECTS.TEXT)
text.position = {0, 5, 0}
text.text = "Hello World!"
text:spawn()
```



## Debugging

Errors show up in chat. If something doesn't work:

1. Check the error message in game chat
2. Make sure the file is in the correct folder
3. Check spelling in your script

---

## Next Steps

- 📚 [API Reference](index.md) - Full list of functions

---

[Join Discord](https://discord.gg/u6tKuP3k4M)
