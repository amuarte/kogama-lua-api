# KogamaLuaAPI Documentation

Complete Lua scripting documentation for **KogamaLuaAPI** v0.4-alpha — A powerful mod that lets you automate and control everything in KoGaMa with code.

---

## ✨ What You Can Do

- 🎯 **Create & manipulate cubes** — Shape your world programmatically
- 🎮 **Spawn game objects** — Place interactive elements with code
- ⚙️ **Automate building tasks** — Script complex operations
- 💾 **Store & manage data** — Session-based persistent storage
- 📷 **Control the camera** — Programmatic view control
- ⚡ **Handle game events** — Respond to in-game actions

---

## 🚀 Quick Start

**New here?** Start with the [Getting Started](getting-started.md) guide for your first script in 5 minutes.

```lua
-- Your first script: scripts/hello.lua
local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 2  -- Red
cube:spawn()

print("Cube created!")
```

Load it in-game with: `/loadscript hello`

---

## 📚 Documentation

### Getting Started
- **[Getting Started Guide](getting-started.md)** — Setup, examples, and troubleshooting

### Core APIs
- **[Cubes](api-reference/cubes/index.md)** — Create, retrieve, and modify cubes
  - [Cube Properties](api-reference/cubes/properties.md) — Position, materials, deformation
- **[Objects](api-reference/objects/index.md)** — Spawn and link game objects
  - [Text Properties](api-reference/objects/properties/text.md) — Text object settings

### Features
- **[Camera](api-reference/camera.md)** — Control camera position and rotation
- **[File System](api-reference/filesystem.md)** — Load and manage script files
- **[Event Handlers](api-reference/events.md)** — Listen to game events
- **[Session Storage](api-reference/storage.md)** — Persistent temporary data

### Reference
- **[Materials Reference](reference/materials.md)** — All 70+ material IDs with previews
- **[Object Types Reference](reference/object-types.md)** — 50+ spawnable objects with images

---

## 🔗 Links

- 💬 **[Discord Community](https://discord.gg/u6tKuP3k4M)** — Get help, share scripts, report bugs
- 🐙 **[GitHub Repository](https://github.com/amuarte/kogama-lua-api)** — Source code and releases
- 📦 **[Latest Release](https://github.com/amuarte/kogama-lua-api/releases)** — Download the mod

---

## 💡 Need Help?

- 📖 Check the [Getting Started](getting-started.md) guide
- 🔍 Use the search bar (top-right)
- 💬 Ask on [Discord](https://discord.gg/u6tKuP3k4M)
- 🐛 Report issues on [GitHub](https://github.com/amuarte/kogama-lua-api/issues)
