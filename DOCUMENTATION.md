# API Documentation - Alpha 0.1

## Table of Contents
- [Getting Started](#getting-started)
- [Cube Manipulation](#cube-manipulation)
  - [Creating Cubes](#creating-cubes)
  - [Removing Cubes](#removing-cubes)
  - [Querying Cubes](#querying-cubes)
- [Event Handlers](#event-handlers)
- [Session Storage](#session-storage)
- [File Loading](#file-loading)
- [Objects](#objects)
  - [Creating Objects](#creating-objects)
  - [Text Object Properties](#text-object-properties)
  - [Linking Objects](#linking-objects)
- [Known Issues](#known-issues)

---

## Getting Started

To load a script in-game, use: `/loadscript <script_path>`

Files named `init.lua` are automatically loaded on startup.

## Cube Manipulation

### Creating Cubes

`new_cube(id)` - Creates a new cube. Omit the `id` parameter to add the cube to the currently edited model.

**Properties:**
- `position` - Cube position as `{x, y, z}`
- `materials` - Array (1-6) of material IDs for each face
- `corners` - Array (1-8) of vertex positions, each as `{x, y, z}` where values range from 0-4
```lua
local c = new_cube()
c.position = {1, 2, 3}
c.materials[1] = 5
c.corners[1] = {0, 4, 0}
```

### Removing Cubes

`remove_cube({x, y, z})` - Removes a cube at the specified position.

**Returns:**
- `true` - Cube was removed
- `false` - No cube found at position
- `nil` - Error occurred

### Querying Cubes

`get_cubes(id)` - Returns all cubes from a model. Omit `id` to get cubes from the currently edited model. Returns list of cube tables with their properties.

`get_cube({x, y, z})` - Returns a cube at the specified position. Returns cube properties table or `nil` if not found or error.

## Event Handlers

### Cube Removal Event
```lua
on_cube_removed(function(cube)
    print("Cube was removed")
end)
```

## Session Storage

Temporary in-game session storage:
```lua
session.testscript.value = 5
```

**⚠️ IMPORTANT:** Use a unique name as your first key to avoid conflicts!

## File Loading

### Loading Scripts

`require("modfolder/script1")` - Loads a script. Path is absolute from the scripts folder.

### Reading Text Files

`read_file("text.txt")` - Loads a file from the scripts directory, returns content as string.

### Reading Images

`read_image("image.png")` - Loads an image file from the scripts directory. Supports: `.png`, `.jpg`, `.jpeg`, `.bmp`, `.gif`

**Properties:**
- `width` - Image width
- `height` - Image height
- `pixels[y][x]` - Pixel data with `.r`, `.g`, `.b`, `.a` components (values: 0-255)
```lua
local img = read_image("image.png")
print(img.width, img.height)
print(img.pixels[1][1].r, img.pixels[1][1].g, img.pixels[1][1].b, img.pixels[1][1].a)
```

## Objects

### Creating Objects

`new_object("type")` - Creates a new object of specified type.

**⚠️ WARNING:** Position must be set during creation and cannot be changed afterward!
```lua
local obj = new_object("text")
obj.position = {2.5, 100, -5.213}
```

### Text Object Properties

- `text` - Text content
- `color` - RGB color as `{r, g, b}` (values: 0-1)
- `size` - Text size
- `billboard` - Boolean, if true the text always faces the camera
```lua
obj.text = "Hello world"
obj.color = {0, 1.0, 0.5}
obj.size = 2.0
obj.billboard = true
```

### Linking Objects

`link(obj1, obj2)` - Links obj1 (output) to obj2 (input).

## Known Issues

- Setting object position after creation is not synchronized
- Querying object properties may return incorrect information
- Logs may be corrupted
