# 🌙 KogamaLuaAPI

> **Powerful Lua scripting mod for KoGaMa** — Create, automate, and control everything with code.

![Version](https://img.shields.io/badge/version-0.3.0--alpha-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-Early%20Alpha-orange)

---

## ✨ What You Can Do

![KogamaLuaAPI Preview](docs/images/preview.png)

- 🧩 Create and manipulate cubes with code
- 🎨 Spawn objects
- 📂 Load 3D models from OBJ files
- ⚡ Automate complex building tasks
- 💾 Store and manage data with Lua

---

## 📋 Requirements

- **[KoGaMa Standalone Client](https://www-gamelauncher.kogstatic.com/www/KogamaLauncher.msi)**
- **[BepInEx 6.0.0-be](https://builds.bepinex.dev/projects/bepinex_be)**
- **[.NET 6.0 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)**

---

## 🚀 Installation

### ⚡ **Easy Method (Installer) - RECOMMENDED**

1. Download the [KogamaModInstaller](https://github.com/Beckowl/KogamaModInstaller/releases/latest)
2. Download the latest [KogamaLuaAPI release](https://github.com/amuarte/kogama-lua-api/releases/latest)
3. Open the installer and click **"Browse"** next to `Mod Path`
4. Select the downloaded ZIP file — **Do NOT extract it**
5. Choose your game server and click **"Install"**
6. Launch the game via the standalone client
   - ⏳ First launch may take 30 seconds to 2 minutes
   - 💡 Don't worry if it seems frozen — it's loading the mod

✅ Done! The mod will auto-create the scripts folder on first run

---

### 🛠️ **Manual Installation**

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
   - Folder structure should look like:
     ```
     BepInEx/plugins/KogamaLuaAPI/
     ├── KogamaLuaAPI.dll
     ├── NLua.dll
     ├── KeraLua.dll
     └── default_scripts/
     ```

4. **Launch & Start Scripting**  
   - Run the game and join any project
   - Scripts folder auto-creates at: `%localappdata%/KogamaLuaAPI/scripts/`
   - Load scripts with: `/loadscript <filename>`

✅ Works standalone or alongside other mods!

---

## 🎓 Quick Start

Create a file at:
```
%localappdata%/KogamaLuaAPI/scripts/test.lua
```

Add this code:

```lua
local cube = new_cube()
cube.position = {0, 0, 0}
cube.material = 5
cube:spawn()
```

Then in-game type:
```
/loadscript test
```

---

## 📚 Full Documentation

→ **[DOCUMENTATION.md](DOCUMENTATION.md)** — Complete API reference and examples

---

## ⚠️ Important Notes

- **Server timeouts** — Spawning too fast can disconnect you from the server and changes won't save
  - You'll need to rejoin the game
  - The mod includes protections but it's not 100% reliable on very fast spawns

---

## 🐛 Troubleshooting

**Script doesn't load?**
- Check file is in the correct folder
- Use `/loadscript filename` (without `.lua`)
- Check your game chat for error messages

**Got disconnected while spawning?**
- You were placing objects too fast
- Rejoin the game and try again with slower spawning

---

## 📜 License & Credits

**MIT License** — See LICENSE file

Based on [KogamaTools](https://github.com/Beckowl/KogamaTools) by Beckowl

---

## 🤝 Contributing

- 🐛 [Report Issues](https://github.com/amuarte/kogama-lua-api/issues)
- 💡 [Suggest Features](https://github.com/amuarte/kogama-lua-api/discussions)

---

**⭐ Like this project? Star it on GitHub!**

Made with ❤️ for the KoGaMa community
