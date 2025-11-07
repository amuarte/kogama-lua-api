# KogamaLuaAPI
> **Powerful Lua scripting mod for KoGaMa** — Create, automate, and control everything with code.

![Version](https://img.shields.io/badge/version-0.3.0--alpha-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-Early%20Alpha-orange)

---

## What You Can Do

- Create and manipulate cubes with code
- Spawn game objects
- Automate building tasks
- Store and manage data with Lua

---

## Requirements

- **[KoGaMa Standalone Client](https://www-gamelauncher.kogstatic.com/www/KogamaLauncher.msi)**
- **[BepInEx 6.0.0-be](https://builds.bepinex.dev/projects/bepinex_be)**
- **[.NET 6.0 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)**

---

## Installation

### Easy Method (Installer) - RECOMMENDED

1. Download the [KogamaModInstaller](https://github.com/Beckowl/KogamaModInstaller/releases/latest)
2. Download the latest [KogamaLuaAPI release](https://github.com/amuarte/kogama-lua-api/releases/latest)
3. Open the installer and click **"Browse"** next to `Mod Path`
4. Select the downloaded ZIP file — **Do NOT extract it**
5. Choose your game server and click **"Install"**
6. Launch the game via the standalone client

✅ Done! The mod will auto-create the scripts folder on first run

---

### Manual Installation

1. **Locate Your Installation Folder**  
   ```
   KoGaMa-WWW:     %localappdata%/KogamaLauncher-WWW/Launcher/Standalone
   KoGaMa-BR:      %localappdata%/KogamaLauncher-BR/Launcher/Standalone
   KoGaMa-Friends: %localappdata%/KogamaLauncher-Friends/Launcher/Standalone
   ```

2. **Install BepInEx**  
   - Download [BepInEx 6.0.0-be](https://builds.bepinex.dev/projects/bepinex_be)
   - Extract into the folder from Step 1
   - Run `Kogama.exe` once
   - Wait for setup to complete, then close

3. **Install KogamaLuaAPI**  
   - Download the latest [release](https://github.com/amuarte/kogama-lua-api/releases/latest)
   - Extract into `BepInEx/plugins/KogamaLuaAPI/`

4. **Launch & Start Scripting**  
   - Run the game and join any project
   - Scripts folder auto-creates at: `%localappdata%/KogamaLuaAPI/scripts/`
   - Load scripts with: `/loadscript <filename>`

---

## Quick Start

Create `%localappdata%/KogamaLuaAPI/scripts/test.lua`:

```lua
local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 2
cube:spawn()
```

In-game type: `/loadscript test`

---

## Documentation

→ **[Full Documentation](docs/index.md)** — Complete API reference

---

## Important Notes

- **Server timeouts** — Spawning too fast can disconnect you. Rejoin and try slower.
- **Script folder:** `%localappdata%/KogamaLuaAPI/scripts/`

---

## Troubleshooting

**Script doesn't load?**
- Check file is in the correct folder
- Use `/loadscript filename` (without `.lua`)
- Check game chat for error messages

**Got disconnected while spawning?**
- You were placing objects too fast
- Rejoin and try again with slower spawning

---

## Community & Support

[Join Discord Server](https://discord.gg/u6tKuP3k4M) — Help, bug reports, and updates

---

## License

**MIT License** — See LICENSE file

Based on [KogamaTools](https://github.com/Beckowl/KogamaTools) by Beckowl
