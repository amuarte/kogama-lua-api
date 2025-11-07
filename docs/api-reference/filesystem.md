# File System

Access files and resources from your scripts folder.

---

## `require(path)`

Loads and executes a Lua script from the scripts folder.

**Parameters:**
- `path` (string) - Script path relative to `scripts/` folder, use `/` for subdirectories

**Returns:** Depends on what the loaded script returns

**Example:**
```lua
-- Load scripts/config.lua
require("config")

-- Load scripts/mods/builder.lua
require("mods/builder")
```

---

## `read_file(filename)`

Reads entire text file as string.

**Parameters:**
- `filename` (string) - File path relative to `scripts/` folder

**Returns:**
- File content (string) on success
- `nil` on error (file not found, etc.)

**Example:**
```lua
local config = read_file("settings.txt")
if config then
    print("Config loaded: " .. config)
else
    print("Error: Could not load settings.txt")
end
```

---

## `read_image(filename)`

Loads image file and provides access to pixel data.

**Parameters:**
- `filename` (string) - Image file path relative to `scripts/` folder
- **Supported formats:** `.png`, `.jpg`, `.jpeg`, `.bmp`, `.gif`

**Returns:**
- Image object with properties:
  - `width` (number) - Image width in pixels
  - `height` (number) - Image height in pixels
  - `pixels[y][x]` - 2D array of pixels (1-indexed)
  - Each pixel has: `.r`, `.g`, `.b`, `.a` (0-255 values)
- `nil` on error

**Example:**
```lua
local img = read_image("texture.png")

if img then
    print("Image size: " .. img.width .. "x" .. img.height)

    -- Access top-left pixel
    local pixel = img.pixels[1][1]
    print("Red: " .. pixel.r)
    print("Green: " .. pixel.g)
    print("Blue: " .. pixel.b)
    print("Alpha: " .. pixel.a)

    -- Loop through all pixels
    for y = 1, img.height do
        for x = 1, img.width do
            local p = img.pixels[y][x]
            -- Use pixel data...
        end
    end
else
    print("Error: Could not load image")
end
```

---

## Scripts Folder Location

All paths are relative to your scripts folder:

```
%localappdata%/KogamaLuaAPI/scripts/
```

**Examples:**
- `config.lua` → `%localappdata%/KogamaLuaAPI/scripts/config.lua`
- `mods/builder.lua` → `%localappdata%/KogamaLuaAPI/scripts/mods/builder.lua`

---

## See Also

- [Getting Started](../getting-started.md) - Script loading and auto-load
- [API Reference](../api-reference/) - All available functions
