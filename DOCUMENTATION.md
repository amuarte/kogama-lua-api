# API Documentation

Quick reference for Kogama Lua API

---

## Table of Contents
- [Getting Started](#getting-started)
- [Cubes](#cubes)
- [Objects](#objects)
- [Event Handlers](#event-handlers)
- [File System](#file-system)
- [Session Storage](#session-storage)
- [Known Issues](#known-issues)

---

## Getting Started

**Load a script:**
```
/loadscript <script_path>
```

**Auto-load:**  
Files named `init.lua` are automatically loaded on startup.

---

## Cubes

### `new_cube([id])`

Creates a new cube. Omit `id` to add to currently edited model.

**Properties:**
- `position` - `{x, y, z}` 
- `materials[1-6]` - Material ID for each face
- `corners[1-8]` - Vertex positions `{x, y, z}`, values 0-4

**Example:**
```lua
local cube = new_cube()
cube.position = {1, 2, 3}
cube.materials[1] = 5
cube.corners[1] = {0, 4, 0}
```

### `remove_cube(position)`

Removes cube at position.

**Returns:** `true` (removed), `false` (not found), `nil` (error)

**Example:**
```lua
local result = remove_cube({0, 0, 0})
if result then
    print("Removed!")
end
```

### `get_cube(position)`

Returns cube at position or `nil`.

**Example:**
```lua
local cube = get_cube({1, 2, 3})
if cube then
    print(cube.materials[1])
end
```

### `get_cubes([id])`

Returns all cubes from model or `nil`. Omit `id` for current model.

---

## Objects

### `new_object(type)`

Creates game object. Returns object or `nil`.

⚠️ **Position must be set immediately and cannot be changed later!**

**Example:**
```lua
local obj = new_object("text")
obj.position = {2.5, 100, -5.213}
```

### Text Object Properties

- `text` - String content
- `color` - `{r, g, b}` (values 0-1)
- `size` - Number
- `billboard` - Boolean

**Example:**
```lua
obj.text = "Hello world"
obj.color = {0, 1.0, 0.5}
obj.size = 2.0
obj.billboard = true
```

### `link(obj1, obj2)`

Links obj1 output to obj2 input.

---

## Event Handlers

### `on_cube_removed(callback)`

Called when cube is removed.

**Example:**
```lua
on_cube_removed(function(cube)
    print("Cube removed")
end)
```

---

## File System

### `require(path)`

Loads script from `scripts/` folder. Use `/` for subdirectories.

**Example:**
```lua
require("mymod/main")
```

### `read_file(filename)`

Reads text file from `scripts/`. Returns string or `nil`.

**Example:**
```lua
local file = read_file("config.txt")
if file then
    print(file)
end
```

### `read_image(filename)`

Loads image from `scripts/`. Supports: `.png`, `.jpg`, `.jpeg`, `.bmp`, `.gif`

Returns image with `width`, `height`, `pixels[y][x]` or `nil`.  
Pixel values: `.r`, `.g`, `.b`, `.a` (0-255)

**Example:**
```lua
local img = read_image("texture.png")
if img then
    print(img.width, img.height)
    print(img.pixels[1][1].r)
end
```

---

## Session Storage

Temporary storage (resets on game close).

**Important:** Use unique namespace to avoid conflicts!

**Example:**
```lua
session.mymod.value = 5
session.mymod.config = {enabled = true}

-- Bad (may conflict):
session.value = 5  -- ❌
```

---

## Known Issues

⚠️ Object position cannot be changed after creation  
⚠️ Some object properties may return outdated data

---

[Report Issues](https://github.com/amuarte/kogama-lua-api/issues)
