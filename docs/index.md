# KogamaLuaAPI Documentation

Complete documentation for KogamaLuaAPI v0.3-alpha

---

## 📖 Getting Started

Start here if you're new to the API!

- **[Getting Started](getting-started.md)** - Your first script, loading scripts, auto-loading
- **[API Reference Overview](#api-reference)** - All available functions and features

---

## API Reference

### Core Functionality

- **[Cubes](api-reference/cubes/index.md)** - Create, manipulate, and remove cubes
  - [Cube Properties](api-reference/cubes/properties.md) - Materials, corners, deformation

- **[Objects](api-reference/objects/index.md)** - Spawn game objects and link them
  - [Object Types Reference](reference/object-types.md) - Complete list of 82 object types

### Advanced Features

- **[File System](api-reference/filesystem.md)** - Load scripts, read files and images
- **[Event Handlers](api-reference/events.md)** - React to game events
- **[Session Storage](api-reference/storage.md)** - Temporary data storage

---

## Reference

### Resources

- **[Materials Reference](reference/materials.md)** - All 69 material IDs with previews
- **[Object Types Reference](reference/object-types.md)** - All 82 spawnable objects

---

## Quick Links

### Common Tasks

\`\`\`lua
-- Create a cube
local cube = new_cube()
cube.position = {0, 0, 0}
cube.material = 5
cube:spawn()

-- Spawn an object
local obj = new_object(OBJECTS.TEXT)
obj.position = {0, 5, 0}
obj:spawn()

-- Load a script
require("mymod/main")

-- Store temporary data
session.my_value = 42
\`\`\`

### Scripts Folder Location

\`\`\`
%localappdata%/KogamaLuaAPI/scripts/
\`\`\`

---

## Directory Structure

\`\`\`
docs/
├── index.md (you are here)
├── getting-started.md
├── api-reference/
│   ├── cubes/
│   │   ├── index.md
│   │   └── properties.md
│   ├── objects/
│   │   └── index.md
│   ├── filesystem.md
│   ├── events.md
│   └── storage.md
└── reference/
    ├── materials.md
    └── object-types.md
\`\`\`

---

## Support & Issues

Found a bug? Have a feature request? Open an issue on GitHub:

→ **[Join Discord](https://discord.gg/u6tKuP3k4M)**

---

## Version

**KogamaLuaAPI v0.3-alpha**

See [README](../README.md) for installation and changelog.
