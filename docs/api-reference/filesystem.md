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
require("config")
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
