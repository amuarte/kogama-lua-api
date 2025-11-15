# Getting Started

Quick guide to start scripting with KogamaLuaAPI.

## Setup

### Scripts Folder

Your scripts go in:

```
%localappdata%/KogamaLuaAPI/scripts/
```

The folder auto-creates on first run. You can create subfolders to organize your scripts.

## Loading Scripts

In-game chat, type:

```
/loadscript test
/loadscript myfolder/script
```

!!! note "Extension"
    Don't include `.lua` extension — the mod adds it automatically.

### Auto-Load

Name your script `init.lua` and place it in `scripts/` to auto-load when you join a game.

## Your First Script

Create `scripts/hello.lua`:

```lua
print("Hello Kogama!")

local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 2  -- Red
cube:spawn()

print("Cube created!")
```

Load it in-game:

```
/loadscript hello
```

You should see messages in chat and a red cube appear at position 0,0,0.

## Common Tasks

### Create Multiple Cubes

Build structures by looping:

```lua
for i = 0, 10 do
    local cube = new_cube()
    cube.position = {i, 0, 0}
    cube.materials[1] = 5  -- Yellow
    cube:spawn()
end
```

### Color a Structure

Apply different materials to each face:

```lua
local cube = new_cube()
cube.position = {0, 5, 0}
cube.materials[1] = 1   -- Top: Red
cube.materials[2] = 2   -- Bottom: Dark Red
cube.materials[3] = 34  -- Front: Blue
cube.materials[4] = 35  -- Back: Dark Blue
cube:spawn()
```

See [Materials Reference](reference/materials.md) for all available colors.

### Create a Text Object

Spawn text in your world:

```lua
local text = new_object(OBJECTS.TEXT)
text.position = {0, 5, 0}
text.text = "Hello World!"
text.scale = 2
text:spawn()
```

### Build a Line of Cubes

```lua
function build_line(start, end_pos, material)
    for i = start, end_pos do
        local cube = new_cube()
        cube.position = {i, 0, 0}
        cube.materials[1] = material
        cube:spawn()
    end
end

build_line(0, 20, 10)  -- Build line from 0 to 20 with material 10
```

### Modify Existing Cubes

Get and change cube properties:

```lua
local cube = get_cube({5, 10, 3})
if cube then
    cube.materials[1] = 45
    cube:spawn()  -- Apply changes
    print("Cube updated!")
end
```

## Tips & Tricks

### Use :spawn() After Changes

Always call `:spawn()` after modifying cube properties:

```lua
local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 5
cube:spawn()  -- Required!
```

### Use init.lua for Auto-Loading

Create `%localappdata%/KogamaLuaAPI/scripts/init.lua` to auto-load on game start:

```lua
print("Game started! Running initialization...")
-- Your startup code here
```

### Read Error Messages

Errors appear in game chat. Always read the full error message — it tells you:

- Where the error is (line number)
- What went wrong
- How to fix it

## Debugging

If something doesn't work:

1. **Check the error in chat** — Read the full error message carefully
2. **Verify file location** — Must be in `%localappdata%/KogamaLuaAPI/scripts/`
3. **Check spelling** — Lua is case-sensitive (`new_cube` ≠ `newCube`)
4. **Use `print()`** — Debug your script with `print()` statements
5. **Test in isolation** — Create a simple test script to isolate issues

### Common Errors

**Error: Unknown global variable**

- Check variable names are spelled correctly
- Make sure you declared the variable with `local` or `=`

**Cube doesn't appear**

- Did you call `:spawn()`?
- Is the position valid for the current model?

**Script doesn't load**

- Check file path is correct
- Use `/loadscript filename` (without `.lua`)
- Reload the page or rejoin the game

## Next Steps

- **[API Reference](index.md)** — Complete function reference
- **[Cube API](api-reference/cubes/index.md)** — Master cube manipulation
- **[Objects API](api-reference/objects/index.md)** — Spawn interactive objects
- **[Materials Reference](reference/materials.md)** — All available colors

## Support

Have questions or want to share your scripts?

- **[Discord Server](https://discord.gg/u6tKuP3k4M)** — Active community, get help, showcase projects
- **[GitHub Issues](https://github.com/amuarte/kogama-lua-api/issues)** — Report bugs or suggest features
